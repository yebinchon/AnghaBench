
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DCOLOR ;


 int RGBA_MAKE (int ,int ,int ,int ) ;
 int d3drm_color_component (float) ;

__attribute__((used)) static inline void d3drm_set_color(D3DCOLOR *color, float r, float g, float b, float a)
{
    *color = RGBA_MAKE(d3drm_color_component(r), d3drm_color_component(g),
            d3drm_color_component(b), d3drm_color_component(a));
}
