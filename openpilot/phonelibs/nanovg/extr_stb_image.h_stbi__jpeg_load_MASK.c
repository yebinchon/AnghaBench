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
struct TYPE_4__ {int /*<<< orphan*/ * s; } ;
typedef  TYPE_1__ stbi__jpeg ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_1__*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static unsigned char *FUNC2(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi__jpeg j;
   j.s = s;
   FUNC1(&j);
   return FUNC0(&j, x,y,comp,req_comp);
}