#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_9__ {int /*<<< orphan*/  kv_used; int /*<<< orphan*/  htab; } ;
typedef  TYPE_1__ browser_data ;
struct TYPE_10__ {int /*<<< orphan*/ * current_section_name; TYPE_3__* current_entry; TYPE_1__* bdata; } ;
typedef  TYPE_2__ browscap_parser_ctx ;
struct TYPE_11__ {size_t prefix_len; int /*<<< orphan*/ * contains_len; int /*<<< orphan*/ * contains_start; int /*<<< orphan*/ * parent; int /*<<< orphan*/  kv_start; int /*<<< orphan*/  kv_end; void* pattern; } ;
typedef  TYPE_3__ browscap_entry ;
typedef  int /*<<< orphan*/  Z_TYPE_FLAGS_P ;

/* Variables and functions */
 int BROWSCAP_NUM_CONTAINS ; 
 int /*<<< orphan*/  E_CORE_ERROR ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IS_ARRAY_PERSISTENT ; 
 int /*<<< orphan*/  UINT16_MAX ; 
#define  ZEND_INI_PARSER_ENTRY 129 
#define  ZEND_INI_PARSER_SECTION 128 
 int /*<<< orphan*/ * FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC21 (void*) ; 
 void* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg) /* {{{ */
{
	browscap_parser_ctx *ctx = arg;
	browser_data *bdata = ctx->bdata;
	int persistent = FUNC0(bdata->htab) & IS_ARRAY_PERSISTENT;

	if (!arg1) {
		return;
	}

	switch (callback_type) {
		case ZEND_INI_PARSER_ENTRY:
			if (ctx->current_entry != NULL && arg2) {
				zend_string *new_key, *new_value;

				/* Set proper value for true/false settings */
				if ((FUNC7(arg2) == 2 && !FUNC18(FUNC8(arg2), "on", sizeof("on") - 1)) ||
					(FUNC7(arg2) == 3 && !FUNC18(FUNC8(arg2), "yes", sizeof("yes") - 1)) ||
					(FUNC7(arg2) == 4 && !FUNC18(FUNC8(arg2), "true", sizeof("true") - 1))
				) {
					new_value = FUNC2('1');
				} else if (
					(FUNC7(arg2) == 2 && !FUNC18(FUNC8(arg2), "no", sizeof("no") - 1)) ||
					(FUNC7(arg2) == 3 && !FUNC18(FUNC8(arg2), "off", sizeof("off") - 1)) ||
					(FUNC7(arg2) == 4 && !FUNC18(FUNC8(arg2), "none", sizeof("none") - 1)) ||
					(FUNC7(arg2) == 5 && !FUNC18(FUNC8(arg2), "false", sizeof("false") - 1))
				) {
					new_value = FUNC3();
				} else { /* Other than true/false setting */
					new_value = FUNC13(ctx, FUNC9(arg2), persistent);
				}

				if (!FUNC17(FUNC8(arg1), "parent")) {
					/* parent entry can not be same as current section -> causes infinite loop! */
					if (ctx->current_section_name != NULL &&
						!FUNC17(FUNC6(ctx->current_section_name), FUNC8(arg2))
					) {
						FUNC19(E_CORE_ERROR, "Invalid browscap ini file: "
							"'Parent' value cannot be same as the section name: %s "
							"(in file %s)", FUNC6(ctx->current_section_name), FUNC1("browscap"));
						return;
					}

					if (ctx->current_entry->parent) {
						FUNC23(ctx->current_entry->parent);
					}

					ctx->current_entry->parent = new_value;
				} else {
					new_key = FUNC14(ctx, FUNC9(arg1), persistent);
					FUNC10(bdata, new_key, new_value, persistent);
					ctx->current_entry->kv_end = bdata->kv_used;
				}
			}
			break;
		case ZEND_INI_PARSER_SECTION:
		{
			browscap_entry *entry;
			zend_string *pattern = FUNC9(arg1);
			size_t pos;
			int i;

			if (FUNC5(pattern) > UINT16_MAX) {
				FUNC16(NULL, E_WARNING,
					"Skipping excessively long pattern of length %zd", FUNC5(pattern));
				break;
			}

			if (persistent) {
				pattern = FUNC21(FUNC22(pattern));
				if (FUNC4(pattern)) {
					Z_TYPE_FLAGS_P(arg1) = 0;
				} else {
					FUNC23(pattern);
				}
			}

			entry = ctx->current_entry
				= FUNC15(sizeof(browscap_entry), persistent);
			FUNC20(bdata->htab, pattern, entry);

			if (ctx->current_section_name) {
				FUNC23(ctx->current_section_name);
			}
			ctx->current_section_name = FUNC22(pattern);

			entry->pattern = FUNC22(pattern);
			entry->kv_end = entry->kv_start = bdata->kv_used;
			entry->parent = NULL;

			pos = entry->prefix_len = FUNC12(pattern);
			for (i = 0; i < BROWSCAP_NUM_CONTAINS; i++) {
				pos = FUNC11(pattern, pos,
					&entry->contains_start[i], &entry->contains_len[i]);
			}
			break;
		}
	}
}