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
struct variable {int arrsize; int ind_varcharsize; int ind_arrsize; int ind_offset; int /*<<< orphan*/ * ind_value; int /*<<< orphan*/ ** ind_pointer; int /*<<< orphan*/  ind_type; scalar_t__ offset; int /*<<< orphan*/ * pointer; int /*<<< orphan*/  value; int /*<<< orphan*/  varcharsize; int /*<<< orphan*/  type; } ;
struct statement {int /*<<< orphan*/  force_indicator; int /*<<< orphan*/  lineno; } ;
struct descriptor_item {int /*<<< orphan*/  indicator; int /*<<< orphan*/  data; int /*<<< orphan*/  data_len; scalar_t__ is_binary; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPGt_NO_INDICATOR ; 
 int /*<<< orphan*/  ECPGt_char ; 
 int /*<<< orphan*/  ECPGt_int ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct variable*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct statement *stmt, struct descriptor_item *desc_item,
					  char **tobeinserted)
{
	struct variable var;

	/*
	 * In case of binary data, only allocate memory and memcpy because binary
	 * data have been already stored into desc_item->data with
	 * ecpg_store_input() at ECPGset_desc().
	 */
	if (desc_item->is_binary)
	{
		if (!(*tobeinserted = FUNC0(desc_item->data_len, stmt->lineno)))
			return false;
		FUNC2(*tobeinserted, desc_item->data, desc_item->data_len);
		return true;
	}

	var.type = ECPGt_char;
	var.varcharsize = FUNC3(desc_item->data);
	var.value = desc_item->data;
	var.pointer = &(desc_item->data);
	var.arrsize = 1;
	var.offset = 0;

	if (!desc_item->indicator)
	{
		var.ind_type = ECPGt_NO_INDICATOR;
		var.ind_value = *(var.ind_pointer = NULL);
		var.ind_varcharsize = var.ind_arrsize = var.ind_offset = 0;
	}
	else
	{
		var.ind_type = ECPGt_int;
		var.ind_value = &(desc_item->indicator);
		var.ind_pointer = &(var.ind_value);
		var.ind_varcharsize = var.ind_arrsize = 1;
		var.ind_offset = 0;
	}

	if (!FUNC1(stmt->lineno, stmt->force_indicator, &var, tobeinserted, false))
		return false;

	return true;
}