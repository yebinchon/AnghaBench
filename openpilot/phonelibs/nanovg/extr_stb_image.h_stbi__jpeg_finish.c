
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* img_comp; int (* idct_block_kernel ) (int ,int,short*) ;int * dequant; TYPE_1__* s; scalar_t__ progressive; } ;
typedef TYPE_3__ stbi__jpeg ;
struct TYPE_6__ {int x; int y; short* coeff; int coeff_w; size_t tq; int w2; int data; } ;
struct TYPE_5__ {int img_n; } ;


 int stbi__jpeg_dequantize (short*,int ) ;
 int stub1 (int ,int,short*) ;

__attribute__((used)) static void stbi__jpeg_finish(stbi__jpeg *z)
{
   if (z->progressive) {

      int i,j,n;
      for (n=0; n < z->s->img_n; ++n) {
         int w = (z->img_comp[n].x+7) >> 3;
         int h = (z->img_comp[n].y+7) >> 3;
         for (j=0; j < h; ++j) {
            for (i=0; i < w; ++i) {
               short *data = z->img_comp[n].coeff + 64 * (i + j * z->img_comp[n].coeff_w);
               stbi__jpeg_dequantize(data, z->dequant[z->img_comp[n].tq]);
               z->idct_block_kernel(z->img_comp[n].data+z->img_comp[n].w2*j*8+i*8, z->img_comp[n].w2, data);
            }
         }
      }
   }
}
