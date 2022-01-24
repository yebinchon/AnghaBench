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
struct netif_saddr_item {char* addr; int /*<<< orphan*/  name; } ;
struct netif_saddr_data {int /*<<< orphan*/  addrs; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct netif_saddr_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,char const*,char const*) ; 

__attribute__((used)) static inline void FUNC4(struct netif_saddr_data *sd,
					      const char *ip,
					      const char *adapter)
{
	struct netif_saddr_item item;
	struct dstr full_name = {0};
	char *ip_dup = FUNC0(ip);

	if (adapter && *adapter)
		FUNC3(&full_name, "[%s] %s", adapter, ip);
	else
		FUNC2(&full_name, ip);

	item.name = full_name.array;
	item.addr = ip_dup;

	FUNC1(sd->addrs, &item);
}