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
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef  int /*<<< orphan*/  SeqTableData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  seqhashtab ; 

__attribute__((used)) static void
FUNC2(void)
{
	HASHCTL		ctl;

	FUNC1(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(Oid);
	ctl.entrysize = sizeof(SeqTableData);

	seqhashtab = FUNC0("Sequence values", 16, &ctl,
							 HASH_ELEM | HASH_BLOBS);
}