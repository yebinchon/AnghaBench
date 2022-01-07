
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int wined3d_context_tls_idx ;

void context_set_tls_idx(DWORD idx)
{
    wined3d_context_tls_idx = idx;
}
