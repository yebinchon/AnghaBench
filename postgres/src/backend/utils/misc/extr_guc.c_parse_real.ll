; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_real.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@GUC_UNIT = common dso_local global i32 0, align 4
@GUC_UNIT_MEMORY = common dso_local global i32 0, align 4
@memory_units_hint = common dso_local global i8* null, align 8
@time_units_hint = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_real(i8* %0, double* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load double*, double** %7, align 8
  %13 = icmp ne double* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8**, i8*** %9, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8**, i8*** %9, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  store i64 0, i64* @errno, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call double @strtod(i8* %22, i8** %11)
  store double %23, double* %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ERANGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %21
  store i32 0, i32* %5, align 4
  br label %89

32:                                               ; preds = %27
  %33 = load double, double* %10, align 8
  %34 = call i64 @isnan(double %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %89

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isspace(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 8
  br label %38

46:                                               ; preds = %38
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GUC_UNIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %89

57:                                               ; preds = %51
  %58 = load double, double* %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @GUC_UNIT, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @convert_to_base_unit(double %58, i8* %59, i32 %62, double* %10)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %57
  %66 = load i8**, i8*** %9, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** @memory_units_hint, align 8
  %75 = load i8**, i8*** %9, align 8
  store i8* %74, i8** %75, align 8
  br label %79

76:                                               ; preds = %68
  %77 = load i8*, i8** @time_units_hint, align 8
  %78 = load i8**, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %65
  store i32 0, i32* %5, align 4
  br label %89

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %46
  %83 = load double*, double** %7, align 8
  %84 = icmp ne double* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load double, double* %10, align 8
  %87 = load double*, double** %7, align 8
  store double %86, double* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %80, %56, %36, %31
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @convert_to_base_unit(double, i8*, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
