
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection {int version; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int S_OK ;
 int TRACE (char*,int ) ;
 int read_dword (char const**,int *) ;

__attribute__((used)) static HRESULT d3dcompiler_parse_shdr(struct d3dcompiler_shader_reflection *r, const char *data, DWORD data_size)
{
    const char *ptr = data;

    read_dword(&ptr, &r->version);
    TRACE("Shader version: %u\n", r->version);



    return S_OK;
}
