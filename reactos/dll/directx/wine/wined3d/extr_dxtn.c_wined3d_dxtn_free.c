
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ txc_dxtn_handle ;
 int wine_dlclose (scalar_t__,int *,int ) ;

void wined3d_dxtn_free(void)
{
    if (txc_dxtn_handle)
        wine_dlclose(txc_dxtn_handle, ((void*)0), 0);
}
