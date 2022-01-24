#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stbi_uc ;
struct TYPE_5__ {int img_x; int img_y; int img_n; } ;
typedef  TYPE_1__ stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int*,int*) ; 

__attribute__((used)) static stbi_uc *FUNC5(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi_uc *out;
   if (!FUNC4(s, (int *)&s->img_x, (int *)&s->img_y, (int *)&s->img_n))
      return 0;
   *x = s->img_x;
   *y = s->img_y;
   *comp = s->img_n;

   out = (stbi_uc *) FUNC3(s->img_n * s->img_x * s->img_y);
   if (!out) return FUNC1("outofmem", "Out of memory");
   FUNC2(s, out, s->img_n * s->img_x * s->img_y);

   if (req_comp && req_comp != s->img_n) {
      out = FUNC0(out, s->img_n, req_comp, s->img_x, s->img_y);
      if (out == NULL) return out; // stbi__convert_format frees input on failure
   }
   return out;
}