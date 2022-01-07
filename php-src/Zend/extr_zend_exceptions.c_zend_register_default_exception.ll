; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_exceptions.c_zend_register_default_exception.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_exceptions.c_zend_register_default_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_18__ = type { i8* }

@throwable = common dso_local global i32 0, align 4
@Throwable = common dso_local global i32 0, align 4
@default_exception_handlers = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@std_object_handlers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@default_exception_functions = common dso_local global i32* null, align 8
@zend_ce_exception = common dso_local global %struct.TYPE_21__* null, align 8
@zend_default_exception_new = common dso_local global i8* null, align 8
@zend_ce_throwable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZEND_ACC_PROTECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ErrorException\00", align 1
@error_exception_functions = common dso_local global i32* null, align 8
@zend_ce_error_exception = common dso_local global %struct.TYPE_21__* null, align 8
@zend_error_exception_new = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"severity\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@zend_ce_error = common dso_local global %struct.TYPE_21__* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"CompileError\00", align 1
@zend_ce_compile_error = common dso_local global %struct.TYPE_21__* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"ParseError\00", align 1
@zend_ce_parse_error = common dso_local global %struct.TYPE_23__* null, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"TypeError\00", align 1
@zend_ce_type_error = common dso_local global %struct.TYPE_21__* null, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"ArgumentCountError\00", align 1
@zend_ce_argument_count_error = common dso_local global %struct.TYPE_19__* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"ValueError\00", align 1
@zend_ce_value_error = common dso_local global %struct.TYPE_22__* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@zend_ce_arithmetic_error = common dso_local global %struct.TYPE_21__* null, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"DivisionByZeroError\00", align 1
@zend_ce_division_by_zero_error = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_register_default_exception() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @throwable, align 4
  %3 = load i32, i32* @Throwable, align 4
  %4 = call i32 @REGISTER_MAGIC_INTERFACE(i32 %2, i32 %3)
  %5 = call i32 @memcpy(%struct.TYPE_20__* @default_exception_handlers, i32* @std_object_handlers, i32 4)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @default_exception_handlers, i32 0, i32 0), align 8
  %6 = load i32, i32* %1, align 4
  %7 = load i32*, i32** @default_exception_functions, align 8
  %8 = call i32 @INIT_CLASS_ENTRY(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7)
  %9 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* null)
  %10 = bitcast i8* %9 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** @zend_ce_exception, align 8
  %11 = load i8*, i8** @zend_default_exception_new, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %15 = load i32, i32* @zend_ce_throwable, align 4
  %16 = call i32 @zend_class_implements(%struct.TYPE_21__* %14, i32 1, i32 %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %18 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %19 = call i32 @zend_declare_property_string(%struct.TYPE_21__* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %21 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %22 = call i32 @zend_declare_property_string(%struct.TYPE_21__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %24 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %25 = call i32 @zend_declare_property_long(%struct.TYPE_21__* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 0, i32 %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %27 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %28 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %30 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %31 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4, i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %33 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %34 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5, i32 %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %36 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %37 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = load i32*, i32** @error_exception_functions, align 8
  %40 = call i32 @INIT_CLASS_ENTRY(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_exception, align 8
  %42 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %41)
  %43 = bitcast i8* %42 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** @zend_ce_error_exception, align 8
  %44 = load i8*, i8** @zend_error_exception_new, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error_exception, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error_exception, align 8
  %48 = load i32, i32* @E_ERROR, align 4
  %49 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %50 = call i32 @zend_declare_property_long(%struct.TYPE_21__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8, i32 %48, i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = load i32*, i32** @default_exception_functions, align 8
  %53 = call i32 @INIT_CLASS_ENTRY(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* %52)
  %54 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* null)
  %55 = bitcast i8* %54 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** @zend_ce_error, align 8
  %56 = load i8*, i8** @zend_default_exception_new, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %60 = load i32, i32* @zend_ce_throwable, align 4
  %61 = call i32 @zend_class_implements(%struct.TYPE_21__* %59, i32 1, i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %63 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %64 = call i32 @zend_declare_property_string(%struct.TYPE_21__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %66 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %67 = call i32 @zend_declare_property_string(%struct.TYPE_21__* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %69 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %70 = call i32 @zend_declare_property_long(%struct.TYPE_21__* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 0, i32 %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %72 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %73 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %75 = load i32, i32* @ZEND_ACC_PROTECTED, align 4
  %76 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4, i32 %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %78 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %79 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %81 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %82 = call i32 @zend_declare_property_null(%struct.TYPE_21__* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8, i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @INIT_CLASS_ENTRY(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* null)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %86 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %85)
  %87 = bitcast i8* %86 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %87, %struct.TYPE_21__** @zend_ce_compile_error, align 8
  %88 = load i8*, i8** @zend_default_exception_new, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_compile_error, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @INIT_CLASS_ENTRY(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_compile_error, align 8
  %94 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %93)
  %95 = bitcast i8* %94 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** @zend_ce_parse_error, align 8
  %96 = load i8*, i8** @zend_default_exception_new, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** @zend_ce_parse_error, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @INIT_CLASS_ENTRY(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* null)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %102 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %101)
  %103 = bitcast i8* %102 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** @zend_ce_type_error, align 8
  %104 = load i8*, i8** @zend_default_exception_new, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_type_error, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @INIT_CLASS_ENTRY(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_type_error, align 8
  %110 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %109)
  %111 = bitcast i8* %110 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %111, %struct.TYPE_19__** @zend_ce_argument_count_error, align 8
  %112 = load i8*, i8** @zend_default_exception_new, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** @zend_ce_argument_count_error, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @INIT_CLASS_ENTRY(i32 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32* null)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %118 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %117)
  %119 = bitcast i8* %118 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** @zend_ce_value_error, align 8
  %120 = load i8*, i8** @zend_default_exception_new, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** @zend_ce_value_error, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @INIT_CLASS_ENTRY(i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_error, align 8
  %126 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %125)
  %127 = bitcast i8* %126 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** @zend_ce_arithmetic_error, align 8
  %128 = load i8*, i8** @zend_default_exception_new, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_arithmetic_error, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @INIT_CLASS_ENTRY(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32* null)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** @zend_ce_arithmetic_error, align 8
  %134 = call i8* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_21__* %133)
  %135 = bitcast i8* %134 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** @zend_ce_division_by_zero_error, align 8
  %136 = load i8*, i8** @zend_default_exception_new, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** @zend_ce_division_by_zero_error, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  ret void
}

declare dso_local i32 @REGISTER_MAGIC_INTERFACE(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32*) #1

declare dso_local i8* @zend_register_internal_class_ex(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @zend_class_implements(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zend_declare_property_string(%struct.TYPE_21__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @zend_declare_property_long(%struct.TYPE_21__*, i8*, i32, i32, i32) #1

declare dso_local i32 @zend_declare_property_null(%struct.TYPE_21__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
