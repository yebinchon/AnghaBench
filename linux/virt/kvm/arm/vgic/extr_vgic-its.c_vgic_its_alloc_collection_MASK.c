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
typedef  int /*<<< orphan*/  u32 ;
struct vgic_its {int /*<<< orphan*/  collection_list; int /*<<< orphan*/  baser_coll_table; } ;
struct its_collection {int /*<<< orphan*/  coll_list; int /*<<< orphan*/  target_addr; int /*<<< orphan*/  collection_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECTION_NOT_MAPPED ; 
 int ENOMEM ; 
 int E_ITS_MAPC_COLLECTION_OOR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct its_collection* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vgic_its *its,
				     struct its_collection **colp,
				     u32 coll_id)
{
	struct its_collection *collection;

	if (!FUNC2(its, its->baser_coll_table, coll_id, NULL))
		return E_ITS_MAPC_COLLECTION_OOR;

	collection = FUNC0(sizeof(*collection), GFP_KERNEL);
	if (!collection)
		return -ENOMEM;

	collection->collection_id = coll_id;
	collection->target_addr = COLLECTION_NOT_MAPPED;

	FUNC1(&collection->coll_list, &its->collection_list);
	*colp = collection;

	return 0;
}