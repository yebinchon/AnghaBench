#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ini_parser_cb_t ;
struct TYPE_9__ {int /*<<< orphan*/  fp; } ;
struct TYPE_10__ {TYPE_1__ handle; } ;
typedef  TYPE_2__ zend_file_handle ;
struct TYPE_11__ {int kv_size; void* kv; scalar_t__ kv_used; void* htab; } ;
typedef  TYPE_3__ browser_data ;
struct TYPE_12__ {int /*<<< orphan*/  str_interned; int /*<<< orphan*/ * current_section_name; int /*<<< orphan*/ * current_entry; TYPE_3__* bdata; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ browscap_parser_ctx ;
typedef  int /*<<< orphan*/  browscap_kv ;

/* Variables and functions */
 int /*<<< orphan*/  E_CORE_WARNING ; 
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ZEND_INI_SCANNER_RAW ; 
 int /*<<< orphan*/  browscap_entry_dtor ; 
 int /*<<< orphan*/  browscap_entry_dtor_persistent ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ php_browscap_parser_cb ; 
 int /*<<< orphan*/  str_interned_dtor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(char *filename, browser_data *browdata, int persistent) /* {{{ */
{
	zend_file_handle fh;
	browscap_parser_ctx ctx = {0};

	if (filename == NULL || filename[0] == '\0') {
		return FAILURE;
	}

	FUNC7(&fh, FUNC0(filename, "r"), filename);
	if (!fh.handle.fp) {
		FUNC2(E_CORE_WARNING, "Cannot open '%s' for reading", filename);
		return FAILURE;
	}

	browdata->htab = FUNC1(sizeof *browdata->htab, persistent);
	FUNC5(browdata->htab, 0, NULL,
		persistent ? browscap_entry_dtor_persistent : browscap_entry_dtor, persistent, 0);

	browdata->kv_size = 16 * 1024;
	browdata->kv_used = 0;
	browdata->kv = FUNC1(sizeof(browscap_kv) * browdata->kv_size, persistent);

	/* Create parser context */
	ctx.bdata = browdata;
	ctx.current_entry = NULL;
	ctx.current_section_name = NULL;
	FUNC4(&ctx.str_interned, 8, NULL, str_interned_dtor, persistent);

	FUNC6(&fh, 1, ZEND_INI_SCANNER_RAW,
			(zend_ini_parser_cb_t) php_browscap_parser_cb, &ctx);

	/* Destroy parser context */
	if (ctx.current_section_name) {
		FUNC8(ctx.current_section_name);
	}
	FUNC3(&ctx.str_interned);

	return SUCCESS;
}