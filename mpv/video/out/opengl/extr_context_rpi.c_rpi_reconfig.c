
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int dummy; } ;


 int recreate_dispmanx (struct ra_ctx*) ;

__attribute__((used)) static bool rpi_reconfig(struct ra_ctx *ctx)
{
    return recreate_dispmanx(ctx);
}
