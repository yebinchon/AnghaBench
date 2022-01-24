#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ relNode; scalar_t__ spcNode; int /*<<< orphan*/  dbNode; } ;
typedef  TYPE_1__ RelFileNode ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FileTag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidForkNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYNC_FILTER_REQUEST ; 

void
FUNC2(Oid dbid)
{
	FileTag		tag;
	RelFileNode rnode;

	rnode.dbNode = dbid;
	rnode.spcNode = 0;
	rnode.relNode = 0;

	FUNC0(tag, rnode, InvalidForkNumber, InvalidBlockNumber);

	FUNC1(&tag, SYNC_FILTER_REQUEST, true /* retryOnError */ );
}