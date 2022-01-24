#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mt7530_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ MT7620_MIB_COUNTER_BASE_PORT ; 
 int MT7620_MIB_COUNTER_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct mt7530_priv*,scalar_t__) ; 
 TYPE_1__* mt7620_port_mibs ; 

__attribute__((used)) static u64 FUNC1(struct mt7530_priv *priv, int i, int port)
{
	return FUNC0(priv,
			MT7620_MIB_COUNTER_BASE_PORT +
			(MT7620_MIB_COUNTER_PORT_OFFSET * port) +
			mt7620_port_mibs[i].offset);
}