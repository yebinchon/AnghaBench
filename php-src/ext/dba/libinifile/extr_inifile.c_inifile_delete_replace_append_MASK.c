#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_bool ;
struct TYPE_18__ {char* value; } ;
typedef  TYPE_1__ val_type ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_19__ {scalar_t__ name; scalar_t__ group; } ;
typedef  TYPE_2__ key_type ;
struct TYPE_20__ {int /*<<< orphan*/ * fp; } ;
typedef  TYPE_3__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  PHP_STREAM_COPY_ALL ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,size_t,size_t,TYPE_3__**) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__ const*,size_t*) ; 
 int FUNC6 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC17(inifile *dba, const key_type *key, const val_type *value, int append, zend_bool *found)
{
	size_t pos_grp_start=0, pos_grp_next;
	inifile *ini_tmp = NULL;
	php_stream *fp_tmp = NULL;
	int ret;

	/* 1) Search group start
	 * 2) Search next group
	 * 3) If not append: Copy group to ini_tmp
	 * 4) Open temp_stream and copy remainder
	 * 5) Truncate stream
	 * 6) If not append AND key.name given: Filtered copy back from ini_tmp
	 *    to stream. Otherwise the user wanted to delete the group.
	 * 7) Append value if given
	 * 8) Append temporary stream
	 */

	FUNC0(!append || (key->name && value)); /* missuse */

	/* 1 - 3 */
	FUNC3(dba, key, &pos_grp_start);
	FUNC5(dba, key, &pos_grp_next);
	if (append) {
		ret = SUCCESS;
	} else {
		ret = FUNC1(dba, pos_grp_start, pos_grp_next, &ini_tmp);
	}

	/* 4 */
	if (ret == SUCCESS) {
		fp_tmp = FUNC14(0, 64 * 1024);
		if (!fp_tmp) {
			FUNC7(NULL, E_WARNING, "Could not create temporary stream");
			ret = FAILURE;
		} else {
			FUNC12(dba->fp, 0, SEEK_END);
			if (pos_grp_next != (size_t)FUNC13(dba->fp)) {
				FUNC12(dba->fp, pos_grp_next, SEEK_SET);
				if (SUCCESS != FUNC9(dba->fp, fp_tmp, PHP_STREAM_COPY_ALL, NULL)) {
					FUNC7(NULL, E_WARNING, "Could not copy remainder to temporary stream");
					ret = FAILURE;
				}
			}
		}
	}

	/* 5 */
	if (ret == SUCCESS) {
		if (!value || (key->name && FUNC15(key->name))) {
			ret = FUNC6(dba, append ? pos_grp_next : pos_grp_start); /* writes error on fail */
		}
	}

	if (ret == SUCCESS) {
		if (key->name && FUNC15(key->name)) {
			/* 6 */
			if (!append && ini_tmp) {
				ret = FUNC2(dba, ini_tmp, key, found);
			}

			/* 7 */
			/* important: do not query ret==SUCCESS again: inifile_filter might fail but
			 * however next operation must be done.
			 */
			if (value) {
				if (pos_grp_start == pos_grp_next && key->group && FUNC15(key->group)) {
					FUNC11(dba->fp, "[%s]\n", key->group);
				}
				FUNC11(dba->fp, "%s=%s\n", key->name, value->value ? value->value : "");
			}
		}

		/* 8 */
		/* important: do not query ret==SUCCESS again: inifile_filter might fail but
		 * however next operation must be done.
		 */
		if (fp_tmp && FUNC13(fp_tmp)) {
			FUNC12(fp_tmp, 0, SEEK_SET);
			FUNC12(dba->fp, 0, SEEK_END);
			if (SUCCESS != FUNC9(fp_tmp, dba->fp, PHP_STREAM_COPY_ALL, NULL)) {
				FUNC16(NULL, "Could not copy from temporary stream - ini file truncated");
				ret = FAILURE;
			}
		}
	}

	if (ini_tmp) {
		FUNC8(ini_tmp->fp);
		FUNC4(ini_tmp, 0);
	}
	if (fp_tmp) {
		FUNC8(fp_tmp);
	}
	FUNC10(dba->fp);
	FUNC12(dba->fp, 0, SEEK_SET);

	return ret;
}