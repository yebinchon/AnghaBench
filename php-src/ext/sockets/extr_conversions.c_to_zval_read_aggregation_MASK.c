#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {int /*<<< orphan*/  has_error; } ;
struct TYPE_9__ {int /*<<< orphan*/  keys; TYPE_1__ err; } ;
typedef  TYPE_2__ res_context ;
struct TYPE_10__ {int field_offset; int /*<<< orphan*/  (* to_zval ) (char const*,int /*<<< orphan*/ *,TYPE_2__*) ;int /*<<< orphan*/ * name; scalar_t__ name_size; } ;
typedef  TYPE_3__ field_descriptor ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(const char *structure,
									 zval *zarr, /* initialized array */
									 const field_descriptor *descriptors,
									 res_context *ctx)
{
	const field_descriptor	*descr;

	FUNC3(FUNC2(zarr) == IS_ARRAY);
	FUNC3(FUNC1(zarr) != NULL);

	for (descr = descriptors; descr->name != NULL && !ctx->err.has_error; descr++) {
		zval *new_zv, tmp;

		if (descr->to_zval == NULL) {
			FUNC4(ctx, "No information on how to convert native "
					"field into value for key '%s'", descr->name);
			break;
		}

		FUNC0(&tmp);
		new_zv = FUNC8(FUNC1(zarr), descr->name, descr->name_size - 1, &tmp);

		FUNC6(&ctx->keys, (void*)&descr->name);
		descr->to_zval(structure + descr->field_offset, new_zv, ctx);
		FUNC7(&ctx->keys);
	}
}