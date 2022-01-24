#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* next; TYPE_10__* source; TYPE_3__* parent; int /*<<< orphan*/  is_group; } ;
typedef  TYPE_2__ obs_sceneitem_t ;
struct TYPE_22__ {TYPE_2__* first_item; } ;
typedef  TYPE_3__ obs_scene_t ;
struct TYPE_20__ {TYPE_3__* data; } ;
struct TYPE_19__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,TYPE_10__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 

void FUNC8(obs_sceneitem_t *item)
{
	if (!item || !item->is_group)
		return;

	obs_scene_t *scene = item->parent;
	obs_scene_t *subscene = item->source->context.data;
	obs_sceneitem_t *insert_after = item;
	obs_sceneitem_t *first;
	obs_sceneitem_t *last;

	FUNC3(scene);

	/* ------------------------- */

	FUNC3(subscene);
	first = subscene->first_item;
	last = first;
	while (last) {
		obs_sceneitem_t *dst;

		FUNC7(item, last);
		dst = FUNC5(scene, last->source, insert_after);
		FUNC2(dst, last, true, true, true);
		FUNC0(last, item);

		if (!last->next)
			break;

		insert_after = dst;
		last = last->next;
	}
	FUNC4(subscene);

	/* ------------------------- */

	FUNC1(item);
	FUNC4(scene);

	FUNC6(item);
}