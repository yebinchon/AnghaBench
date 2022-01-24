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
typedef  int /*<<< orphan*/  wiz_NetTimeout ;
typedef  int /*<<< orphan*/  wiz_NetInfo ;
typedef  int /*<<< orphan*/  netmode_type ;
typedef  int int8_t ;
typedef  int ctlnetwork_type ;

/* Variables and functions */
#define  CN_GET_NETINFO 133 
#define  CN_GET_NETMODE 132 
#define  CN_GET_TIMEOUT 131 
#define  CN_SET_NETINFO 130 
#define  CN_SET_NETMODE 129 
#define  CN_SET_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int8_t FUNC6(ctlnetwork_type cntype, void* arg)
{
   
   switch(cntype)
   {
      case CN_SET_NETINFO:
         FUNC3((wiz_NetInfo*)arg);
         break;
      case CN_GET_NETINFO:
         FUNC0((wiz_NetInfo*)arg);
         break;
      case CN_SET_NETMODE:
         return FUNC4(*(netmode_type*)arg);
      case CN_GET_NETMODE:
         *(netmode_type*)arg = FUNC1();
         break;
      case CN_SET_TIMEOUT:
         FUNC5((wiz_NetTimeout*)arg);
         break;
      case CN_GET_TIMEOUT:
         FUNC2((wiz_NetTimeout*)arg);
         break;
      default:
         return -1;
   }
   return 0;
}