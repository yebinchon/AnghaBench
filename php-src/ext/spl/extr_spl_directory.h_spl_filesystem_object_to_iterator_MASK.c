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
typedef  int /*<<< orphan*/  spl_filesystem_object ;
struct TYPE_4__ {int /*<<< orphan*/  intern; void* object; } ;
typedef  TYPE_1__ spl_filesystem_iterator ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline spl_filesystem_iterator* FUNC2(spl_filesystem_object *obj)
{
	spl_filesystem_iterator    *it;

	it = FUNC0(1, sizeof(spl_filesystem_iterator));
	it->object = (void *)obj;
	FUNC1(&it->intern);
	return it;
}