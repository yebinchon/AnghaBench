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
typedef  scalar_t__ XMLRPC_SERVER ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

XMLRPC_SERVER FUNC1() {
   static XMLRPC_SERVER xsServer = 0;
   if(!xsServer) {
      xsServer = FUNC0();
   }
   return xsServer;
}