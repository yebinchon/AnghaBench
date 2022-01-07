
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_info {int type; char sm_major; char sm_minor; int support; } ;
struct bwriter_shader {int dummy; } ;
typedef enum shader_type { ____Placeholder_shader_type } shader_type ;
typedef int ID3DBlob ;
typedef int HRESULT ;
typedef char DWORD ;


 int D3DCreateBlob (char,int **) ;
 int D3DERR_INVALIDCALL ;
 int D3DXERR_INVALIDDATA ;
 int ERR (char*,...) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 char* ID3D10Blob_GetBufferPointer (int *) ;
 int ID3D10Blob_Release (int *) ;
 int S_OK ;
 int SlDeleteShader (struct bwriter_shader*) ;
 int SlWriteBytecode (struct bwriter_shader*,int,char**,char*) ;
 int TRACE (char*,...) ;
 int debugstr_a (char const*) ;
 struct target_info* get_target_info (char const*) ;
 int memcpy (char*,char const*,char) ;
 struct bwriter_shader* parse_hlsl_shader (char const*,int,char,char,char const*,char**) ;
 char strlen (char const*) ;

__attribute__((used)) static HRESULT compile_shader(const char *preproc_shader, const char *target, const char *entrypoint,
        ID3DBlob **shader_blob, ID3DBlob **error_messages)
{
    struct bwriter_shader *shader;
    char *messages = ((void*)0);
    HRESULT hr;
    DWORD *res, size, major, minor;
    ID3DBlob *buffer;
    char *pos;
    enum shader_type shader_type;
    const struct target_info *info;

    TRACE("Preprocessed shader source: %s\n", debugstr_a(preproc_shader));

    TRACE("Checking compilation target %s\n", debugstr_a(target));
    info = get_target_info(target);
    if (!info)
    {
        FIXME("Unknown compilation target %s\n", debugstr_a(target));
        return D3DERR_INVALIDCALL;
    }
    else
    {
        if (!info->support)
        {
            FIXME("Compilation target %s not yet supported\n", debugstr_a(target));
            return D3DERR_INVALIDCALL;
        }
        else
        {
            shader_type = info->type;
            major = info->sm_major;
            minor = info->sm_minor;
        }
    }

    shader = parse_hlsl_shader(preproc_shader, shader_type, major, minor, entrypoint, &messages);

    if (messages)
    {
        TRACE("Compiler messages:\n");
        TRACE("%s\n", debugstr_a(messages));

        TRACE("Shader source:\n");
        TRACE("%s\n", debugstr_a(preproc_shader));

        if (error_messages)
        {
            const char *preproc_messages = *error_messages ? ID3D10Blob_GetBufferPointer(*error_messages) : ((void*)0);

            size = strlen(messages) + (preproc_messages ? strlen(preproc_messages) : 0) + 1;
            hr = D3DCreateBlob(size, &buffer);
            if (FAILED(hr))
            {
                HeapFree(GetProcessHeap(), 0, messages);
                if (shader) SlDeleteShader(shader);
                return hr;
            }
            pos = ID3D10Blob_GetBufferPointer(buffer);
            if (preproc_messages)
            {
                memcpy(pos, preproc_messages, strlen(preproc_messages) + 1);
                pos += strlen(preproc_messages);
            }
            memcpy(pos, messages, strlen(messages) + 1);

            if (*error_messages) ID3D10Blob_Release(*error_messages);
            *error_messages = buffer;
        }
        HeapFree(GetProcessHeap(), 0, messages);
    }

    if (!shader)
    {
        ERR("HLSL shader parsing failed.\n");
        return D3DXERR_INVALIDDATA;
    }

    hr = SlWriteBytecode(shader, 9, &res, &size);
    SlDeleteShader(shader);
    if (FAILED(hr))
    {
        ERR("SlWriteBytecode failed with error 0x%08x.\n", hr);
        return D3DXERR_INVALIDDATA;
    }

    if (shader_blob)
    {
        hr = D3DCreateBlob(size, &buffer);
        if (FAILED(hr))
        {
            HeapFree(GetProcessHeap(), 0, res);
            return hr;
        }
        memcpy(ID3D10Blob_GetBufferPointer(buffer), res, size);
        *shader_blob = buffer;
    }

    HeapFree(GetProcessHeap(), 0, res);

    return S_OK;
}
