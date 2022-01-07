
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int color_index () ;
 int dist_square (int,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int v2ci (scalar_t__) ;

__attribute__((used)) static int rgb_to_x256(uint8_t r, uint8_t g, uint8_t b)
{


    int ir = (r < 48 ? 0 : r < 115 ? 1 : (r - 35) / 40), ig = (g < 48 ? 0 : g < 115 ? 1 : (g - 35) / 40), ib = (b < 48 ? 0 : b < 115 ? 1 : (b - 35) / 40);



    int average = (r + g + b) / 3;
    int gray_index = average > 238 ? 23 : (average - 3) / 10;


    static const int i2cv[6] = {0, 0x5f, 0x87, 0xaf, 0xd7, 0xff};
    int cr = i2cv[ir], cg = i2cv[ig], cb = i2cv[ib];
    int gv = 8 + 10 * gray_index;



    int color_err = ((cr-r)*(cr-r) + (cg-g)*(cg-g) + (cb-b)*(cb-b));
    int gray_err = ((gv-r)*(gv-r) + (gv-g)*(gv-g) + (gv-b)*(gv-b));
    return color_err <= gray_err ? 16 + (36 * ir + 6 * ig + ib) : 232 + gray_index;
}
