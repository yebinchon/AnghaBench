
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int wined3d_context_tls_idx ;

DWORD context_get_tls_idx(void)
{
    return wined3d_context_tls_idx;
}
