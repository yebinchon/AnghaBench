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
typedef  int /*<<< orphan*/  stbi_uc ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static stbi_uc *FUNC10(stbi__context *s,int *px,int *py,int *comp,int req_comp)
{
   stbi_uc *result;
   int i, x,y;

   for (i=0; i<92; ++i)
      FUNC7(s);

   x = FUNC5(s);
   y = FUNC5(s);
   if (FUNC2(s))  return FUNC4("bad file","file too short (pic header)");
   if ((1 << 28) / x < y) return FUNC4("too large", "Image too large to decode");

   FUNC6(s); //skip `ratio'
   FUNC5(s); //skip `fields'
   FUNC5(s); //skip `pad'

   // intermediate buffer is RGBA
   result = (stbi_uc *) FUNC8(x*y*4);
   FUNC1(result, 0xff, x*y*4);

   if (!FUNC9(s,x,y,comp, result)) {
      FUNC0(result);
      result=0;
   }
   *px = x;
   *py = y;
   if (req_comp == 0) req_comp = *comp;
   result=FUNC3(result,4,req_comp,x,y);

   return result;
}