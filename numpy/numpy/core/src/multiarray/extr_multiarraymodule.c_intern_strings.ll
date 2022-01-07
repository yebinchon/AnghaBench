; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_intern_strings.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_intern_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"__array__\00", align 1
@npy_ma_str_array = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"__array_prepare__\00", align 1
@npy_ma_str_array_prepare = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"__array_wrap__\00", align 1
@npy_ma_str_array_wrap = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"__array_finalize__\00", align 1
@npy_ma_str_array_finalize = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"__array_ufunc__\00", align 1
@npy_ma_str_ufunc = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"_implementation\00", align 1
@npy_ma_str_implementation = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@npy_ma_str_order = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@npy_ma_str_copy = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@npy_ma_str_dtype = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"ndmin\00", align 1
@npy_ma_str_ndmin = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"axis1\00", align 1
@npy_ma_str_axis1 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"axis2\00", align 1
@npy_ma_str_axis2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intern_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intern_strings() #0 {
  %1 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** @npy_ma_str_array, align 8
  %2 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** @npy_ma_str_array_prepare, align 8
  %3 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** @npy_ma_str_array_wrap, align 8
  %4 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i8* %4, i8** @npy_ma_str_array_finalize, align 8
  %5 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %5, i8** @npy_ma_str_ufunc, align 8
  %6 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i8* %6, i8** @npy_ma_str_implementation, align 8
  %7 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %7, i8** @npy_ma_str_order, align 8
  %8 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %8, i8** @npy_ma_str_copy, align 8
  %9 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %9, i8** @npy_ma_str_dtype, align 8
  %10 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %10, i8** @npy_ma_str_ndmin, align 8
  %11 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i8* %11, i8** @npy_ma_str_axis1, align 8
  %12 = call i8* @PyUString_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8* %12, i8** @npy_ma_str_axis2, align 8
  %13 = load i8*, i8** @npy_ma_str_array, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %0
  %16 = load i8*, i8** @npy_ma_str_array_prepare, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load i8*, i8** @npy_ma_str_array_wrap, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i8*, i8** @npy_ma_str_array_finalize, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i8*, i8** @npy_ma_str_ufunc, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i8*, i8** @npy_ma_str_implementation, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i8*, i8** @npy_ma_str_order, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i8*, i8** @npy_ma_str_copy, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i8*, i8** @npy_ma_str_dtype, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** @npy_ma_str_ndmin, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** @npy_ma_str_axis1, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** @npy_ma_str_axis2, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %0
  %49 = phi i1 [ false, %42 ], [ false, %39 ], [ false, %36 ], [ false, %33 ], [ false, %30 ], [ false, %27 ], [ false, %24 ], [ false, %21 ], [ false, %18 ], [ false, %15 ], [ false, %0 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i8* @PyUString_InternFromString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
