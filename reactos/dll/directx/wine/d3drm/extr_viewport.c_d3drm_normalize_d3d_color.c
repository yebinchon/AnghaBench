
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {float a; } ;
struct TYPE_9__ {float b; } ;
struct TYPE_8__ {float g; } ;
struct TYPE_7__ {float r; } ;
struct TYPE_11__ {TYPE_4__ u4; TYPE_3__ u3; TYPE_2__ u2; TYPE_1__ u1; } ;
typedef TYPE_5__ D3DCOLORVALUE ;
typedef int D3DCOLOR ;


 float RGBA_GETALPHA (int ) ;
 float RGBA_GETBLUE (int ) ;
 float RGBA_GETGREEN (int ) ;
 float RGBA_GETRED (int ) ;

__attribute__((used)) static inline void d3drm_normalize_d3d_color(D3DCOLORVALUE *color_value, D3DCOLOR color)
{
    color_value->u1.r = RGBA_GETRED(color) / 255.0f;
    color_value->u2.g = RGBA_GETGREEN(color) / 255.0f;
    color_value->u3.b = RGBA_GETBLUE(color) / 255.0f;
    color_value->u4.a = RGBA_GETALPHA(color) / 255.0f;
}
