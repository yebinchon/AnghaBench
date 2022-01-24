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
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNTP_DOLOOKUPS_ID ; 
 size_t server_count ; 
 int /*<<< orphan*/ * serverp ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasknumber ; 

__attribute__((used)) static void FUNC2(const char *name, ip_addr_t *ipaddr, void *arg)
{
  (void)arg;

  if (ipaddr == NULL)
  {
    FUNC0("DNS Fail!\n");
  }
  else
  {
    serverp[server_count] = *ipaddr;
    server_count++;
  }
  FUNC1(tasknumber, SNTP_DOLOOKUPS_ID);
}