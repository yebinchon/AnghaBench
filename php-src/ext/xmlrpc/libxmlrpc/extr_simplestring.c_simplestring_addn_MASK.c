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
struct TYPE_4__ {size_t size; char* str; size_t len; } ;
typedef  TYPE_1__ simplestring ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(simplestring* target, const char* source, size_t add_len) {
   size_t newsize = target->size, incr = 0;
   if(target && source) {
      if(!target->str) {
         FUNC2(target);
      }

      if((SIZE_MAX - add_len) < target->len || (SIZE_MAX - add_len - 1) < target->len) {
    	  /* check for overflows, if there's a potential overflow do nothing */
    	  return;
      }

      if(target->len + add_len + 1 > target->size) {
         /* newsize is current length + new length */
         newsize = target->len + add_len + 1;
         incr = target->size * 2;

         /* align to SIMPLESTRING_INCR increments */
         if (incr) {
            newsize = newsize - (newsize % incr) + incr;
         }
         if(newsize < (target->len + add_len + 1)) {
        	 /* some kind of overflow happened */
        	 return;
         }
         target->str = (char*)FUNC0(target->str, newsize);

         target->size = target->str ? newsize : 0;
      }

      if(target->str) {
         if(add_len) {
            FUNC1(target->str + target->len, source, add_len);
         }
         target->len += add_len;
         target->str[target->len] = 0; /* null terminate */
      }
   }
}