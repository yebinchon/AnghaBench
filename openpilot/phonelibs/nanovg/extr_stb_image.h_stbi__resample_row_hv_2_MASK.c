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
typedef  int stbi_uc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static stbi_uc *FUNC3(stbi_uc *out, stbi_uc *in_near, stbi_uc *in_far, int w, int hs)
{
   // need to generate 2x2 samples for every one in input
   int i,t0,t1;
   if (w == 1) {
      out[0] = out[1] = FUNC2(3*in_near[0] + in_far[0] + 2);
      return out;
   }

   t1 = 3*in_near[0] + in_far[0];
   out[0] = FUNC2(t1+2);
   for (i=1; i < w; ++i) {
      t0 = t1;
      t1 = 3*in_near[i]+in_far[i];
      out[i*2-1] = FUNC1(3*t0 + t1 + 8);
      out[i*2  ] = FUNC1(3*t1 + t0 + 8);
   }
   out[w*2-1] = FUNC2(t1+2);

   FUNC0(hs);

   return out;
}