
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct setproperty_request {char const* name; void* data; int status; int format; TYPE_5__* mpctx; } ;
struct TYPE_6__ {TYPE_5__* mpctx; } ;
typedef TYPE_1__ mpv_handle ;
typedef int mpv_format ;
struct TYPE_7__ {int initialized; } ;




 int MPV_ERROR_PROPERTY_ERROR ;
 int MPV_ERROR_PROPERTY_FORMAT ;
 int MPV_ERROR_PROPERTY_NOT_FOUND ;
 int MPV_ERROR_PROPERTY_UNAVAILABLE ;

 int get_mp_type (int ) ;
 scalar_t__ mp_get_property_id (TYPE_5__*,char const*) ;
 int mpv_set_option (TYPE_1__*,char const*,int ,void*) ;
 int run_locked (TYPE_1__*,int ,struct setproperty_request*) ;
 int setproperty_fn ;

int mpv_set_property(mpv_handle *ctx, const char *name, mpv_format format,
                     void *data)
{
    if (!ctx->mpctx->initialized) {
        int r = mpv_set_option(ctx, name, format, data);
        if (r == 129 &&
            mp_get_property_id(ctx->mpctx, name) >= 0)
            return MPV_ERROR_PROPERTY_UNAVAILABLE;
        switch (r) {
        case 128: return 128;
        case 130: return MPV_ERROR_PROPERTY_FORMAT;
        case 129: return MPV_ERROR_PROPERTY_NOT_FOUND;
        default: return MPV_ERROR_PROPERTY_ERROR;
        }
    }
    if (!get_mp_type(format))
        return MPV_ERROR_PROPERTY_FORMAT;

    struct setproperty_request req = {
        .mpctx = ctx->mpctx,
        .name = name,
        .format = format,
        .data = data,
    };
    run_locked(ctx, setproperty_fn, &req);
    return req.status;
}
