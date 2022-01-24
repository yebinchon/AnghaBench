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
typedef  int /*<<< orphan*/  queue ;

/* Variables and functions */
 int False_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int True_ ; 

int FUNC3(queue *q, void *data,
           int (*Comp)(const void *, const void *))
{
   void *d;

   if (q == NULL) {
	return False_;
   }

   d = FUNC1(q);
   do {
      if(Comp(d, data) == 0)
         return True_;
      d = FUNC2(q);
   } while(!FUNC0(q));

   if(Comp(d, data) == 0)
      return True_;

   return False_;
}