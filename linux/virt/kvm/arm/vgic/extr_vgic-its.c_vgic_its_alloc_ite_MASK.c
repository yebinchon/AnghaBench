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
struct its_ite {int /*<<< orphan*/  ite_list; struct its_collection* collection; int /*<<< orphan*/  event_id; } ;
struct its_device {int /*<<< orphan*/  itt_head; } ;
struct its_collection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct its_ite* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct its_ite* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct its_ite *FUNC3(struct its_device *device,
					  struct its_collection *collection,
					  u32 event_id)
{
	struct its_ite *ite;

	ite = FUNC1(sizeof(*ite), GFP_KERNEL);
	if (!ite)
		return FUNC0(-ENOMEM);

	ite->event_id	= event_id;
	ite->collection = collection;

	FUNC2(&ite->ite_list, &device->itt_head);
	return ite;
}