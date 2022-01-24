#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned char stbi_uc ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int STBI_rgb ; 
 unsigned char* FUNC2 (unsigned char*,int,int,int,int) ; 
 unsigned char* FUNC3 (char*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static stbi_uc *FUNC11(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   //   read in the TGA header stuff
   int tga_offset = FUNC5(s);
   int tga_indexed = FUNC5(s);
   int tga_image_type = FUNC5(s);
   int tga_is_RLE = 0;
   int tga_palette_start = FUNC4(s);
   int tga_palette_len = FUNC4(s);
   int tga_palette_bits = FUNC5(s);
   int tga_x_origin = FUNC4(s);
   int tga_y_origin = FUNC4(s);
   int tga_width = FUNC4(s);
   int tga_height = FUNC4(s);
   int tga_bits_per_pixel = FUNC5(s);
   int tga_comp, tga_rgb16=0;
   int tga_inverted = FUNC5(s);
   // int tga_alpha_bits = tga_inverted & 15; // the 4 lowest bits - unused (useless?)
   //   image data
   unsigned char *tga_data;
   unsigned char *tga_palette = NULL;
   int i, j;
   unsigned char raw_data[4];
   int RLE_count = 0;
   int RLE_repeating = 0;
   int read_next_pixel = 1;

   //   do a tiny bit of precessing
   if ( tga_image_type >= 8 )
   {
      tga_image_type -= 8;
      tga_is_RLE = 1;
   }
   tga_inverted = 1 - ((tga_inverted >> 5) & 1);

   //   If I'm paletted, then I'll use the number of bits from the palette
   if ( tga_indexed ) tga_comp = FUNC9(tga_palette_bits, 0, &tga_rgb16);
   else tga_comp = FUNC9(tga_bits_per_pixel, (tga_image_type == 3), &tga_rgb16);

   if(!tga_comp) // shouldn't really happen, stbi__tga_test() should have ensured basic consistency
      return FUNC3("bad format", "Can't find out TGA pixelformat");

   //   tga info
   *x = tga_width;
   *y = tga_height;
   if (comp) *comp = tga_comp;

   tga_data = (unsigned char*)FUNC7( (size_t)tga_width * tga_height * tga_comp );
   if (!tga_data) return FUNC3("outofmem", "Out of memory");

   // skip to the data's starting position (offset usually = 0)
   FUNC8(s, tga_offset );

   if ( !tga_indexed && !tga_is_RLE && !tga_rgb16 ) {
      for (i=0; i < tga_height; ++i) {
         int row = tga_inverted ? tga_height -i - 1 : i;
         stbi_uc *tga_row = tga_data + row*tga_width*tga_comp;
         FUNC6(s, tga_row, tga_width * tga_comp);
      }
   } else  {
      //   do I need to load a palette?
      if ( tga_indexed)
      {
         //   any data to skip? (offset usually = 0)
         FUNC8(s, tga_palette_start );
         //   load the palette
         tga_palette = (unsigned char*)FUNC7( tga_palette_len * tga_comp );
         if (!tga_palette) {
            FUNC1(tga_data);
            return FUNC3("outofmem", "Out of memory");
         }
         if (tga_rgb16) {
            stbi_uc *pal_entry = tga_palette;
            FUNC0(tga_comp == STBI_rgb);
            for (i=0; i < tga_palette_len; ++i) {
               FUNC10(s, pal_entry);
               pal_entry += tga_comp;
            }
         } else if (!FUNC6(s, tga_palette, tga_palette_len * tga_comp)) {
               FUNC1(tga_data);
               FUNC1(tga_palette);
               return FUNC3("bad palette", "Corrupt TGA");
         }
      }
      //   load the data
      for (i=0; i < tga_width * tga_height; ++i)
      {
         //   if I'm in RLE mode, do I need to get a RLE stbi__pngchunk?
         if ( tga_is_RLE )
         {
            if ( RLE_count == 0 )
            {
               //   yep, get the next byte as a RLE command
               int RLE_cmd = FUNC5(s);
               RLE_count = 1 + (RLE_cmd & 127);
               RLE_repeating = RLE_cmd >> 7;
               read_next_pixel = 1;
            } else if ( !RLE_repeating )
            {
               read_next_pixel = 1;
            }
         } else
         {
            read_next_pixel = 1;
         }
         //   OK, if I need to read a pixel, do it now
         if ( read_next_pixel )
         {
            //   load however much data we did have
            if ( tga_indexed )
            {
               // read in index, then perform the lookup
               int pal_idx = (tga_bits_per_pixel == 8) ? FUNC5(s) : FUNC4(s);
               if ( pal_idx >= tga_palette_len ) {
                  // invalid index
                  pal_idx = 0;
               }
               pal_idx *= tga_comp;
               for (j = 0; j < tga_comp; ++j) {
                  raw_data[j] = tga_palette[pal_idx+j];
               }
            } else if(tga_rgb16) {
               FUNC0(tga_comp == STBI_rgb);
               FUNC10(s, raw_data);
            } else {
               //   read in the data raw
               for (j = 0; j < tga_comp; ++j) {
                  raw_data[j] = FUNC5(s);
               }
            }
            //   clear the reading flag for the next pixel
            read_next_pixel = 0;
         } // end of reading a pixel

         // copy data
         for (j = 0; j < tga_comp; ++j)
           tga_data[i*tga_comp+j] = raw_data[j];

         //   in case we're in RLE mode, keep counting down
         --RLE_count;
      }
      //   do I need to invert the image?
      if ( tga_inverted )
      {
         for (j = 0; j*2 < tga_height; ++j)
         {
            int index1 = j * tga_width * tga_comp;
            int index2 = (tga_height - 1 - j) * tga_width * tga_comp;
            for (i = tga_width * tga_comp; i > 0; --i)
            {
               unsigned char temp = tga_data[index1];
               tga_data[index1] = tga_data[index2];
               tga_data[index2] = temp;
               ++index1;
               ++index2;
            }
         }
      }
      //   clear my palette, if I had one
      if ( tga_palette != NULL )
      {
         FUNC1( tga_palette );
      }
   }

   // swap RGB - if the source data was RGB16, it already is in the right order
   if (tga_comp >= 3 && !tga_rgb16)
   {
      unsigned char* tga_pixel = tga_data;
      for (i=0; i < tga_width * tga_height; ++i)
      {
         unsigned char temp = tga_pixel[0];
         tga_pixel[0] = tga_pixel[2];
         tga_pixel[2] = temp;
         tga_pixel += tga_comp;
      }
   }

   // convert to target component count
   if (req_comp && req_comp != tga_comp)
      tga_data = FUNC2(tga_data, tga_comp, req_comp, tga_width, tga_height);

   //   the things I do to get rid of an error message, and yet keep
   //   Microsoft's C compilers happy... [8^(
   tga_palette_start = tga_palette_len = tga_palette_bits =
         tga_x_origin = tga_y_origin = 0;
   //   OK, done
   return tga_data;
}