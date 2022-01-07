; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_NonFiniteTimestampTzPart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_NonFiniteTimestampTzPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS = common dso_local global i32 0, align 4
@RESERV = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"timestamp with time zone units \22%s\22 not recognized\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"timestamp units \22%s\22 not recognized\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"timestamp with time zone units \22%s\22 not supported\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"timestamp units \22%s\22 not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, i8*, i32, i32)* @NonFiniteTimestampTzPart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @NonFiniteTimestampTzPart(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @UNITS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @RESERV, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %36

29:                                               ; preds = %19
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36, %15, %5
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %48 [
    i32 139, label %39
    i32 137, label %39
    i32 133, label %39
    i32 136, label %39
    i32 143, label %39
    i32 148, label %39
    i32 135, label %39
    i32 134, label %39
    i32 129, label %39
    i32 146, label %39
    i32 142, label %39
    i32 145, label %39
    i32 132, label %39
    i32 130, label %39
    i32 131, label %39
    i32 128, label %40
    i32 147, label %40
    i32 149, label %40
    i32 138, label %40
    i32 140, label %40
    i32 141, label %40
    i32 144, label %40
  ]

39:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  store double 0.000000e+00, double* %6, align 8
  br label %66

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call double (...) @get_float8_infinity()
  %45 = fneg double %44
  store double %45, double* %6, align 8
  br label %66

46:                                               ; preds = %40
  %47 = call double (...) @get_float8_infinity()
  store double %47, double* %6, align 8
  br label %66

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = call i32 @ereport(i32 %52, i32 %56)
  br label %65

58:                                               ; preds = %48
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = call i32 @ereport(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  store double 0.000000e+00, double* %6, align 8
  br label %66

66:                                               ; preds = %65, %46, %43, %39
  %67 = load double, double* %6, align 8
  ret double %67
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local double @get_float8_infinity(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
