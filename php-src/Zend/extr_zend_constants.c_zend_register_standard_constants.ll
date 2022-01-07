; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_constants.c_zend_register_standard_constants.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_constants.c_zend_register_standard_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"E_ERROR\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@CONST_PERSISTENT = common dso_local global i32 0, align 4
@CONST_CS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"E_RECOVERABLE_ERROR\00", align 1
@E_RECOVERABLE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"E_WARNING\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"E_PARSE\00", align 1
@E_PARSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"E_NOTICE\00", align 1
@E_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"E_STRICT\00", align 1
@E_STRICT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"E_DEPRECATED\00", align 1
@E_DEPRECATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"E_CORE_ERROR\00", align 1
@E_CORE_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"E_CORE_WARNING\00", align 1
@E_CORE_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"E_COMPILE_ERROR\00", align 1
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"E_COMPILE_WARNING\00", align 1
@E_COMPILE_WARNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"E_USER_ERROR\00", align 1
@E_USER_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"E_USER_WARNING\00", align 1
@E_USER_WARNING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"E_USER_NOTICE\00", align 1
@E_USER_NOTICE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"E_USER_DEPRECATED\00", align 1
@E_USER_DEPRECATED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"E_ALL\00", align 1
@E_ALL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"DEBUG_BACKTRACE_PROVIDE_OBJECT\00", align 1
@DEBUG_BACKTRACE_PROVIDE_OBJECT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"DEBUG_BACKTRACE_IGNORE_ARGS\00", align 1
@DEBUG_BACKTRACE_IGNORE_ARGS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"ZEND_THREAD_SAFE\00", align 1
@ZTS_V = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"ZEND_DEBUG_BUILD\00", align 1
@ZEND_DEBUG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@null_value = common dso_local global i32 0, align 4
@true_value = common dso_local global i32 0, align 4
@false_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_register_standard_constants() #0 {
  %1 = load i32, i32* @E_ERROR, align 4
  %2 = load i32, i32* @CONST_PERSISTENT, align 4
  %3 = load i32, i32* @CONST_CS, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %4)
  %6 = load i32, i32* @E_RECOVERABLE_ERROR, align 4
  %7 = load i32, i32* @CONST_PERSISTENT, align 4
  %8 = load i32, i32* @CONST_CS, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load i32, i32* @E_WARNING, align 4
  %12 = load i32, i32* @CONST_PERSISTENT, align 4
  %13 = load i32, i32* @CONST_CS, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load i32, i32* @E_PARSE, align 4
  %17 = load i32, i32* @CONST_PERSISTENT, align 4
  %18 = load i32, i32* @CONST_CS, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @E_NOTICE, align 4
  %22 = load i32, i32* @CONST_PERSISTENT, align 4
  %23 = load i32, i32* @CONST_CS, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* @E_STRICT, align 4
  %27 = load i32, i32* @CONST_PERSISTENT, align 4
  %28 = load i32, i32* @CONST_CS, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* @E_DEPRECATED, align 4
  %32 = load i32, i32* @CONST_PERSISTENT, align 4
  %33 = load i32, i32* @CONST_CS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* @E_CORE_ERROR, align 4
  %37 = load i32, i32* @CONST_PERSISTENT, align 4
  %38 = load i32, i32* @CONST_CS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i32, i32* @E_CORE_WARNING, align 4
  %42 = load i32, i32* @CONST_PERSISTENT, align 4
  %43 = load i32, i32* @CONST_CS, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @E_COMPILE_ERROR, align 4
  %47 = load i32, i32* @CONST_PERSISTENT, align 4
  %48 = load i32, i32* @CONST_CS, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @E_COMPILE_WARNING, align 4
  %52 = load i32, i32* @CONST_PERSISTENT, align 4
  %53 = load i32, i32* @CONST_CS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* @E_USER_ERROR, align 4
  %57 = load i32, i32* @CONST_PERSISTENT, align 4
  %58 = load i32, i32* @CONST_CS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32, i32* @E_USER_WARNING, align 4
  %62 = load i32, i32* @CONST_PERSISTENT, align 4
  %63 = load i32, i32* @CONST_CS, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @E_USER_NOTICE, align 4
  %67 = load i32, i32* @CONST_PERSISTENT, align 4
  %68 = load i32, i32* @CONST_CS, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @E_USER_DEPRECATED, align 4
  %72 = load i32, i32* @CONST_PERSISTENT, align 4
  %73 = load i32, i32* @CONST_CS, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* @E_ALL, align 4
  %77 = load i32, i32* @CONST_PERSISTENT, align 4
  %78 = load i32, i32* @CONST_CS, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* @DEBUG_BACKTRACE_PROVIDE_OBJECT, align 4
  %82 = load i32, i32* @CONST_PERSISTENT, align 4
  %83 = load i32, i32* @CONST_CS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i32, i32* @DEBUG_BACKTRACE_IGNORE_ARGS, align 4
  %87 = load i32, i32* @CONST_PERSISTENT, align 4
  %88 = load i32, i32* @CONST_CS, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @REGISTER_MAIN_LONG_CONSTANT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @ZTS_V, align 4
  %92 = load i32, i32* @CONST_PERSISTENT, align 4
  %93 = load i32, i32* @CONST_CS, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @REGISTER_MAIN_BOOL_CONSTANT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @ZEND_DEBUG, align 4
  %97 = load i32, i32* @CONST_PERSISTENT, align 4
  %98 = load i32, i32* @CONST_CS, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @REGISTER_MAIN_BOOL_CONSTANT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load i32, i32* @CONST_PERSISTENT, align 4
  %102 = call i32 @REGISTER_MAIN_BOOL_CONSTANT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 1, i32 %101)
  %103 = load i32, i32* @CONST_PERSISTENT, align 4
  %104 = call i32 @REGISTER_MAIN_BOOL_CONSTANT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 %103)
  %105 = load i32, i32* @CONST_PERSISTENT, align 4
  %106 = call i32 @REGISTER_MAIN_NULL_CONSTANT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %105)
  %107 = call i32 @ZVAL_NULL(i32* @null_value)
  %108 = call i32 @ZVAL_TRUE(i32* @true_value)
  %109 = call i32 @ZVAL_FALSE(i32* @false_value)
  ret void
}

declare dso_local i32 @REGISTER_MAIN_LONG_CONSTANT(i8*, i32, i32) #1

declare dso_local i32 @REGISTER_MAIN_BOOL_CONSTANT(i8*, i32, i32) #1

declare dso_local i32 @REGISTER_MAIN_NULL_CONSTANT(i8*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_TRUE(i32*) #1

declare dso_local i32 @ZVAL_FALSE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
