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
typedef  scalar_t__ stbi_uc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 scalar_t__ FUNC1 (float,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (float) ; 
 int /*<<< orphan*/  stbi__h2l_gamma_i ; 
 float stbi__h2l_scale_i ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static stbi_uc *FUNC5(float   *data, int x, int y, int comp)
{
   int i,k,n;
   stbi_uc *output = (stbi_uc *) FUNC4(x * y * comp);
   if (output == NULL) { FUNC0(data); return FUNC2("outofmem", "Out of memory"); }
   // compute number of non-alpha components
   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         float z = (float) FUNC1(data[i*comp+k]*stbi__h2l_scale_i, stbi__h2l_gamma_i) * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi_uc) FUNC3(z);
      }
      if (k < comp) {
         float z = data[i*comp+k] * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi_uc) FUNC3(z);
      }
   }
   FUNC0(data);
   return output;
}