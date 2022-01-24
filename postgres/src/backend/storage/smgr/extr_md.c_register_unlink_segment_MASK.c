#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ RelFileNodeBackend ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  FileTag ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  SYNC_UNLINK_REQUEST ; 

__attribute__((used)) static void
FUNC4(RelFileNodeBackend rnode, ForkNumber forknum,
						BlockNumber segno)
{
	FileTag		tag;

	FUNC1(tag, rnode.node, forknum, segno);

	/* Should never be used with temp relations */
	FUNC0(!FUNC3(rnode));

	FUNC2(&tag, SYNC_UNLINK_REQUEST, true /* retryOnError */ );
}