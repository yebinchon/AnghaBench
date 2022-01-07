; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ParseISO8601Number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ParseISO8601Number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@DTERR_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, double*)* @ParseISO8601Number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseISO8601Number(i8* %0, i8** %1, i32* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store double* %3, double** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isdigit(i8 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 46
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %26, i32* %5, align 4
  br label %72

27:                                               ; preds = %20, %15, %4
  store i64 0, i64* @errno, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = call double @strtod(i8* %28, i8** %29)
  store double %30, double* %10, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* @errno, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %27
  %39 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %39, i32* %5, align 4
  br label %72

40:                                               ; preds = %35
  %41 = load double, double* %10, align 8
  %42 = load double, double* @INT_MIN, align 8
  %43 = fcmp olt double %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load double, double* %10, align 8
  %46 = load double, double* @INT_MAX, align 8
  %47 = fcmp ogt double %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %49, i32* %5, align 4
  br label %72

50:                                               ; preds = %44
  %51 = load double, double* %10, align 8
  %52 = fcmp oge double %51, 0.000000e+00
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load double, double* %10, align 8
  %55 = call i64 @floor(double %54)
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %65

58:                                               ; preds = %50
  %59 = load double, double* %10, align 8
  %60 = fneg double %59
  %61 = call i64 @floor(double %60)
  %62 = sub nsw i64 0, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load double, double* %10, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = fsub double %66, %69
  %71 = load double*, double** %9, align 8
  store double %70, double* %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %48, %38, %25
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
