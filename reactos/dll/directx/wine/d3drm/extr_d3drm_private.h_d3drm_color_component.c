
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int BYTE ;


 unsigned int floor (float) ;

__attribute__((used)) static inline BYTE d3drm_color_component(float c)
{
    if (c <= 0.0f)
        return 0u;
    if (c >= 1.0f)
        return 0xffu;
    return floor(c * 255.0f);
}
