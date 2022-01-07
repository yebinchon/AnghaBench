
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct getproperty_request {char const* name; void* data; int status; int format; TYPE_1__* mpctx; } ;
struct TYPE_6__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
typedef int mpv_format ;
struct TYPE_5__ {int initialized; } ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int MPV_ERROR_PROPERTY_FORMAT ;
 int MPV_ERROR_UNINITIALIZED ;
 int get_mp_type_get (int ) ;
 int getproperty_fn ;
 int run_locked (TYPE_2__*,int ,struct getproperty_request*) ;

int mpv_get_property(mpv_handle *ctx, const char *name, mpv_format format,
                     void *data)
{
    if (!ctx->mpctx->initialized)
        return MPV_ERROR_UNINITIALIZED;
    if (!data)
        return MPV_ERROR_INVALID_PARAMETER;
    if (!get_mp_type_get(format))
        return MPV_ERROR_PROPERTY_FORMAT;

    struct getproperty_request req = {
        .mpctx = ctx->mpctx,
        .name = name,
        .format = format,
        .data = data,
    };
    run_locked(ctx, getproperty_fn, &req);
    return req.status;
}
