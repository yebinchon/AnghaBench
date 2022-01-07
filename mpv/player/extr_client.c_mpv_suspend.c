
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int MP_ERR (int *,char*) ;

void mpv_suspend(mpv_handle *ctx)
{
    MP_ERR(ctx, "mpv_suspend() is deprecated and does nothing.\n");
}
