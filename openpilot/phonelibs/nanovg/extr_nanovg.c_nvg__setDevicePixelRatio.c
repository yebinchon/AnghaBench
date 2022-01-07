
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float tessTol; float distTol; float fringeWidth; float devicePxRatio; } ;
typedef TYPE_1__ NVGcontext ;



__attribute__((used)) static void nvg__setDevicePixelRatio(NVGcontext* ctx, float ratio)
{
 ctx->tessTol = 0.25f / ratio;
 ctx->distTol = 0.01f / ratio;
 ctx->fringeWidth = 1.0f / ratio;
 ctx->devicePxRatio = ratio;
}
