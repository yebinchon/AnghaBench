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
typedef  void* txid ;
struct TYPE_2__ {scalar_t__ nxip; void* xmax; void* xmin; } ;
typedef  TYPE_1__ TxidSnapshot ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static StringInfo
FUNC3(txid xmin, txid xmax)
{
	TxidSnapshot snap;
	StringInfo	buf;

	snap.xmin = xmin;
	snap.xmax = xmax;
	snap.nxip = 0;

	buf = FUNC2();
	FUNC1(buf, (char *) &snap, FUNC0(0));
	return buf;
}