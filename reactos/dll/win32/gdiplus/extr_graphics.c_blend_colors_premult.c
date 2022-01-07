
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int start ;
typedef int end ;
typedef int UINT ;
typedef float REAL ;
typedef int ARGB ;



__attribute__((used)) static inline ARGB blend_colors_premult(ARGB start, ARGB end, REAL position)
{
    UINT pos = position * 255.0f + 0.5f;
    return
        (((((start >> 24) ) << 8) + (((end >> 24) ) - ((start >> 24) )) * pos) >> 8) << 24 |
        (((((start >> 16) & 0xff) << 8) + (((end >> 16) & 0xff) - ((start >> 16) & 0xff)) * pos) >> 8) << 16 |
        (((((start >> 8) & 0xff) << 8) + (((end >> 8) & 0xff) - ((start >> 8) & 0xff)) * pos) >> 8) << 8 |
        (((((start ) & 0xff) << 8) + (((end ) & 0xff) - ((start ) & 0xff)) * pos) >> 8);
}
