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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(stbi__context *s, int *x, int *y, int *comp)
{
   int hsz;
   if (FUNC2(s) != 'B' || FUNC2(s) != 'M') {
       FUNC3( s );
       return 0;
   }
   FUNC4(s,12);
   hsz = FUNC1(s);
   if (hsz != 12 && hsz != 40 && hsz != 56 && hsz != 108 && hsz != 124) {
       FUNC3( s );
       return 0;
   }
   if (hsz == 12) {
      *x = FUNC0(s);
      *y = FUNC0(s);
   } else {
      *x = FUNC1(s);
      *y = FUNC1(s);
   }
   if (FUNC0(s) != 1) {
       FUNC3( s );
       return 0;
   }
   *comp = FUNC0(s) / 8;
   return 1;
}