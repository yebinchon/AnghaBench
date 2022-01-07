
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int mp_destroy_client (int *,int) ;

void mpv_terminate_destroy(mpv_handle *ctx)
{
    mp_destroy_client(ctx, 1);
}
