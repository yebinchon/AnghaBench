
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__get16le (int *) ;
 int stbi__get8 (int *) ;
 int stbi__rewind (int *) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static int stbi__tga_info(stbi__context *s, int *x, int *y, int *comp)
{
    int tga_w, tga_h, tga_comp;
    int sz;
    stbi__get8(s);
    sz = stbi__get8(s);
    if( sz > 1 ) {
        stbi__rewind(s);
        return 0;
    }
    sz = stbi__get8(s);

    if ((sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11)) return 0;
    stbi__skip(s,9);
    tga_w = stbi__get16le(s);
    if( tga_w < 1 ) {
        stbi__rewind(s);
        return 0;
    }
    tga_h = stbi__get16le(s);
    if( tga_h < 1 ) {
        stbi__rewind(s);
        return 0;
    }
    sz = stbi__get8(s);

    if ((sz != 8) && (sz != 16) && (sz != 24) && (sz != 32)) {
        stbi__rewind(s);
        return 0;
    }
    tga_comp = sz;
    if (x) *x = tga_w;
    if (y) *y = tga_h;
    if (comp) *comp = tga_comp / 8;
    return 1;
}
