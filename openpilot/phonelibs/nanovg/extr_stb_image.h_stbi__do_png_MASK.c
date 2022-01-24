#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char* out; unsigned char* expanded; unsigned char* idata; TYPE_1__* s; } ;
typedef  TYPE_2__ stbi__png ;
struct TYPE_5__ {int img_out_n; int img_x; int img_y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  STBI__SCAN_load ; 
 unsigned char* FUNC1 (unsigned char*,int,int,int,int) ; 
 unsigned char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned char *FUNC4(stbi__png *p, int *x, int *y, int *n, int req_comp)
{
   unsigned char *result=NULL;
   if (req_comp < 0 || req_comp > 4) return FUNC2("bad req_comp", "Internal error");
   if (FUNC3(p, STBI__SCAN_load, req_comp)) {
      result = p->out;
      p->out = NULL;
      if (req_comp && req_comp != p->s->img_out_n) {
         result = FUNC1(result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
         p->s->img_out_n = req_comp;
         if (result == NULL) return result;
      }
      *x = p->s->img_x;
      *y = p->s->img_y;
      if (n) *n = p->s->img_out_n;
   }
   FUNC0(p->out);      p->out      = NULL;
   FUNC0(p->expanded); p->expanded = NULL;
   FUNC0(p->idata);    p->idata    = NULL;

   return result;
}