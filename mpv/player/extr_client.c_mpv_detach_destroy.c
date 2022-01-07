
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int mpv_destroy (int *) ;

void mpv_detach_destroy(mpv_handle *ctx)
{
    mpv_destroy(ctx);
}
