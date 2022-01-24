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
typedef  TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_4__ {scalar_t__ error; scalar_t__ io; int /*<<< orphan*/  methodName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(XMLRPC_REQUEST request, int bFreeIO) {
   if(request) {
      FUNC2(&request->methodName);

      if(request->io && bFreeIO) {
         FUNC0(request->io);
      }
      if(request->error) {
         FUNC0(request->error);
      }
      FUNC1(request);
   }
}