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
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int FUNC0 (struct net_device**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 struct net_device** g_net_dev ; 
 TYPE_2__ g_ptm_priv_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
    int ndev;

    for ( ndev = 0; ndev < FUNC0(g_net_dev) && g_net_dev[ndev] != dev; ndev++ );
    FUNC1(ndev >= 0 && ndev < FUNC0(g_net_dev), "ndev = %d (wrong value)", ndev);

    FUNC2((1 << ndev) | (1 << (ndev + 16)), 0, MBOX_IGU1_IER);

    FUNC3(&g_ptm_priv_data.itf[ndev].napi);

    FUNC4(dev);

    return 0;
}