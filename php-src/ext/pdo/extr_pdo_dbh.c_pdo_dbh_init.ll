; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_dbh_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_dbh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"PDO\00", align 1
@pdo_dbh_functions = common dso_local global i32 0, align 4
@pdo_dbh_ce = common dso_local global %struct.TYPE_5__* null, align 8
@pdo_dbh_new = common dso_local global i32 0, align 4
@zend_class_serialize_deny = common dso_local global i32 0, align 4
@zend_class_unserialize_deny = common dso_local global i32 0, align 4
@pdo_dbh_object_handlers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@std_object_handlers = common dso_local global i32 0, align 4
@pdo_dbh_object_t = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@zend_objects_destroy_object = common dso_local global i32 0, align 4
@pdo_dbh_free_storage = common dso_local global i32 0, align 4
@dbh_method_get = common dso_local global i32 0, align 4
@dbh_compare = common dso_local global i32 0, align 4
@dbh_get_gc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"PARAM_BOOL\00", align 1
@PDO_PARAM_BOOL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"PARAM_NULL\00", align 1
@PDO_PARAM_NULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"PARAM_INT\00", align 1
@PDO_PARAM_INT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"PARAM_STR\00", align 1
@PDO_PARAM_STR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"PARAM_LOB\00", align 1
@PDO_PARAM_LOB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"PARAM_STMT\00", align 1
@PDO_PARAM_STMT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"PARAM_INPUT_OUTPUT\00", align 1
@PDO_PARAM_INPUT_OUTPUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"PARAM_STR_NATL\00", align 1
@PDO_PARAM_STR_NATL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"PARAM_STR_CHAR\00", align 1
@PDO_PARAM_STR_CHAR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"PARAM_EVT_ALLOC\00", align 1
@PDO_PARAM_EVT_ALLOC = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"PARAM_EVT_FREE\00", align 1
@PDO_PARAM_EVT_FREE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"PARAM_EVT_EXEC_PRE\00", align 1
@PDO_PARAM_EVT_EXEC_PRE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"PARAM_EVT_EXEC_POST\00", align 1
@PDO_PARAM_EVT_EXEC_POST = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"PARAM_EVT_FETCH_PRE\00", align 1
@PDO_PARAM_EVT_FETCH_PRE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"PARAM_EVT_FETCH_POST\00", align 1
@PDO_PARAM_EVT_FETCH_POST = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"PARAM_EVT_NORMALIZE\00", align 1
@PDO_PARAM_EVT_NORMALIZE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"FETCH_LAZY\00", align 1
@PDO_FETCH_LAZY = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"FETCH_ASSOC\00", align 1
@PDO_FETCH_ASSOC = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"FETCH_NUM\00", align 1
@PDO_FETCH_NUM = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"FETCH_BOTH\00", align 1
@PDO_FETCH_BOTH = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"FETCH_OBJ\00", align 1
@PDO_FETCH_OBJ = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"FETCH_BOUND\00", align 1
@PDO_FETCH_BOUND = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c"FETCH_COLUMN\00", align 1
@PDO_FETCH_COLUMN = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"FETCH_CLASS\00", align 1
@PDO_FETCH_CLASS = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"FETCH_INTO\00", align 1
@PDO_FETCH_INTO = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"FETCH_FUNC\00", align 1
@PDO_FETCH_FUNC = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [12 x i8] c"FETCH_GROUP\00", align 1
@PDO_FETCH_GROUP = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"FETCH_UNIQUE\00", align 1
@PDO_FETCH_UNIQUE = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [15 x i8] c"FETCH_KEY_PAIR\00", align 1
@PDO_FETCH_KEY_PAIR = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"FETCH_CLASSTYPE\00", align 1
@PDO_FETCH_CLASSTYPE = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"FETCH_SERIALIZE\00", align 1
@PDO_FETCH_SERIALIZE = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [17 x i8] c"FETCH_PROPS_LATE\00", align 1
@PDO_FETCH_PROPS_LATE = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"FETCH_NAMED\00", align 1
@PDO_FETCH_NAMED = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [16 x i8] c"ATTR_AUTOCOMMIT\00", align 1
@PDO_ATTR_AUTOCOMMIT = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"ATTR_PREFETCH\00", align 1
@PDO_ATTR_PREFETCH = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"ATTR_TIMEOUT\00", align 1
@PDO_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [13 x i8] c"ATTR_ERRMODE\00", align 1
@PDO_ATTR_ERRMODE = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [20 x i8] c"ATTR_SERVER_VERSION\00", align 1
@PDO_ATTR_SERVER_VERSION = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [20 x i8] c"ATTR_CLIENT_VERSION\00", align 1
@PDO_ATTR_CLIENT_VERSION = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [17 x i8] c"ATTR_SERVER_INFO\00", align 1
@PDO_ATTR_SERVER_INFO = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [23 x i8] c"ATTR_CONNECTION_STATUS\00", align 1
@PDO_ATTR_CONNECTION_STATUS = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"ATTR_CASE\00", align 1
@PDO_ATTR_CASE = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [17 x i8] c"ATTR_CURSOR_NAME\00", align 1
@PDO_ATTR_CURSOR_NAME = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [12 x i8] c"ATTR_CURSOR\00", align 1
@PDO_ATTR_CURSOR = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [18 x i8] c"ATTR_ORACLE_NULLS\00", align 1
@PDO_ATTR_ORACLE_NULLS = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [16 x i8] c"ATTR_PERSISTENT\00", align 1
@PDO_ATTR_PERSISTENT = common dso_local global i64 0, align 8
@.str.47 = private unnamed_addr constant [21 x i8] c"ATTR_STATEMENT_CLASS\00", align 1
@PDO_ATTR_STATEMENT_CLASS = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [23 x i8] c"ATTR_FETCH_TABLE_NAMES\00", align 1
@PDO_ATTR_FETCH_TABLE_NAMES = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [25 x i8] c"ATTR_FETCH_CATALOG_NAMES\00", align 1
@PDO_ATTR_FETCH_CATALOG_NAMES = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"ATTR_DRIVER_NAME\00", align 1
@PDO_ATTR_DRIVER_NAME = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [23 x i8] c"ATTR_STRINGIFY_FETCHES\00", align 1
@PDO_ATTR_STRINGIFY_FETCHES = common dso_local global i64 0, align 8
@.str.52 = private unnamed_addr constant [20 x i8] c"ATTR_MAX_COLUMN_LEN\00", align 1
@PDO_ATTR_MAX_COLUMN_LEN = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [22 x i8] c"ATTR_EMULATE_PREPARES\00", align 1
@PDO_ATTR_EMULATE_PREPARES = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [24 x i8] c"ATTR_DEFAULT_FETCH_MODE\00", align 1
@PDO_ATTR_DEFAULT_FETCH_MODE = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [23 x i8] c"ATTR_DEFAULT_STR_PARAM\00", align 1
@PDO_ATTR_DEFAULT_STR_PARAM = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [15 x i8] c"ERRMODE_SILENT\00", align 1
@PDO_ERRMODE_SILENT = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [16 x i8] c"ERRMODE_WARNING\00", align 1
@PDO_ERRMODE_WARNING = common dso_local global i64 0, align 8
@.str.58 = private unnamed_addr constant [18 x i8] c"ERRMODE_EXCEPTION\00", align 1
@PDO_ERRMODE_EXCEPTION = common dso_local global i64 0, align 8
@.str.59 = private unnamed_addr constant [13 x i8] c"CASE_NATURAL\00", align 1
@PDO_CASE_NATURAL = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [11 x i8] c"CASE_LOWER\00", align 1
@PDO_CASE_LOWER = common dso_local global i64 0, align 8
@.str.61 = private unnamed_addr constant [11 x i8] c"CASE_UPPER\00", align 1
@PDO_CASE_UPPER = common dso_local global i64 0, align 8
@.str.62 = private unnamed_addr constant [13 x i8] c"NULL_NATURAL\00", align 1
@PDO_NULL_NATURAL = common dso_local global i64 0, align 8
@.str.63 = private unnamed_addr constant [18 x i8] c"NULL_EMPTY_STRING\00", align 1
@PDO_NULL_EMPTY_STRING = common dso_local global i64 0, align 8
@.str.64 = private unnamed_addr constant [15 x i8] c"NULL_TO_STRING\00", align 1
@PDO_NULL_TO_STRING = common dso_local global i64 0, align 8
@.str.65 = private unnamed_addr constant [9 x i8] c"ERR_NONE\00", align 1
@PDO_ERR_NONE = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [15 x i8] c"FETCH_ORI_NEXT\00", align 1
@PDO_FETCH_ORI_NEXT = common dso_local global i64 0, align 8
@.str.67 = private unnamed_addr constant [16 x i8] c"FETCH_ORI_PRIOR\00", align 1
@PDO_FETCH_ORI_PRIOR = common dso_local global i64 0, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"FETCH_ORI_FIRST\00", align 1
@PDO_FETCH_ORI_FIRST = common dso_local global i64 0, align 8
@.str.69 = private unnamed_addr constant [15 x i8] c"FETCH_ORI_LAST\00", align 1
@PDO_FETCH_ORI_LAST = common dso_local global i64 0, align 8
@.str.70 = private unnamed_addr constant [14 x i8] c"FETCH_ORI_ABS\00", align 1
@PDO_FETCH_ORI_ABS = common dso_local global i64 0, align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"FETCH_ORI_REL\00", align 1
@PDO_FETCH_ORI_REL = common dso_local global i64 0, align 8
@.str.72 = private unnamed_addr constant [15 x i8] c"CURSOR_FWDONLY\00", align 1
@PDO_CURSOR_FWDONLY = common dso_local global i64 0, align 8
@.str.73 = private unnamed_addr constant [14 x i8] c"CURSOR_SCROLL\00", align 1
@PDO_CURSOR_SCROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdo_dbh_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @pdo_dbh_functions, align 4
  %4 = call i32 @INIT_CLASS_ENTRY(i32 %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call %struct.TYPE_5__* @zend_register_internal_class(i32* %1)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @pdo_dbh_ce, align 8
  %6 = load i32, i32* @pdo_dbh_new, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdo_dbh_ce, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @zend_class_serialize_deny, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdo_dbh_ce, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @zend_class_unserialize_deny, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdo_dbh_ce, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call i32 @memcpy(%struct.TYPE_6__* @pdo_dbh_object_handlers, i32* @std_object_handlers, i32 4)
  %16 = load i32, i32* @pdo_dbh_object_t, align 4
  %17 = load i32, i32* @std, align 4
  %18 = call i32 @XtOffsetOf(i32 %16, i32 %17)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 6), align 8
  %19 = load i32, i32* @zend_objects_destroy_object, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 5), align 4
  %20 = load i32, i32* @pdo_dbh_free_storage, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 3), align 8
  %21 = load i32, i32* @dbh_method_get, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 2), align 8
  %22 = load i32, i32* @dbh_compare, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 1), align 4
  %23 = load i32, i32* @dbh_get_gc, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pdo_dbh_object_handlers, i32 0, i32 0), align 8
  %24 = load i64, i64* @PDO_PARAM_BOOL, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @PDO_PARAM_NULL, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @PDO_PARAM_INT, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* @PDO_PARAM_STR, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @PDO_PARAM_LOB, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @PDO_PARAM_STMT, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* @PDO_PARAM_INPUT_OUTPUT, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @PDO_PARAM_STR_NATL, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @PDO_PARAM_STR_CHAR, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @PDO_PARAM_EVT_ALLOC, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* @PDO_PARAM_EVT_FREE, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @PDO_PARAM_EVT_EXEC_PRE, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* @PDO_PARAM_EVT_EXEC_POST, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @PDO_PARAM_EVT_FETCH_PRE, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @PDO_PARAM_EVT_FETCH_POST, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* @PDO_PARAM_EVT_NORMALIZE, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* @PDO_FETCH_LAZY, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* @PDO_FETCH_ASSOC, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %76)
  %78 = load i64, i64* @PDO_FETCH_NUM, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* @PDO_FETCH_BOTH, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* @PDO_FETCH_OBJ, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* @PDO_FETCH_BOUND, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* @PDO_FETCH_COLUMN, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %91)
  %93 = load i64, i64* @PDO_FETCH_CLASS, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %94)
  %96 = load i64, i64* @PDO_FETCH_INTO, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* @PDO_FETCH_FUNC, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %100)
  %102 = load i64, i64* @PDO_FETCH_GROUP, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* @PDO_FETCH_UNIQUE, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* @PDO_FETCH_KEY_PAIR, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* @PDO_FETCH_CLASSTYPE, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* @PDO_FETCH_SERIALIZE, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* @PDO_FETCH_PROPS_LATE, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %118)
  %120 = load i64, i64* @PDO_FETCH_NAMED, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 %121)
  %123 = load i64, i64* @PDO_ATTR_AUTOCOMMIT, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %124)
  %126 = load i64, i64* @PDO_ATTR_PREFETCH, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 %127)
  %129 = load i64, i64* @PDO_ATTR_TIMEOUT, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i32 %130)
  %132 = load i64, i64* @PDO_ATTR_ERRMODE, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %133)
  %135 = load i64, i64* @PDO_ATTR_SERVER_VERSION, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i32 %136)
  %138 = load i64, i64* @PDO_ATTR_CLIENT_VERSION, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @PDO_ATTR_SERVER_INFO, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i32 %142)
  %144 = load i64, i64* @PDO_ATTR_CONNECTION_STATUS, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* @PDO_ATTR_CASE, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i32 %148)
  %150 = load i64, i64* @PDO_ATTR_CURSOR_NAME, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i32 %151)
  %153 = load i64, i64* @PDO_ATTR_CURSOR, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 %154)
  %156 = load i64, i64* @PDO_ATTR_ORACLE_NULLS, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i32 %157)
  %159 = load i64, i64* @PDO_ATTR_PERSISTENT, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i32 %160)
  %162 = load i64, i64* @PDO_ATTR_STATEMENT_CLASS, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 %163)
  %165 = load i64, i64* @PDO_ATTR_FETCH_TABLE_NAMES, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 %166)
  %168 = load i64, i64* @PDO_ATTR_FETCH_CATALOG_NAMES, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i32 %169)
  %171 = load i64, i64* @PDO_ATTR_DRIVER_NAME, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i32 %172)
  %174 = load i64, i64* @PDO_ATTR_STRINGIFY_FETCHES, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i32 %175)
  %177 = load i64, i64* @PDO_ATTR_MAX_COLUMN_LEN, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 %178)
  %180 = load i64, i64* @PDO_ATTR_EMULATE_PREPARES, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* @PDO_ATTR_DEFAULT_FETCH_MODE, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), i32 %184)
  %186 = load i64, i64* @PDO_ATTR_DEFAULT_STR_PARAM, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i32 %187)
  %189 = load i64, i64* @PDO_ERRMODE_SILENT, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i32 %190)
  %192 = load i64, i64* @PDO_ERRMODE_WARNING, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i32 %193)
  %195 = load i64, i64* @PDO_ERRMODE_EXCEPTION, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0), i32 %196)
  %198 = load i64, i64* @PDO_CASE_NATURAL, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i32 %199)
  %201 = load i64, i64* @PDO_CASE_LOWER, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i32 %202)
  %204 = load i64, i64* @PDO_CASE_UPPER, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i32 %205)
  %207 = load i64, i64* @PDO_NULL_NATURAL, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i32 %208)
  %210 = load i64, i64* @PDO_NULL_EMPTY_STRING, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i32 %211)
  %213 = load i64, i64* @PDO_NULL_TO_STRING, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @PDO_ERR_NONE, align 4
  %217 = call i32 @REGISTER_PDO_CLASS_CONST_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i32 %216)
  %218 = load i64, i64* @PDO_FETCH_ORI_NEXT, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i32 %219)
  %221 = load i64, i64* @PDO_FETCH_ORI_PRIOR, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 %222)
  %224 = load i64, i64* @PDO_FETCH_ORI_FIRST, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i64 0, i64 0), i32 %225)
  %227 = load i64, i64* @PDO_FETCH_ORI_LAST, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 %228)
  %230 = load i64, i64* @PDO_FETCH_ORI_ABS, align 8
  %231 = trunc i64 %230 to i32
  %232 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0), i32 %231)
  %233 = load i64, i64* @PDO_FETCH_ORI_REL, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0), i32 %234)
  %236 = load i64, i64* @PDO_CURSOR_FWDONLY, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 %237)
  %239 = load i64, i64* @PDO_CURSOR_SCROLL, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @REGISTER_PDO_CLASS_CONST_LONG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0), i32 %240)
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @zend_register_internal_class(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @XtOffsetOf(i32, i32) #1

declare dso_local i32 @REGISTER_PDO_CLASS_CONST_LONG(i8*, i32) #1

declare dso_local i32 @REGISTER_PDO_CLASS_CONST_STRING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
