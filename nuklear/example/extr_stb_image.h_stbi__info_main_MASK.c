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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int*,int*,int*) ; 

__attribute__((used)) static int FUNC10(stbi__context *s, int *x, int *y, int *comp)
{
   #ifndef STBI_NO_JPEG
   if (FUNC4(s, x, y, comp)) return 1;
   #endif

   #ifndef STBI_NO_PNG
   if (FUNC6(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_GIF
   if (FUNC2(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_BMP
   if (FUNC0(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_PSD
   if (FUNC8(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_PIC
   if (FUNC5(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_PNM
   if (FUNC7(s, x, y, comp))  return 1;
   #endif

   #ifndef STBI_NO_HDR
   if (FUNC3(s, x, y, comp))  return 1;
   #endif

   // test tga last because it's a crappy test!
   #ifndef STBI_NO_TGA
   if (FUNC9(s, x, y, comp))
       return 1;
   #endif
   return FUNC1("unknown image type", "Image not of any known type, or corrupt");
}