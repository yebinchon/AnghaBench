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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  timeBuf ;
typedef  TYPE_1__* XMLRPC_VALUE ;
struct TYPE_4__ {int /*<<< orphan*/  i; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  xmlrpc_datetime ; 

void FUNC2(XMLRPC_VALUE value, time_t time) {
   if(value) {
      char timeBuf[30];
      value->type = xmlrpc_datetime;
      value->i = time;

      timeBuf[0] = 0;

      FUNC1(time, timeBuf, sizeof(timeBuf));

      if(timeBuf[0]) {
         FUNC0 (value, timeBuf);
      }
   }
}