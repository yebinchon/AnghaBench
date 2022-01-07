
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi__context ;


 int* stbi__convert_format (int*,int,int,int,int) ;
 int* stbi__errpuc (char*,char*) ;
 int stbi__get16be (int *) ;
 int stbi__get32be (int *) ;
 void* stbi__get8 (int *) ;
 scalar_t__ stbi__malloc (int) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static stbi_uc *stbi__psd_load(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   int pixelCount;
   int channelCount, compression;
   int channel, i, count, len;
   int bitdepth;
   int w,h;
   stbi_uc *out;


   if (stbi__get32be(s) != 0x38425053)
      return stbi__errpuc("not PSD", "Corrupt PSD image");


   if (stbi__get16be(s) != 1)
      return stbi__errpuc("wrong version", "Unsupported version of PSD image");


   stbi__skip(s, 6 );


   channelCount = stbi__get16be(s);
   if (channelCount < 0 || channelCount > 16)
      return stbi__errpuc("wrong channel count", "Unsupported number of channels in PSD image");


   h = stbi__get32be(s);
   w = stbi__get32be(s);


   bitdepth = stbi__get16be(s);
   if (bitdepth != 8 && bitdepth != 16)
      return stbi__errpuc("unsupported bit depth", "PSD bit depth is not 8 or 16 bit");
   if (stbi__get16be(s) != 3)
      return stbi__errpuc("wrong color format", "PSD is not in RGB color format");


   stbi__skip(s,stbi__get32be(s) );


   stbi__skip(s, stbi__get32be(s) );


   stbi__skip(s, stbi__get32be(s) );





   compression = stbi__get16be(s);
   if (compression > 1)
      return stbi__errpuc("bad compression", "PSD has an unknown compression format");


   out = (stbi_uc *) stbi__malloc(4 * w*h);
   if (!out) return stbi__errpuc("outofmem", "Out of memory");
   pixelCount = w*h;





   if (compression) {
      stbi__skip(s, h * channelCount * 2 );


      for (channel = 0; channel < 4; channel++) {
         stbi_uc *p;

         p = out+channel;
         if (channel >= channelCount) {

            for (i = 0; i < pixelCount; i++, p += 4)
               *p = (channel == 3 ? 255 : 0);
         } else {

            count = 0;
            while (count < pixelCount) {
               len = stbi__get8(s);
               if (len == 128) {

               } else if (len < 128) {

                  len++;
                  count += len;
                  while (len) {
                     *p = stbi__get8(s);
                     p += 4;
                     len--;
                  }
               } else if (len > 128) {
                  stbi_uc val;


                  len ^= 0x0FF;
                  len += 2;
                  val = stbi__get8(s);
                  count += len;
                  while (len) {
                     *p = val;
                     p += 4;
                     len--;
                  }
               }
            }
         }
      }

   } else {




      for (channel = 0; channel < 4; channel++) {
         stbi_uc *p;

         p = out + channel;
         if (channel >= channelCount) {

            stbi_uc val = channel == 3 ? 255 : 0;
            for (i = 0; i < pixelCount; i++, p += 4)
               *p = val;
         } else {

            if (bitdepth == 16) {
               for (i = 0; i < pixelCount; i++, p += 4)
                  *p = (stbi_uc) (stbi__get16be(s) >> 8);
            } else {
               for (i = 0; i < pixelCount; i++, p += 4)
                  *p = stbi__get8(s);
            }
         }
      }
   }

   if (req_comp && req_comp != 4) {
      out = stbi__convert_format(out, 4, req_comp, w, h);
      if (out == ((void*)0)) return out;
   }

   if (comp) *comp = 4;
   *y = h;
   *x = w;

   return out;
}
