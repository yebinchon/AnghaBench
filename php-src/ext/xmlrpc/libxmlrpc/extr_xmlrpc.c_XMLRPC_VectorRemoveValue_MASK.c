#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ q_iter ;
typedef  TYPE_2__* XMLRPC_VALUE ;
struct TYPE_8__ {TYPE_1__* v; } ;
struct TYPE_7__ {scalar_t__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(XMLRPC_VALUE vector, XMLRPC_VALUE value) {
   if(vector && vector->v && vector->v->q && value) {
       q_iter qi = FUNC2(vector->v->q);

       while(qi) {
          XMLRPC_VALUE xIter = FUNC1(qi);
          if(xIter == value) {
             FUNC4(xIter);
             FUNC0(vector->v->q, qi);
             return 1;
          }
          qi = FUNC3(qi);
       }
   }
   return 0;
}