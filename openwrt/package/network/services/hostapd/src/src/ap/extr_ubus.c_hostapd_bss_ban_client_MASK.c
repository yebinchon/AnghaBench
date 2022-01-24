#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct ubus_banned_client {TYPE_2__ avl; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  banned; } ;
struct hostapd_data {TYPE_1__ ubus; } ;

/* Variables and functions */
 int /*<<< orphan*/  avl ; 
 struct ubus_banned_client* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ubus_banned_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct ubus_banned_client*,struct hostapd_data*),struct ubus_banned_client*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  (*) (struct ubus_banned_client*,struct hostapd_data*),struct ubus_banned_client*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubus_banned_client*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ubus_banned_client* FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct hostapd_data *hapd, u8 *addr, int time)
{
	struct ubus_banned_client *ban;

	if (time < 0)
		time = 0;

	ban = FUNC0(&hapd->ubus.banned, addr, ban, avl);
	if (!ban) {
		if (!time)
			return;

		ban = FUNC6(sizeof(*ban));
		FUNC5(ban->addr, addr, sizeof(ban->addr));
		ban->avl.key = ban->addr;
		FUNC1(&hapd->ubus.banned, &ban->avl);
	} else {
		FUNC2(hostapd_bss_del_ban, ban, hapd);
		if (!time) {
			FUNC4(ban, hapd);
			return;
		}
	}

	FUNC3(0, time * 1000, hostapd_bss_del_ban, ban, hapd);
}