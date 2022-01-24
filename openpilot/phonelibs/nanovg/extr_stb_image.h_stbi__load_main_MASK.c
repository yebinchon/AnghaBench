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
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (char*,char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 float* FUNC5 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (float*,int,int,int) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC12 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC14 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC16 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC18 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned char *FUNC20(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   #ifndef STBI_NO_JPEG
   if (FUNC9(s)) return FUNC8(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_PNG
   if (FUNC13(s))  return FUNC12(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_BMP
   if (FUNC1(s))  return FUNC0(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_GIF
   if (FUNC4(s))  return FUNC3(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_PSD
   if (FUNC17(s))  return FUNC16(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_PIC
   if (FUNC11(s))  return FUNC10(s,x,y,comp,req_comp);
   #endif
   #ifndef STBI_NO_PNM
   if (FUNC15(s))  return FUNC14(s,x,y,comp,req_comp);
   #endif

   #ifndef STBI_NO_HDR
   if (FUNC6(s)) {
      float *hdr = FUNC5(s, x,y,comp,req_comp);
      return FUNC7(hdr, *x, *y, req_comp ? req_comp : *comp);
   }
   #endif

   #ifndef STBI_NO_TGA
   // test tga last because it's a crappy test!
   if (FUNC19(s))
      return FUNC18(s,x,y,comp,req_comp);
   #endif

   return FUNC2("unknown image type", "Image not of any known type, or corrupt");
}