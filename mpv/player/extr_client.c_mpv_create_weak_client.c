
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int mp_client_set_weak (int *) ;
 int * mpv_create_client (int *,char const*) ;

mpv_handle *mpv_create_weak_client(mpv_handle *ctx, const char *name)
{
    mpv_handle *new = mpv_create_client(ctx, name);
    if (new)
        mp_client_set_weak(new);
    return new;
}
