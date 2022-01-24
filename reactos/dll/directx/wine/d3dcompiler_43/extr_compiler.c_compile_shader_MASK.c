#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct target_info {int type; char sm_major; char sm_minor; int /*<<< orphan*/  support; } ;
struct bwriter_shader {int dummy; } ;
typedef  enum shader_type { ____Placeholder_shader_type } shader_type ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3DXERR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (struct bwriter_shader*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwriter_shader*,int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 struct target_info* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,char) ; 
 struct bwriter_shader* FUNC14 (char const*,int,char,char,char const*,char**) ; 
 char FUNC15 (char const*) ; 

__attribute__((used)) static HRESULT FUNC16(const char *preproc_shader, const char *target, const char *entrypoint,
        ID3DBlob **shader_blob, ID3DBlob **error_messages)
{
    struct bwriter_shader *shader;
    char *messages = NULL;
    HRESULT hr;
    DWORD *res, size, major, minor;
    ID3DBlob *buffer;
    char *pos;
    enum shader_type shader_type;
    const struct target_info *info;

    FUNC10("Preprocessed shader source: %s\n", FUNC11(preproc_shader));

    FUNC10("Checking compilation target %s\n", FUNC11(target));
    info = FUNC12(target);
    if (!info)
    {
        FUNC3("Unknown compilation target %s\n", FUNC11(target));
        return D3DERR_INVALIDCALL;
    }
    else
    {
        if (!info->support)
        {
            FUNC3("Compilation target %s not yet supported\n", FUNC11(target));
            return D3DERR_INVALIDCALL;
        }
        else
        {
            shader_type = info->type;
            major = info->sm_major;
            minor = info->sm_minor;
        }
    }

    shader = FUNC14(preproc_shader, shader_type, major, minor, entrypoint, &messages);

    if (messages)
    {
        FUNC10("Compiler messages:\n");
        FUNC10("%s\n", FUNC11(messages));

        FUNC10("Shader source:\n");
        FUNC10("%s\n", FUNC11(preproc_shader));

        if (error_messages)
        {
            const char *preproc_messages = *error_messages ? FUNC6(*error_messages) : NULL;

            size = FUNC15(messages) + (preproc_messages ? FUNC15(preproc_messages) : 0) + 1;
            hr = FUNC0(size, &buffer);
            if (FUNC2(hr))
            {
                FUNC5(FUNC4(), 0, messages);
                if (shader) FUNC8(shader);
                return hr;
            }
            pos = FUNC6(buffer);
            if (preproc_messages)
            {
                FUNC13(pos, preproc_messages, FUNC15(preproc_messages) + 1);
                pos += FUNC15(preproc_messages);
            }
            FUNC13(pos, messages, FUNC15(messages) + 1);

            if (*error_messages) FUNC7(*error_messages);
            *error_messages = buffer;
        }
        FUNC5(FUNC4(), 0, messages);
    }

    if (!shader)
    {
        FUNC1("HLSL shader parsing failed.\n");
        return D3DXERR_INVALIDDATA;
    }

    hr = FUNC9(shader, 9, &res, &size);
    FUNC8(shader);
    if (FUNC2(hr))
    {
        FUNC1("SlWriteBytecode failed with error 0x%08x.\n", hr);
        return D3DXERR_INVALIDDATA;
    }

    if (shader_blob)
    {
        hr = FUNC0(size, &buffer);
        if (FUNC2(hr))
        {
            FUNC5(FUNC4(), 0, res);
            return hr;
        }
        FUNC13(FUNC6(buffer), res, size);
        *shader_blob = buffer;
    }

    FUNC5(FUNC4(), 0, res);

    return S_OK;
}