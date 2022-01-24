#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_handlers ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_6__ {int /*<<< orphan*/  get_gc; int /*<<< orphan*/  compare; int /*<<< orphan*/  get_method; int /*<<< orphan*/ * clone_obj; int /*<<< orphan*/  free_obj; int /*<<< orphan*/  dtor_obj; int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  unserialize; int /*<<< orphan*/  serialize; int /*<<< orphan*/  create_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ PDO_ATTR_AUTOCOMMIT ; 
 scalar_t__ PDO_ATTR_CASE ; 
 scalar_t__ PDO_ATTR_CLIENT_VERSION ; 
 scalar_t__ PDO_ATTR_CONNECTION_STATUS ; 
 scalar_t__ PDO_ATTR_CURSOR ; 
 scalar_t__ PDO_ATTR_CURSOR_NAME ; 
 scalar_t__ PDO_ATTR_DEFAULT_FETCH_MODE ; 
 scalar_t__ PDO_ATTR_DEFAULT_STR_PARAM ; 
 scalar_t__ PDO_ATTR_DRIVER_NAME ; 
 scalar_t__ PDO_ATTR_EMULATE_PREPARES ; 
 scalar_t__ PDO_ATTR_ERRMODE ; 
 scalar_t__ PDO_ATTR_FETCH_CATALOG_NAMES ; 
 scalar_t__ PDO_ATTR_FETCH_TABLE_NAMES ; 
 scalar_t__ PDO_ATTR_MAX_COLUMN_LEN ; 
 scalar_t__ PDO_ATTR_ORACLE_NULLS ; 
 scalar_t__ PDO_ATTR_PERSISTENT ; 
 scalar_t__ PDO_ATTR_PREFETCH ; 
 scalar_t__ PDO_ATTR_SERVER_INFO ; 
 scalar_t__ PDO_ATTR_SERVER_VERSION ; 
 scalar_t__ PDO_ATTR_STATEMENT_CLASS ; 
 scalar_t__ PDO_ATTR_STRINGIFY_FETCHES ; 
 scalar_t__ PDO_ATTR_TIMEOUT ; 
 scalar_t__ PDO_CASE_LOWER ; 
 scalar_t__ PDO_CASE_NATURAL ; 
 scalar_t__ PDO_CASE_UPPER ; 
 scalar_t__ PDO_CURSOR_FWDONLY ; 
 scalar_t__ PDO_CURSOR_SCROLL ; 
 scalar_t__ PDO_ERRMODE_EXCEPTION ; 
 scalar_t__ PDO_ERRMODE_SILENT ; 
 scalar_t__ PDO_ERRMODE_WARNING ; 
 int /*<<< orphan*/  PDO_ERR_NONE ; 
 scalar_t__ PDO_FETCH_ASSOC ; 
 scalar_t__ PDO_FETCH_BOTH ; 
 scalar_t__ PDO_FETCH_BOUND ; 
 scalar_t__ PDO_FETCH_CLASS ; 
 scalar_t__ PDO_FETCH_CLASSTYPE ; 
 scalar_t__ PDO_FETCH_COLUMN ; 
 scalar_t__ PDO_FETCH_FUNC ; 
 scalar_t__ PDO_FETCH_GROUP ; 
 scalar_t__ PDO_FETCH_INTO ; 
 scalar_t__ PDO_FETCH_KEY_PAIR ; 
 scalar_t__ PDO_FETCH_LAZY ; 
 scalar_t__ PDO_FETCH_NAMED ; 
 scalar_t__ PDO_FETCH_NUM ; 
 scalar_t__ PDO_FETCH_OBJ ; 
 scalar_t__ PDO_FETCH_ORI_ABS ; 
 scalar_t__ PDO_FETCH_ORI_FIRST ; 
 scalar_t__ PDO_FETCH_ORI_LAST ; 
 scalar_t__ PDO_FETCH_ORI_NEXT ; 
 scalar_t__ PDO_FETCH_ORI_PRIOR ; 
 scalar_t__ PDO_FETCH_ORI_REL ; 
 scalar_t__ PDO_FETCH_PROPS_LATE ; 
 scalar_t__ PDO_FETCH_SERIALIZE ; 
 scalar_t__ PDO_FETCH_UNIQUE ; 
 scalar_t__ PDO_NULL_EMPTY_STRING ; 
 scalar_t__ PDO_NULL_NATURAL ; 
 scalar_t__ PDO_NULL_TO_STRING ; 
 scalar_t__ PDO_PARAM_BOOL ; 
 scalar_t__ PDO_PARAM_EVT_ALLOC ; 
 scalar_t__ PDO_PARAM_EVT_EXEC_POST ; 
 scalar_t__ PDO_PARAM_EVT_EXEC_PRE ; 
 scalar_t__ PDO_PARAM_EVT_FETCH_POST ; 
 scalar_t__ PDO_PARAM_EVT_FETCH_PRE ; 
 scalar_t__ PDO_PARAM_EVT_FREE ; 
 scalar_t__ PDO_PARAM_EVT_NORMALIZE ; 
 scalar_t__ PDO_PARAM_INPUT_OUTPUT ; 
 scalar_t__ PDO_PARAM_INT ; 
 scalar_t__ PDO_PARAM_LOB ; 
 scalar_t__ PDO_PARAM_NULL ; 
 scalar_t__ PDO_PARAM_STMT ; 
 scalar_t__ PDO_PARAM_STR ; 
 scalar_t__ PDO_PARAM_STR_CHAR ; 
 scalar_t__ PDO_PARAM_STR_NATL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbh_compare ; 
 int /*<<< orphan*/  dbh_get_gc ; 
 int /*<<< orphan*/  dbh_method_get ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* pdo_dbh_ce ; 
 int /*<<< orphan*/  pdo_dbh_free_storage ; 
 int /*<<< orphan*/  pdo_dbh_functions ; 
 int /*<<< orphan*/  pdo_dbh_new ; 
 TYPE_2__ pdo_dbh_object_handlers ; 
 int /*<<< orphan*/  pdo_dbh_object_t ; 
 int /*<<< orphan*/  std ; 
 int /*<<< orphan*/  std_object_handlers ; 
 int /*<<< orphan*/  zend_class_serialize_deny ; 
 int /*<<< orphan*/  zend_class_unserialize_deny ; 
 int /*<<< orphan*/  zend_objects_destroy_object ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	zend_class_entry ce;

	FUNC0(ce, "PDO", pdo_dbh_functions);
	pdo_dbh_ce = FUNC5(&ce);
	pdo_dbh_ce->create_object = pdo_dbh_new;
	pdo_dbh_ce->serialize = zend_class_serialize_deny;
	pdo_dbh_ce->unserialize = zend_class_unserialize_deny;

	FUNC4(&pdo_dbh_object_handlers, &std_object_handlers, sizeof(zend_object_handlers));
	pdo_dbh_object_handlers.offset = FUNC3(pdo_dbh_object_t, std);
	pdo_dbh_object_handlers.dtor_obj = zend_objects_destroy_object;
	pdo_dbh_object_handlers.free_obj = pdo_dbh_free_storage;
	pdo_dbh_object_handlers.clone_obj = NULL;
	pdo_dbh_object_handlers.get_method = dbh_method_get;
	pdo_dbh_object_handlers.compare = dbh_compare;
	pdo_dbh_object_handlers.get_gc = dbh_get_gc;

	FUNC1("PARAM_BOOL", (zend_long)PDO_PARAM_BOOL);
	FUNC1("PARAM_NULL", (zend_long)PDO_PARAM_NULL);
	FUNC1("PARAM_INT",  (zend_long)PDO_PARAM_INT);
	FUNC1("PARAM_STR",  (zend_long)PDO_PARAM_STR);
	FUNC1("PARAM_LOB",  (zend_long)PDO_PARAM_LOB);
	FUNC1("PARAM_STMT", (zend_long)PDO_PARAM_STMT);
	FUNC1("PARAM_INPUT_OUTPUT", (zend_long)PDO_PARAM_INPUT_OUTPUT);
	FUNC1("PARAM_STR_NATL", (zend_long)PDO_PARAM_STR_NATL);
	FUNC1("PARAM_STR_CHAR", (zend_long)PDO_PARAM_STR_CHAR);


	FUNC1("PARAM_EVT_ALLOC",		(zend_long)PDO_PARAM_EVT_ALLOC);
	FUNC1("PARAM_EVT_FREE",			(zend_long)PDO_PARAM_EVT_FREE);
	FUNC1("PARAM_EVT_EXEC_PRE",		(zend_long)PDO_PARAM_EVT_EXEC_PRE);
	FUNC1("PARAM_EVT_EXEC_POST",	(zend_long)PDO_PARAM_EVT_EXEC_POST);
	FUNC1("PARAM_EVT_FETCH_PRE",	(zend_long)PDO_PARAM_EVT_FETCH_PRE);
	FUNC1("PARAM_EVT_FETCH_POST",	(zend_long)PDO_PARAM_EVT_FETCH_POST);
	FUNC1("PARAM_EVT_NORMALIZE",	(zend_long)PDO_PARAM_EVT_NORMALIZE);

	FUNC1("FETCH_LAZY", (zend_long)PDO_FETCH_LAZY);
	FUNC1("FETCH_ASSOC", (zend_long)PDO_FETCH_ASSOC);
	FUNC1("FETCH_NUM",  (zend_long)PDO_FETCH_NUM);
	FUNC1("FETCH_BOTH", (zend_long)PDO_FETCH_BOTH);
	FUNC1("FETCH_OBJ",  (zend_long)PDO_FETCH_OBJ);
	FUNC1("FETCH_BOUND", (zend_long)PDO_FETCH_BOUND);
	FUNC1("FETCH_COLUMN", (zend_long)PDO_FETCH_COLUMN);
	FUNC1("FETCH_CLASS", (zend_long)PDO_FETCH_CLASS);
	FUNC1("FETCH_INTO", (zend_long)PDO_FETCH_INTO);
	FUNC1("FETCH_FUNC", (zend_long)PDO_FETCH_FUNC);
	FUNC1("FETCH_GROUP", (zend_long)PDO_FETCH_GROUP);
	FUNC1("FETCH_UNIQUE", (zend_long)PDO_FETCH_UNIQUE);
	FUNC1("FETCH_KEY_PAIR", (zend_long)PDO_FETCH_KEY_PAIR);
	FUNC1("FETCH_CLASSTYPE", (zend_long)PDO_FETCH_CLASSTYPE);

	FUNC1("FETCH_SERIALIZE",(zend_long)PDO_FETCH_SERIALIZE);
	FUNC1("FETCH_PROPS_LATE", (zend_long)PDO_FETCH_PROPS_LATE);
	FUNC1("FETCH_NAMED", (zend_long)PDO_FETCH_NAMED);

	FUNC1("ATTR_AUTOCOMMIT",	(zend_long)PDO_ATTR_AUTOCOMMIT);
	FUNC1("ATTR_PREFETCH",		(zend_long)PDO_ATTR_PREFETCH);
	FUNC1("ATTR_TIMEOUT", 		(zend_long)PDO_ATTR_TIMEOUT);
	FUNC1("ATTR_ERRMODE", 		(zend_long)PDO_ATTR_ERRMODE);
	FUNC1("ATTR_SERVER_VERSION",	(zend_long)PDO_ATTR_SERVER_VERSION);
	FUNC1("ATTR_CLIENT_VERSION", 	(zend_long)PDO_ATTR_CLIENT_VERSION);
	FUNC1("ATTR_SERVER_INFO",		(zend_long)PDO_ATTR_SERVER_INFO);
	FUNC1("ATTR_CONNECTION_STATUS", 	(zend_long)PDO_ATTR_CONNECTION_STATUS);
	FUNC1("ATTR_CASE",		 	(zend_long)PDO_ATTR_CASE);
	FUNC1("ATTR_CURSOR_NAME", 	(zend_long)PDO_ATTR_CURSOR_NAME);
	FUNC1("ATTR_CURSOR",	 	(zend_long)PDO_ATTR_CURSOR);
	FUNC1("ATTR_ORACLE_NULLS",	(zend_long)PDO_ATTR_ORACLE_NULLS);
	FUNC1("ATTR_PERSISTENT",	(zend_long)PDO_ATTR_PERSISTENT);
	FUNC1("ATTR_STATEMENT_CLASS",		(zend_long)PDO_ATTR_STATEMENT_CLASS);
	FUNC1("ATTR_FETCH_TABLE_NAMES",		(zend_long)PDO_ATTR_FETCH_TABLE_NAMES);
	FUNC1("ATTR_FETCH_CATALOG_NAMES",		(zend_long)PDO_ATTR_FETCH_CATALOG_NAMES);
	FUNC1("ATTR_DRIVER_NAME",		(zend_long)PDO_ATTR_DRIVER_NAME);
	FUNC1("ATTR_STRINGIFY_FETCHES", (zend_long)PDO_ATTR_STRINGIFY_FETCHES);
	FUNC1("ATTR_MAX_COLUMN_LEN", (zend_long)PDO_ATTR_MAX_COLUMN_LEN);
	FUNC1("ATTR_EMULATE_PREPARES", (zend_long)PDO_ATTR_EMULATE_PREPARES);
	FUNC1("ATTR_DEFAULT_FETCH_MODE", (zend_long)PDO_ATTR_DEFAULT_FETCH_MODE);
	FUNC1("ATTR_DEFAULT_STR_PARAM", (zend_long)PDO_ATTR_DEFAULT_STR_PARAM);

	FUNC1("ERRMODE_SILENT",	(zend_long)PDO_ERRMODE_SILENT);
	FUNC1("ERRMODE_WARNING",	(zend_long)PDO_ERRMODE_WARNING);
	FUNC1("ERRMODE_EXCEPTION",	(zend_long)PDO_ERRMODE_EXCEPTION);

	FUNC1("CASE_NATURAL",	(zend_long)PDO_CASE_NATURAL);
	FUNC1("CASE_LOWER",	(zend_long)PDO_CASE_LOWER);
	FUNC1("CASE_UPPER",	(zend_long)PDO_CASE_UPPER);

	FUNC1("NULL_NATURAL",	(zend_long)PDO_NULL_NATURAL);
	FUNC1("NULL_EMPTY_STRING",	(zend_long)PDO_NULL_EMPTY_STRING);
	FUNC1("NULL_TO_STRING",	(zend_long)PDO_NULL_TO_STRING);

	FUNC2("ERR_NONE",	PDO_ERR_NONE);

	FUNC1("FETCH_ORI_NEXT", (zend_long)PDO_FETCH_ORI_NEXT);
	FUNC1("FETCH_ORI_PRIOR", (zend_long)PDO_FETCH_ORI_PRIOR);
	FUNC1("FETCH_ORI_FIRST", (zend_long)PDO_FETCH_ORI_FIRST);
	FUNC1("FETCH_ORI_LAST", (zend_long)PDO_FETCH_ORI_LAST);
	FUNC1("FETCH_ORI_ABS", (zend_long)PDO_FETCH_ORI_ABS);
	FUNC1("FETCH_ORI_REL", (zend_long)PDO_FETCH_ORI_REL);

	FUNC1("CURSOR_FWDONLY", (zend_long)PDO_CURSOR_FWDONLY);
	FUNC1("CURSOR_SCROLL", (zend_long)PDO_CURSOR_SCROLL);
}