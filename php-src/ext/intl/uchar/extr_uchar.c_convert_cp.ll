; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_convert_cp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_convert_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_LONG = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@U_ILLEGAL_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Input string is too long.\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"Passing a UTF-8 character for codepoint requires a string which is exactly one UTF-8 codepoint long.\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Invalid parameter for unicode point.  Must be either integer or UTF-8 sequence.\00", align 1
@UCHAR_MIN_VALUE = common dso_local global i64 0, align 8
@UCHAR_MAX_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Codepoint out of range\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*)* @convert_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_cp(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 -1, i64* %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @Z_TYPE_P(i32* %9)
  %11 = load i64, i64* @IS_LONG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @Z_LVAL_P(i32* %14)
  store i64 %15, i64* %6, align 8
  br label %54

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @Z_TYPE_P(i32* %17)
  %19 = load i64, i64* @IS_STRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @Z_STRLEN_P(i32* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @ZEND_SIZE_T_INT_OVFL(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  %29 = call i32 @intl_error_set_code(i32* null, i32 %28)
  %30 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = load i32, i32* @FAILURE, align 4
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %21
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @Z_STRVAL_P(i32* %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @U8_NEXT(i32 %34, i64 %35, i64 %36, i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  %44 = call i32 @intl_error_set_code(i32* null, i32 %43)
  %45 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %46 = load i32, i32* @FAILURE, align 4
  store i32 %46, i32* %3, align 4
  br label %71

47:                                               ; preds = %32
  br label %53

48:                                               ; preds = %16
  %49 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  %50 = call i32 @intl_error_set_code(i32* null, i32 %49)
  %51 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %52 = load i32, i32* @FAILURE, align 4
  store i32 %52, i32* %3, align 4
  br label %71

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %13
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @UCHAR_MIN_VALUE, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @UCHAR_MAX_VALUE, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  %64 = call i32 @intl_error_set_code(i32* null, i32 %63)
  %65 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %66 = load i32, i32* @FAILURE, align 4
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load i64, i64* %6, align 8
  %69 = load i64*, i64** %4, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* @SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %62, %48, %42, %27
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @ZEND_SIZE_T_INT_OVFL(i64) #1

declare dso_local i32 @intl_error_set_code(i32*, i32) #1

declare dso_local i32 @intl_error_set_custom_msg(i32*, i8*, i32) #1

declare dso_local i32 @U8_NEXT(i32, i64, i64, i64) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
