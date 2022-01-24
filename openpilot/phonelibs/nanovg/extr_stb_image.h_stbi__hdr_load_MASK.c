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
typedef  float stbi_uc ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int STBI__HDR_BUFLEN ; 
 float* FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float*,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,char**,int) ; 

__attribute__((used)) static float *FUNC10(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   char buffer[STBI__HDR_BUFLEN];
   char *token;
   int valid = 0;
   int width, height;
   stbi_uc *scanline;
   float *hdr_data;
   int len;
   unsigned char count, value;
   int i, j, k, c1,c2, z;


   // Check identifier
   if (FUNC7(FUNC5(s,buffer), "#?RADIANCE") != 0)
      return FUNC1("not HDR", "Corrupt HDR image");

   // Parse header
   for(;;) {
      token = FUNC5(s,buffer);
      if (token[0] == 0) break;
      if (FUNC7(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
   }

   if (!valid)    return FUNC1("unsupported format", "Unsupported HDR format");

   // Parse width and height
   // can't use sscanf() if we're not using stdio!
   token = FUNC5(s,buffer);
   if (FUNC8(token, "-Y ", 3))  return FUNC1("unsupported data layout", "Unsupported HDR format");
   token += 3;
   height = (int) FUNC9(token, &token, 10);
   while (*token == ' ') ++token;
   if (FUNC8(token, "+X ", 3))  return FUNC1("unsupported data layout", "Unsupported HDR format");
   token += 3;
   width = (int) FUNC9(token, NULL, 10);

   *x = width;
   *y = height;

   if (comp) *comp = 3;
   if (req_comp == 0) req_comp = 3;

   // Read data
   hdr_data = (float *) FUNC6(height * width * req_comp * sizeof(float));

   // Load image data
   // image data is stored as some number of sca
   if ( width < 8 || width >= 32768) {
      // Read flat data
      for (j=0; j < height; ++j) {
         for (i=0; i < width; ++i) {
            stbi_uc rgbe[4];
           main_decode_loop:
            FUNC3(s, rgbe, 4);
            FUNC4(hdr_data + j * width * req_comp + i * req_comp, rgbe, req_comp);
         }
      }
   } else {
      // Read RLE-encoded data
      scanline = NULL;

      for (j = 0; j < height; ++j) {
         c1 = FUNC2(s);
         c2 = FUNC2(s);
         len = FUNC2(s);
         if (c1 != 2 || c2 != 2 || (len & 0x80)) {
            // not run-length encoded, so we have to actually use THIS data as a decoded
            // pixel (note this can't be a valid pixel--one of RGB must be >= 128)
            stbi_uc rgbe[4];
            rgbe[0] = (stbi_uc) c1;
            rgbe[1] = (stbi_uc) c2;
            rgbe[2] = (stbi_uc) len;
            rgbe[3] = (stbi_uc) FUNC2(s);
            FUNC4(hdr_data, rgbe, req_comp);
            i = 1;
            j = 0;
            FUNC0(scanline);
            goto main_decode_loop; // yes, this makes no sense
         }
         len <<= 8;
         len |= FUNC2(s);
         if (len != width) { FUNC0(hdr_data); FUNC0(scanline); return FUNC1("invalid decoded scanline length", "corrupt HDR"); }
         if (scanline == NULL) scanline = (stbi_uc *) FUNC6(width * 4);

         for (k = 0; k < 4; ++k) {
            i = 0;
            while (i < width) {
               count = FUNC2(s);
               if (count > 128) {
                  // Run
                  value = FUNC2(s);
                  count -= 128;
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = value;
               } else {
                  // Dump
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = FUNC2(s);
               }
            }
         }
         for (i=0; i < width; ++i)
            FUNC4(hdr_data+(j*width + i)*req_comp, scanline + i*4, req_comp);
      }
      FUNC0(scanline);
   }

   return hdr_data;
}