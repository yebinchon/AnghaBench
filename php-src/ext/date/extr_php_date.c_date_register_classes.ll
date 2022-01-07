; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_register_classes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_date_register_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i32, i8* }
%struct.TYPE_19__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"DateTimeInterface\00", align 1
@date_funcs_interface = common dso_local global i32 0, align 4
@date_ce_interface = common dso_local global %struct.TYPE_20__* null, align 8
@implement_date_interface_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@DATE_FORMAT_RFC3339 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"COOKIE\00", align 1
@DATE_FORMAT_COOKIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ISO8601\00", align 1
@DATE_FORMAT_ISO8601 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"RFC822\00", align 1
@DATE_FORMAT_RFC822 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"RFC850\00", align 1
@DATE_FORMAT_RFC850 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"RFC1036\00", align 1
@DATE_FORMAT_RFC1036 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"RFC1123\00", align 1
@DATE_FORMAT_RFC1123 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"RFC7231\00", align 1
@DATE_FORMAT_RFC7231 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"RFC2822\00", align 1
@DATE_FORMAT_RFC2822 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"RFC3339\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"RFC3339_EXTENDED\00", align 1
@DATE_FORMAT_RFC3339_EXTENDED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"RSS\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"W3C\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@date_funcs_date = common dso_local global i32 0, align 4
@date_object_new_date = common dso_local global i8* null, align 8
@date_ce_date = common dso_local global %struct.TYPE_21__* null, align 8
@date_object_handlers_date = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@std_object_handlers = common dso_local global i32 0, align 4
@php_date_obj = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@date_object_free_storage_date = common dso_local global i32 0, align 4
@date_object_clone_date = common dso_local global i8* null, align 8
@date_object_compare_date = common dso_local global i8* null, align 8
@date_object_get_properties_for = common dso_local global i8* null, align 8
@date_object_get_gc = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"DateTimeImmutable\00", align 1
@date_funcs_immutable = common dso_local global i32 0, align 4
@date_ce_immutable = common dso_local global %struct.TYPE_21__* null, align 8
@date_object_handlers_immutable = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"DateTimeZone\00", align 1
@date_funcs_timezone = common dso_local global i32 0, align 4
@date_object_new_timezone = common dso_local global i8* null, align 8
@date_ce_timezone = common dso_local global i8* null, align 8
@date_object_handlers_timezone = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@php_timezone_obj = common dso_local global i32 0, align 4
@date_object_free_storage_timezone = common dso_local global i32 0, align 4
@date_object_clone_timezone = common dso_local global i8* null, align 8
@date_object_get_properties_for_timezone = common dso_local global i8* null, align 8
@date_object_get_gc_timezone = common dso_local global i8* null, align 8
@date_object_get_debug_info_timezone = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"AFRICA\00", align 1
@PHP_DATE_TIMEZONE_GROUP_AFRICA = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"AMERICA\00", align 1
@PHP_DATE_TIMEZONE_GROUP_AMERICA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"ANTARCTICA\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ANTARCTICA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"ARCTIC\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ARCTIC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"ASIA\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ASIA = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"ATLANTIC\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ATLANTIC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"AUSTRALIA\00", align 1
@PHP_DATE_TIMEZONE_GROUP_AUSTRALIA = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"EUROPE\00", align 1
@PHP_DATE_TIMEZONE_GROUP_EUROPE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"INDIAN\00", align 1
@PHP_DATE_TIMEZONE_GROUP_INDIAN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"PACIFIC\00", align 1
@PHP_DATE_TIMEZONE_GROUP_PACIFIC = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@PHP_DATE_TIMEZONE_GROUP_UTC = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ALL = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"ALL_WITH_BC\00", align 1
@PHP_DATE_TIMEZONE_GROUP_ALL_W_BC = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"PER_COUNTRY\00", align 1
@PHP_DATE_TIMEZONE_PER_COUNTRY = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"DateInterval\00", align 1
@date_funcs_interval = common dso_local global i32 0, align 4
@date_object_new_interval = common dso_local global i8* null, align 8
@date_ce_interval = common dso_local global i8* null, align 8
@date_object_handlers_interval = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@php_interval_obj = common dso_local global i32 0, align 4
@date_object_free_storage_interval = common dso_local global i32 0, align 4
@date_object_clone_interval = common dso_local global i8* null, align 8
@date_interval_has_property = common dso_local global i32 0, align 4
@date_interval_read_property = common dso_local global i32 0, align 4
@date_interval_write_property = common dso_local global i32 0, align 4
@date_object_get_properties_interval = common dso_local global i32 0, align 4
@date_interval_get_property_ptr_ptr = common dso_local global i32 0, align 4
@date_object_get_gc_interval = common dso_local global i8* null, align 8
@date_interval_compare_objects = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [11 x i8] c"DatePeriod\00", align 1
@date_funcs_period = common dso_local global i32 0, align 4
@date_object_new_period = common dso_local global i8* null, align 8
@date_ce_period = common dso_local global %struct.TYPE_21__* null, align 8
@date_object_period_get_iterator = common dso_local global i32 0, align 4
@zend_ce_traversable = common dso_local global %struct.TYPE_20__* null, align 8
@date_object_handlers_period = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@php_period_obj = common dso_local global i32 0, align 4
@date_object_free_storage_period = common dso_local global i32 0, align 4
@date_object_clone_period = common dso_local global i8* null, align 8
@date_object_get_properties_period = common dso_local global i32 0, align 4
@date_period_get_property_ptr_ptr = common dso_local global i32 0, align 4
@date_object_get_gc_period = common dso_local global i8* null, align 8
@date_period_read_property = common dso_local global i32 0, align 4
@date_period_write_property = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [19 x i8] c"EXCLUDE_START_DATE\00", align 1
@PHP_DATE_PERIOD_EXCLUDE_START_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @date_register_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @date_register_classes() #0 {
  %1 = alloca %struct.TYPE_19__, align 8
  %2 = alloca %struct.TYPE_19__, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = load i32, i32* @date_funcs_interface, align 4
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @INIT_CLASS_ENTRY(i8* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %11 = call %struct.TYPE_20__* @zend_register_internal_interface(%struct.TYPE_19__* %6)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** @date_ce_interface, align 8
  %12 = load i32, i32* @implement_date_interface_handler, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %16 = load i32, i32* @DATE_FORMAT_RFC3339, align 4
  %17 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4, i32 %16, i64 3)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %19 = load i32, i32* @DATE_FORMAT_COOKIE, align 4
  %20 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6, i32 %19, i64 3)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %22 = load i32, i32* @DATE_FORMAT_ISO8601, align 4
  %23 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 7, i32 %22, i64 3)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %25 = load i32, i32* @DATE_FORMAT_RFC822, align 4
  %26 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6, i32 %25, i64 3)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %28 = load i32, i32* @DATE_FORMAT_RFC850, align 4
  %29 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 6, i32 %28, i64 3)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %31 = load i32, i32* @DATE_FORMAT_RFC1036, align 4
  %32 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7, i32 %31, i64 3)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %34 = load i32, i32* @DATE_FORMAT_RFC1123, align 4
  %35 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 7, i32 %34, i64 3)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %37 = load i32, i32* @DATE_FORMAT_RFC7231, align 4
  %38 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 7, i32 %37, i64 3)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %40 = load i32, i32* @DATE_FORMAT_RFC2822, align 4
  %41 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 7, i32 %40, i64 3)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %43 = load i32, i32* @DATE_FORMAT_RFC3339, align 4
  %44 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 7, i32 %43, i64 3)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %46 = load i32, i32* @DATE_FORMAT_RFC3339_EXTENDED, align 4
  %47 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 16, i32 %46, i64 3)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %49 = load i32, i32* @DATE_FORMAT_RFC1123, align 4
  %50 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3, i32 %49, i64 3)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %52 = load i32, i32* @DATE_FORMAT_RFC3339, align 4
  %53 = call i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...) bitcast (i32 (...)* @zend_declare_class_constant_stringl to i32 (%struct.TYPE_20__*, i8*, i64, i32, i64, ...)*)(%struct.TYPE_20__* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3, i32 %52, i64 3)
  %54 = load i32, i32* @date_funcs_date, align 4
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @INIT_CLASS_ENTRY(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %54)
  %58 = load i8*, i8** @date_object_new_date, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = call i8* @zend_register_internal_class_ex(%struct.TYPE_19__* %1, i32* null)
  %61 = bitcast i8* %60 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** @date_ce_date, align 8
  %62 = call i32 @memcpy(%struct.TYPE_22__* @date_object_handlers_date, i32* @std_object_handlers, i32 4)
  %63 = load i32, i32* @php_date_obj, align 4
  %64 = load i32, i32* @std, align 4
  %65 = call i8* @XtOffsetOf(i32 %63, i32 %64)
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 7), align 8
  %66 = load i32, i32* @date_object_free_storage_date, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 6), align 8
  %67 = load i8*, i8** @date_object_clone_date, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 5), align 8
  %68 = load i8*, i8** @date_object_compare_date, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 8), align 8
  %69 = load i8*, i8** @date_object_get_properties_for, align 8
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 11), align 8
  %70 = load i8*, i8** @date_object_get_gc, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_date, i32 0, i32 2), align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** @date_ce_date, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %73 = call i32 @zend_class_implements(%struct.TYPE_21__* %71, i32 1, %struct.TYPE_20__* %72)
  %74 = load i32, i32* @date_funcs_immutable, align 4
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @INIT_CLASS_ENTRY(i8* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %74)
  %78 = load i8*, i8** @date_object_new_date, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = call i8* @zend_register_internal_class_ex(%struct.TYPE_19__* %2, i32* null)
  %81 = bitcast i8* %80 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** @date_ce_immutable, align 8
  %82 = call i32 @memcpy(%struct.TYPE_22__* @date_object_handlers_immutable, i32* @std_object_handlers, i32 4)
  %83 = load i8*, i8** @date_object_clone_date, align 8
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_immutable, i32 0, i32 5), align 8
  %84 = load i8*, i8** @date_object_compare_date, align 8
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_immutable, i32 0, i32 8), align 8
  %85 = load i8*, i8** @date_object_get_properties_for, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_immutable, i32 0, i32 11), align 8
  %86 = load i8*, i8** @date_object_get_gc, align 8
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_immutable, i32 0, i32 2), align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** @date_ce_immutable, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** @date_ce_interface, align 8
  %89 = call i32 @zend_class_implements(%struct.TYPE_21__* %87, i32 1, %struct.TYPE_20__* %88)
  %90 = load i32, i32* @date_funcs_timezone, align 4
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @INIT_CLASS_ENTRY(i8* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %90)
  %94 = load i8*, i8** @date_object_new_timezone, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = call i8* @zend_register_internal_class_ex(%struct.TYPE_19__* %3, i32* null)
  store i8* %96, i8** @date_ce_timezone, align 8
  %97 = call i32 @memcpy(%struct.TYPE_22__* @date_object_handlers_timezone, i32* @std_object_handlers, i32 4)
  %98 = load i32, i32* @php_timezone_obj, align 4
  %99 = load i32, i32* @std, align 4
  %100 = call i8* @XtOffsetOf(i32 %98, i32 %99)
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 7), align 8
  %101 = load i32, i32* @date_object_free_storage_timezone, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 6), align 8
  %102 = load i8*, i8** @date_object_clone_timezone, align 8
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 5), align 8
  %103 = load i8*, i8** @date_object_get_properties_for_timezone, align 8
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 11), align 8
  %104 = load i8*, i8** @date_object_get_gc_timezone, align 8
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 2), align 8
  %105 = load i32, i32* @date_object_get_debug_info_timezone, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_timezone, i32 0, i32 10), align 4
  %106 = load i8*, i8** @date_ce_timezone, align 8
  %107 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_AFRICA, align 4
  %108 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6, i32 %107)
  %109 = load i8*, i8** @date_ce_timezone, align 8
  %110 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_AMERICA, align 4
  %111 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 7, i32 %110)
  %112 = load i8*, i8** @date_ce_timezone, align 8
  %113 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ANTARCTICA, align 4
  %114 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 10, i32 %113)
  %115 = load i8*, i8** @date_ce_timezone, align 8
  %116 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ARCTIC, align 4
  %117 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 6, i32 %116)
  %118 = load i8*, i8** @date_ce_timezone, align 8
  %119 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ASIA, align 4
  %120 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 4, i32 %119)
  %121 = load i8*, i8** @date_ce_timezone, align 8
  %122 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ATLANTIC, align 4
  %123 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i64 8, i32 %122)
  %124 = load i8*, i8** @date_ce_timezone, align 8
  %125 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_AUSTRALIA, align 4
  %126 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i64 9, i32 %125)
  %127 = load i8*, i8** @date_ce_timezone, align 8
  %128 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_EUROPE, align 4
  %129 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i64 6, i32 %128)
  %130 = load i8*, i8** @date_ce_timezone, align 8
  %131 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_INDIAN, align 4
  %132 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 6, i32 %131)
  %133 = load i8*, i8** @date_ce_timezone, align 8
  %134 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_PACIFIC, align 4
  %135 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i64 7, i32 %134)
  %136 = load i8*, i8** @date_ce_timezone, align 8
  %137 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_UTC, align 4
  %138 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3, i32 %137)
  %139 = load i8*, i8** @date_ce_timezone, align 8
  %140 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ALL, align 4
  %141 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3, i32 %140)
  %142 = load i8*, i8** @date_ce_timezone, align 8
  %143 = load i32, i32* @PHP_DATE_TIMEZONE_GROUP_ALL_W_BC, align 4
  %144 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i64 11, i32 %143)
  %145 = load i8*, i8** @date_ce_timezone, align 8
  %146 = load i32, i32* @PHP_DATE_TIMEZONE_PER_COUNTRY, align 4
  %147 = call i32 (i8*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (i8*, i8*, i64, i32, ...)*)(i8* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i64 11, i32 %146)
  %148 = load i32, i32* @date_funcs_interval, align 4
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @INIT_CLASS_ENTRY(i8* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 %148)
  %152 = load i8*, i8** @date_object_new_interval, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  store i8* %152, i8** %153, align 8
  %154 = call i8* @zend_register_internal_class_ex(%struct.TYPE_19__* %4, i32* null)
  store i8* %154, i8** @date_ce_interval, align 8
  %155 = call i32 @memcpy(%struct.TYPE_22__* @date_object_handlers_interval, i32* @std_object_handlers, i32 4)
  %156 = load i32, i32* @php_interval_obj, align 4
  %157 = load i32, i32* @std, align 4
  %158 = call i8* @XtOffsetOf(i32 %156, i32 %157)
  store i8* %158, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 7), align 8
  %159 = load i32, i32* @date_object_free_storage_interval, align 4
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 6), align 8
  %160 = load i8*, i8** @date_object_clone_interval, align 8
  store i8* %160, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 5), align 8
  %161 = load i32, i32* @date_interval_has_property, align 4
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 9), align 8
  %162 = load i32, i32* @date_interval_read_property, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 1), align 4
  %163 = load i32, i32* @date_interval_write_property, align 4
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 0), align 8
  %164 = load i32, i32* @date_object_get_properties_interval, align 4
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 4), align 4
  %165 = load i32, i32* @date_interval_get_property_ptr_ptr, align 4
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 3), align 8
  %166 = load i8*, i8** @date_object_get_gc_interval, align 8
  store i8* %166, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 2), align 8
  %167 = load i8*, i8** @date_interval_compare_objects, align 8
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_interval, i32 0, i32 8), align 8
  %168 = load i32, i32* @date_funcs_period, align 4
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @INIT_CLASS_ENTRY(i8* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %168)
  %172 = load i8*, i8** @date_object_new_period, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i8* %172, i8** %173, align 8
  %174 = call i8* @zend_register_internal_class_ex(%struct.TYPE_19__* %5, i32* null)
  %175 = bitcast i8* %174 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %175, %struct.TYPE_21__** @date_ce_period, align 8
  %176 = load i32, i32* @date_object_period_get_iterator, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** @date_ce_period, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** @date_ce_period, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** @zend_ce_traversable, align 8
  %181 = call i32 @zend_class_implements(%struct.TYPE_21__* %179, i32 1, %struct.TYPE_20__* %180)
  %182 = call i32 @memcpy(%struct.TYPE_22__* @date_object_handlers_period, i32* @std_object_handlers, i32 4)
  %183 = load i32, i32* @php_period_obj, align 4
  %184 = load i32, i32* @std, align 4
  %185 = call i8* @XtOffsetOf(i32 %183, i32 %184)
  store i8* %185, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 7), align 8
  %186 = load i32, i32* @date_object_free_storage_period, align 4
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 6), align 8
  %187 = load i8*, i8** @date_object_clone_period, align 8
  store i8* %187, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 5), align 8
  %188 = load i32, i32* @date_object_get_properties_period, align 4
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 4), align 4
  %189 = load i32, i32* @date_period_get_property_ptr_ptr, align 4
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 3), align 8
  %190 = load i8*, i8** @date_object_get_gc_period, align 8
  store i8* %190, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 2), align 8
  %191 = load i32, i32* @date_period_read_property, align 4
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 1), align 4
  %192 = load i32, i32* @date_period_write_property, align 4
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @date_object_handlers_period, i32 0, i32 0), align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** @date_ce_period, align 8
  %194 = load i32, i32* @PHP_DATE_PERIOD_EXCLUDE_START_DATE, align 4
  %195 = call i32 (%struct.TYPE_21__*, i8*, i64, i32, ...) bitcast (i32 (...)* @zend_declare_class_constant_long to i32 (%struct.TYPE_21__*, i8*, i64, i32, ...)*)(%struct.TYPE_21__* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i64 18, i32 %194)
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @zend_register_internal_interface(%struct.TYPE_19__*) #1

declare dso_local i32 @zend_declare_class_constant_stringl(...) #1

declare dso_local i8* @zend_register_internal_class_ex(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i8* @XtOffsetOf(i32, i32) #1

declare dso_local i32 @zend_class_implements(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @zend_declare_class_constant_long(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
