
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int img_x; int img_y; } ;
typedef TYPE_1__ stbi__context ;
struct TYPE_9__ {int hsz; int bpp; int mr; int mg; int mb; int ma; scalar_t__ all_a; void* offset; } ;
typedef TYPE_2__ stbi__bmp_data ;


 void* stbi__errpuc (char*,char*) ;
 int stbi__get16le (TYPE_1__*) ;
 void* stbi__get32le (TYPE_1__*) ;
 char stbi__get8 (TYPE_1__*) ;

__attribute__((used)) static void *stbi__bmp_parse_header(stbi__context *s, stbi__bmp_data *info)
{
   int hsz;
   if (stbi__get8(s) != 'B' || stbi__get8(s) != 'M') return stbi__errpuc("not BMP", "Corrupt BMP");
   stbi__get32le(s);
   stbi__get16le(s);
   stbi__get16le(s);
   info->offset = stbi__get32le(s);
   info->hsz = hsz = stbi__get32le(s);

   if (hsz != 12 && hsz != 40 && hsz != 56 && hsz != 108 && hsz != 124) return stbi__errpuc("unknown BMP", "BMP type not supported: unknown");
   if (hsz == 12) {
      s->img_x = stbi__get16le(s);
      s->img_y = stbi__get16le(s);
   } else {
      s->img_x = stbi__get32le(s);
      s->img_y = stbi__get32le(s);
   }
   if (stbi__get16le(s) != 1) return stbi__errpuc("bad BMP", "bad BMP");
   info->bpp = stbi__get16le(s);
   if (info->bpp == 1) return stbi__errpuc("monochrome", "BMP type not supported: 1-bit");
   if (hsz != 12) {
      int compress = stbi__get32le(s);
      if (compress == 1 || compress == 2) return stbi__errpuc("BMP RLE", "BMP type not supported: RLE");
      stbi__get32le(s);
      stbi__get32le(s);
      stbi__get32le(s);
      stbi__get32le(s);
      stbi__get32le(s);
      if (hsz == 40 || hsz == 56) {
         if (hsz == 56) {
            stbi__get32le(s);
            stbi__get32le(s);
            stbi__get32le(s);
            stbi__get32le(s);
         }
         if (info->bpp == 16 || info->bpp == 32) {
            info->mr = info->mg = info->mb = 0;
            if (compress == 0) {
               if (info->bpp == 32) {
                  info->mr = 0xffu << 16;
                  info->mg = 0xffu << 8;
                  info->mb = 0xffu << 0;
                  info->ma = 0xffu << 24;
                  info->all_a = 0;
               } else {
                  info->mr = 31u << 10;
                  info->mg = 31u << 5;
                  info->mb = 31u << 0;
               }
            } else if (compress == 3) {
               info->mr = stbi__get32le(s);
               info->mg = stbi__get32le(s);
               info->mb = stbi__get32le(s);

               if (info->mr == info->mg && info->mg == info->mb) {

                  return stbi__errpuc("bad BMP", "bad BMP");
               }
            } else
               return stbi__errpuc("bad BMP", "bad BMP");
         }
      } else {
         int i;
         if (hsz != 108 && hsz != 124)
            return stbi__errpuc("bad BMP", "bad BMP");
         info->mr = stbi__get32le(s);
         info->mg = stbi__get32le(s);
         info->mb = stbi__get32le(s);
         info->ma = stbi__get32le(s);
         stbi__get32le(s);
         for (i=0; i < 12; ++i)
            stbi__get32le(s);
         if (hsz == 124) {
            stbi__get32le(s);
            stbi__get32le(s);
            stbi__get32le(s);
            stbi__get32le(s);
         }
      }
   }
   return (void *) 1;
}
