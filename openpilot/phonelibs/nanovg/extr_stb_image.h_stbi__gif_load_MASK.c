#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stbi_uc ;
struct TYPE_4__ {int w; int h; scalar_t__ out; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;
typedef  int /*<<< orphan*/  g ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int*,int) ; 

__attribute__((used)) static stbi_uc *FUNC4(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi_uc *u = 0;
   stbi__gif g;
   FUNC1(&g, 0, sizeof(g));

   u = FUNC3(s, &g, comp, req_comp);
   if (u == (stbi_uc *) s) u = 0;  // end of animated gif marker
   if (u) {
      *x = g.w;
      *y = g.h;
      if (req_comp && req_comp != 4)
         u = FUNC2(u, 4, req_comp, g.w, g.h);
   }
   else if (g.out)
      FUNC0(g.out);

   return u;
}