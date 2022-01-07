
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int stbi_uc ;
struct TYPE_10__ {int hs; int vs; int ystep; int w_lores; scalar_t__ ypos; int* (* resample ) (int*,int ,int ,int,int) ;int line1; int line0; } ;
typedef TYPE_3__ stbi__resample ;
struct TYPE_11__ {int img_h_max; int img_v_max; int* (* resample_row_hv_2_kernel ) (int*,int ,int ,int,int) ;TYPE_2__* s; int (* YCbCr_to_RGB_kernel ) (int*,int*,int*,int*,int,int) ;TYPE_1__* img_comp; } ;
typedef TYPE_4__ stbi__jpeg ;
struct TYPE_9__ {int img_n; int img_x; int img_y; } ;
struct TYPE_8__ {int* linebuf; int h; int v; scalar_t__ y; scalar_t__ w2; int data; } ;


 int* resample_row_1 (int*,int ,int ,int,int) ;
 int stbi__cleanup_jpeg (TYPE_4__*) ;
 int stbi__decode_jpeg_image (TYPE_4__*) ;
 int* stbi__errpuc (char*,char*) ;
 scalar_t__ stbi__malloc (int) ;
 int* stbi__resample_row_generic (int*,int ,int ,int,int) ;
 int* stbi__resample_row_h_2 (int*,int ,int ,int,int) ;
 int* stbi__resample_row_v_2 (int*,int ,int ,int,int) ;
 int* stub1 (int*,int ,int ,int,int) ;
 int stub2 (int*,int*,int*,int*,int,int) ;

__attribute__((used)) static stbi_uc *load_jpeg_image(stbi__jpeg *z, int *out_x, int *out_y, int *comp, int req_comp)
{
   int n, decode_n;
   z->s->img_n = 0;


   if (req_comp < 0 || req_comp > 4) return stbi__errpuc("bad req_comp", "Internal error");


   if (!stbi__decode_jpeg_image(z)) { stbi__cleanup_jpeg(z); return ((void*)0); }


   n = req_comp ? req_comp : z->s->img_n;

   if (z->s->img_n == 3 && n < 3)
      decode_n = 1;
   else
      decode_n = z->s->img_n;


   {
      int k;
      unsigned int i,j;
      stbi_uc *output;
      stbi_uc *coutput[4];

      stbi__resample res_comp[4];

      for (k=0; k < decode_n; ++k) {
         stbi__resample *r = &res_comp[k];



         z->img_comp[k].linebuf = (stbi_uc *) stbi__malloc(z->s->img_x + 3);
         if (!z->img_comp[k].linebuf) { stbi__cleanup_jpeg(z); return stbi__errpuc("outofmem", "Out of memory"); }

         r->hs = z->img_h_max / z->img_comp[k].h;
         r->vs = z->img_v_max / z->img_comp[k].v;
         r->ystep = r->vs >> 1;
         r->w_lores = (z->s->img_x + r->hs-1) / r->hs;
         r->ypos = 0;
         r->line0 = r->line1 = z->img_comp[k].data;

         if (r->hs == 1 && r->vs == 1) r->resample = resample_row_1;
         else if (r->hs == 1 && r->vs == 2) r->resample = stbi__resample_row_v_2;
         else if (r->hs == 2 && r->vs == 1) r->resample = stbi__resample_row_h_2;
         else if (r->hs == 2 && r->vs == 2) r->resample = z->resample_row_hv_2_kernel;
         else r->resample = stbi__resample_row_generic;
      }


      output = (stbi_uc *) stbi__malloc(n * z->s->img_x * z->s->img_y + 1);
      if (!output) { stbi__cleanup_jpeg(z); return stbi__errpuc("outofmem", "Out of memory"); }


      for (j=0; j < z->s->img_y; ++j) {
         stbi_uc *out = output + n * z->s->img_x * j;
         for (k=0; k < decode_n; ++k) {
            stbi__resample *r = &res_comp[k];
            int y_bot = r->ystep >= (r->vs >> 1);
            coutput[k] = r->resample(z->img_comp[k].linebuf,
                                     y_bot ? r->line1 : r->line0,
                                     y_bot ? r->line0 : r->line1,
                                     r->w_lores, r->hs);
            if (++r->ystep >= r->vs) {
               r->ystep = 0;
               r->line0 = r->line1;
               if (++r->ypos < z->img_comp[k].y)
                  r->line1 += z->img_comp[k].w2;
            }
         }
         if (n >= 3) {
            stbi_uc *y = coutput[0];
            if (z->s->img_n == 3) {
               z->YCbCr_to_RGB_kernel(out, y, coutput[1], coutput[2], z->s->img_x, n);
            } else
               for (i=0; i < z->s->img_x; ++i) {
                  out[0] = out[1] = out[2] = y[i];
                  out[3] = 255;
                  out += n;
               }
         } else {
            stbi_uc *y = coutput[0];
            if (n == 1)
               for (i=0; i < z->s->img_x; ++i) out[i] = y[i];
            else
               for (i=0; i < z->s->img_x; ++i) *out++ = y[i], *out++ = 255;
         }
      }
      stbi__cleanup_jpeg(z);
      *out_x = z->s->img_x;
      *out_y = z->s->img_y;
      if (comp) *comp = z->s->img_n;
      return output;
   }
}
