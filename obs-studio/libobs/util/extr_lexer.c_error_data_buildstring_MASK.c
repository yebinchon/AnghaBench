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
struct error_item {int /*<<< orphan*/  error; int /*<<< orphan*/  column; int /*<<< orphan*/  row; int /*<<< orphan*/  file; } ;
struct TYPE_2__ {size_t num; struct error_item* array; } ;
struct error_data {TYPE_1__ errors; } ;
struct dstr {char* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 

char *FUNC2(struct error_data *ed)
{
	struct dstr str;
	struct error_item *items = ed->errors.array;
	size_t i;

	FUNC1(&str);
	for (i = 0; i < ed->errors.num; i++) {
		struct error_item *item = items + i;
		FUNC0(&str, "%s (%u, %u): %s\n", item->file, item->row,
			  item->column, item->error);
	}

	return str.array;
}