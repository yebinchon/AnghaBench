#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct setproperty_request {char const* name; void* data; int status; int /*<<< orphan*/  format; TYPE_5__* mpctx; } ;
struct TYPE_6__ {TYPE_5__* mpctx; } ;
typedef  TYPE_1__ mpv_handle ;
typedef  int /*<<< orphan*/  mpv_format ;
struct TYPE_7__ {int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
#define  MPV_ERROR_OPTION_FORMAT 130 
#define  MPV_ERROR_OPTION_NOT_FOUND 129 
 int MPV_ERROR_PROPERTY_ERROR ; 
 int MPV_ERROR_PROPERTY_FORMAT ; 
 int MPV_ERROR_PROPERTY_NOT_FOUND ; 
 int MPV_ERROR_PROPERTY_UNAVAILABLE ; 
#define  MPV_ERROR_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_5__*,char const*) ; 
 int FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct setproperty_request*) ; 
 int /*<<< orphan*/  setproperty_fn ; 

int FUNC4(mpv_handle *ctx, const char *name, mpv_format format,
                     void *data)
{
    if (!ctx->mpctx->initialized) {
        int r = FUNC2(ctx, name, format, data);
        if (r == MPV_ERROR_OPTION_NOT_FOUND &&
            FUNC1(ctx->mpctx, name) >= 0)
            return MPV_ERROR_PROPERTY_UNAVAILABLE;
        switch (r) {
        case MPV_ERROR_SUCCESS:          return MPV_ERROR_SUCCESS;
        case MPV_ERROR_OPTION_FORMAT:    return MPV_ERROR_PROPERTY_FORMAT;
        case MPV_ERROR_OPTION_NOT_FOUND: return MPV_ERROR_PROPERTY_NOT_FOUND;
        default:                         return MPV_ERROR_PROPERTY_ERROR;
        }
    }
    if (!FUNC0(format))
        return MPV_ERROR_PROPERTY_FORMAT;

    struct setproperty_request req = {
        .mpctx = ctx->mpctx,
        .name = name,
        .format = format,
        .data = data,
    };
    FUNC3(ctx, setproperty_fn, &req);
    return req.status;
}