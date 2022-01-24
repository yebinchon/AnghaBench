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
struct strref {int /*<<< orphan*/  len; int /*<<< orphan*/  array; } ;
struct dstr {int /*<<< orphan*/  array; } ;
struct darray {int dummy; } ;
struct config_item {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct darray*,struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct strref*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 

__attribute__((used)) static void FUNC4(struct darray *items, struct strref *name,
			    struct strref *value)
{
	struct config_item item;
	struct dstr item_value;
	FUNC2(&item_value, value);

	FUNC3(&item_value);

	item.name = FUNC0(name->array, name->len);
	item.value = item_value.array;
	FUNC1(sizeof(struct config_item), items, &item);
}