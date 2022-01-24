#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_32__ {TYPE_3__* funcs; } ;
typedef  TYPE_8__ zend_object_iterator ;
struct TYPE_33__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_9__ zend_class_entry ;
typedef  int zend_bool ;
struct _phar_t {size_t l; char* b; int /*<<< orphan*/  ret; int /*<<< orphan*/  fp; TYPE_12__* p; TYPE_9__* c; } ;
struct TYPE_29__ {int /*<<< orphan*/  d_name; } ;
struct TYPE_30__ {TYPE_5__ entry; } ;
struct TYPE_31__ {TYPE_6__ dir; } ;
struct TYPE_21__ {char* file_name; TYPE_7__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_10__ spl_filesystem_object ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_22__ {TYPE_2__* internal_file; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_11__ phar_entry_data ;
struct TYPE_23__ {TYPE_1__* archive; } ;
typedef  TYPE_12__ phar_archive_object ;
struct TYPE_28__ {int /*<<< orphan*/  offset; } ;
struct TYPE_27__ {int /*<<< orphan*/  (* get_current_key ) (TYPE_8__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* get_current_data ) (TYPE_8__*) ;} ;
struct TYPE_26__ {scalar_t__ fp_type; void* offset_abs; void* offset; size_t uncompressed_filesize; size_t compressed_filesize; int /*<<< orphan*/ * fp; } ;
struct TYPE_25__ {TYPE_4__* handlers; } ;
struct TYPE_24__ {int /*<<< orphan*/  fname_len; int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SLASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_IS_DIR ; 
#define  IS_OBJECT 133 
#define  IS_RESOURCE 132 
#define  IS_STRING 131 
 int const IS_TRUE ; 
 scalar_t__ PHAR_MOD ; 
 scalar_t__ PHAR_UFP ; 
 int /*<<< orphan*/  PHP_STREAM_COPY_ALL ; 
#define  SPL_FS_DIR 130 
#define  SPL_FS_FILE 129 
#define  SPL_FS_INFO 128 
 int STREAM_MUST_SEEK ; 
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_STOP ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_20__* FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int const FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  exception ; 
 char* FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__*) ; 
 TYPE_11__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char*,int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (char*,char*,int,int /*<<< orphan*/ **) ; 
 void* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_BadMethodCallException ; 
 int /*<<< orphan*/  spl_ce_SplFileInfo ; 
 int /*<<< orphan*/  spl_ce_UnexpectedValueException ; 
 char* FUNC25 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 size_t FUNC26 (char**,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC27 (char*) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC29 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC37(zend_object_iterator *iter, void *puser) /* {{{ */
{
	zval *value;
	zend_bool close_fp = 1;
	struct _phar_t *p_obj = (struct _phar_t*) puser;
	size_t str_key_len, base_len = p_obj->l;
	phar_entry_data *data;
	php_stream *fp;
	size_t fname_len;
	size_t contents_len;
	char *fname, *error = NULL, *base = p_obj->b, *save = NULL, *temp = NULL;
	zend_string *opened;
	char *str_key;
	zend_class_entry *ce = p_obj->c;
	phar_archive_object *phar_obj = p_obj->p;

	value = iter->funcs->get_current_data(iter);

	if (FUNC0(exception)) {
		return ZEND_HASH_APPLY_STOP;
	}

	if (!value) {
		/* failure in get_current_data */
		FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned no value", FUNC1(ce->name));
		return ZEND_HASH_APPLY_STOP;
	}

	switch (FUNC9(value)) {
		case IS_STRING:
			break;
		case IS_RESOURCE:
			FUNC22(fp, value);

			if (!fp) {
				FUNC34(spl_ce_BadMethodCallException, 0, "Iterator %s returned an invalid stream handle", FUNC1(ce->name));
				return ZEND_HASH_APPLY_STOP;
			}

			if (iter->funcs->get_current_key) {
				zval key;
				iter->funcs->get_current_key(iter, &key);

				if (FUNC0(exception)) {
					return ZEND_HASH_APPLY_STOP;
				}

				if (FUNC8(key) != IS_STRING) {
					FUNC35(&key);
					FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned an invalid key (must return a string)", FUNC1(ce->name));
					return ZEND_HASH_APPLY_STOP;
				}

				str_key_len = FUNC4(key);
				str_key = FUNC12(FUNC6(key), str_key_len);

				save = str_key;
				FUNC36(&key);
			} else {
				FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned an invalid key (must return a string)", FUNC1(ce->name));
				return ZEND_HASH_APPLY_STOP;
			}

			close_fp = 0;
			opened = FUNC32("[stream]", sizeof("[stream]") - 1, 0);
			goto after_open_fp;
		case IS_OBJECT:
			if (FUNC14(FUNC2(value), spl_ce_SplFileInfo)) {
				char *test = NULL;
				zval dummy;
				spl_filesystem_object *intern = (spl_filesystem_object*)((char*)FUNC3(value) - FUNC3(value)->handlers->offset);

				if (!base_len) {
					FUNC34(spl_ce_BadMethodCallException, 0, "Iterator %s returns an SplFileInfo object, so base directory must be specified", FUNC1(ce->name));
					return ZEND_HASH_APPLY_STOP;
				}

				switch (intern->type) {
					case SPL_FS_DIR:
						test = FUNC25(intern, NULL);
						fname_len = FUNC26(&fname, 0, "%s%c%s", test, DEFAULT_SLASH, intern->u.dir.entry.d_name);
						FUNC19(fname, fname_len, FS_IS_DIR, &dummy);

						if (FUNC8(dummy) == IS_TRUE) {
							/* ignore directories */
							FUNC11(fname);
							return ZEND_HASH_APPLY_KEEP;
						}

						test = FUNC13(fname, NULL);
						FUNC11(fname);

						if (test) {
							fname = test;
							fname_len = FUNC27(fname);
						} else {
							FUNC34(spl_ce_UnexpectedValueException, 0, "Could not resolve file path");
							return ZEND_HASH_APPLY_STOP;
						}

						save = fname;
						goto phar_spl_fileinfo;
					case SPL_FS_INFO:
					case SPL_FS_FILE:
						fname = FUNC13(intern->file_name, NULL);
						if (!fname) {
							FUNC34(spl_ce_UnexpectedValueException, 0, "Could not resolve file path");
							return ZEND_HASH_APPLY_STOP;
						}

						fname_len = FUNC27(fname);
						save = fname;
						goto phar_spl_fileinfo;
				}
			}
			/* fall-through */
		default:
			FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned an invalid value (must return a string)", FUNC1(ce->name));
			return ZEND_HASH_APPLY_STOP;
	}

	fname = FUNC7(value);
	fname_len = FUNC5(value);

phar_spl_fileinfo:
	if (base_len) {
		temp = FUNC13(base, NULL);
		if (!temp) {
			FUNC34(spl_ce_UnexpectedValueException, 0, "Could not resolve file path");
			if (save) {
				FUNC11(save);
			}
			return ZEND_HASH_APPLY_STOP;
		}

		base = temp;
		base_len = FUNC27(base);

		if (FUNC28(fname, base)) {
			str_key_len = fname_len - base_len;

			if (str_key_len <= 0) {
				if (save) {
					FUNC11(save);
					FUNC11(temp);
				}
				return ZEND_HASH_APPLY_KEEP;
			}

			str_key = fname + base_len;

			if (*str_key == '/' || *str_key == '\\') {
				str_key++;
				str_key_len--;
			}

		} else {
			FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned a path \"%s\" that is not in the base directory \"%s\"", FUNC1(ce->name), fname, base);

			if (save) {
				FUNC11(save);
				FUNC11(temp);
			}

			return ZEND_HASH_APPLY_STOP;
		}
	} else {
		if (iter->funcs->get_current_key) {
			zval key;
			iter->funcs->get_current_key(iter, &key);

			if (FUNC0(exception)) {
				return ZEND_HASH_APPLY_STOP;
			}

			if (FUNC8(key) != IS_STRING) {
				FUNC35(&key);
				FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned an invalid key (must return a string)", FUNC1(ce->name));
				return ZEND_HASH_APPLY_STOP;
			}

			str_key_len = FUNC4(key);
			str_key = FUNC12(FUNC6(key), str_key_len);

			save = str_key;
			FUNC36(&key);
		} else {
			FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned an invalid key (must return a string)", FUNC1(ce->name));
			return ZEND_HASH_APPLY_STOP;
		}
	}

	if (FUNC18(fname)) {
		FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned a path \"%s\" that open_basedir prevents opening", FUNC1(ce->name), fname);

		if (save) {
			FUNC11(save);
		}

		if (temp) {
			FUNC11(temp);
		}

		return ZEND_HASH_APPLY_STOP;
	}

	/* try to open source file, then create internal phar file and copy contents */
	fp = FUNC23(fname, "rb", STREAM_MUST_SEEK|0, &opened);

	if (!fp) {
		FUNC34(spl_ce_UnexpectedValueException, 0, "Iterator %s returned a file that could not be opened \"%s\"", FUNC1(ce->name), fname);

		if (save) {
			FUNC11(save);
		}

		if (temp) {
			FUNC11(temp);
		}

		return ZEND_HASH_APPLY_STOP;
	}
after_open_fp:
	if (str_key_len >= sizeof(".phar")-1 && !FUNC15(str_key, ".phar", sizeof(".phar")-1)) {
		/* silently skip any files that would be added to the magic .phar directory */
		if (save) {
			FUNC11(save);
		}

		if (temp) {
			FUNC11(temp);
		}

		if (opened) {
			FUNC33(opened, 0);
		}

		if (close_fp) {
			FUNC20(fp);
		}

		return ZEND_HASH_APPLY_KEEP;
	}

	if (!(data = FUNC17(phar_obj->archive->fname, phar_obj->archive->fname_len, str_key, str_key_len, "w+b", 0, &error, 1))) {
		FUNC34(spl_ce_BadMethodCallException, 0, "Entry %s cannot be created: %s", str_key, error);
		FUNC11(error);

		if (save) {
			FUNC11(save);
		}

		if (opened) {
			FUNC33(opened, 0);
		}

		if (temp) {
			FUNC11(temp);
		}

		if (close_fp) {
			FUNC20(fp);
		}

		return ZEND_HASH_APPLY_STOP;

	} else {
		if (error) {
			FUNC11(error);
		}
		/* convert to PHAR_UFP */
		if (data->internal_file->fp_type == PHAR_MOD) {
			FUNC20(data->internal_file->fp);
		}

		data->internal_file->fp = NULL;
		data->internal_file->fp_type = PHAR_UFP;
		data->internal_file->offset_abs = data->internal_file->offset = FUNC24(p_obj->fp);
		data->fp = NULL;
		FUNC21(fp, p_obj->fp, PHP_STREAM_COPY_ALL, &contents_len);
		data->internal_file->uncompressed_filesize = data->internal_file->compressed_filesize =
			FUNC24(p_obj->fp) - data->internal_file->offset;
	}

	if (close_fp) {
		FUNC20(fp);
	}

	FUNC10(p_obj->ret, str_key, opened);

	if (save) {
		FUNC11(save);
	}

	if (temp) {
		FUNC11(temp);
	}

	data->internal_file->compressed_filesize = data->internal_file->uncompressed_filesize = contents_len;
	FUNC16(data);

	return ZEND_HASH_APPLY_KEEP;
}