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
struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct netif_saddr_data {TYPE_2__ addrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 

__attribute__((used)) static inline void FUNC2(struct netif_saddr_data *data)
{
	for (size_t i = 0; i < data->addrs.num; i++) {
		FUNC0(data->addrs.array[i].name);
		FUNC0(data->addrs.array[i].addr);
	}
	FUNC1(data->addrs);
}