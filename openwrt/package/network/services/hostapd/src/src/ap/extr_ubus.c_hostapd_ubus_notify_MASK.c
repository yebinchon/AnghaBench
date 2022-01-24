#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  has_subscribers; } ;
struct TYPE_6__ {TYPE_2__ obj; } ;
struct hostapd_data {TYPE_1__ ubus; } ;
struct TYPE_8__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 TYPE_3__ b ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct hostapd_data *hapd, const char *type, const u8 *addr)
{
	if (!hapd->ubus.obj.has_subscribers)
		return;

	if (!addr)
		return;

	FUNC0(&b, 0);
	FUNC1(&b, "address", addr);

	FUNC2(ctx, &hapd->ubus.obj, type, b.head, -1);
}