; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_like_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_like_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FULL_WILDCARD_SEL = common dso_local global double 0.000000e+00, align 8
@ANY_CHAR_SEL = common dso_local global double 0.000000e+00, align 8
@FIXED_CHAR_SEL = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i32, i32)* @like_selectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @like_selectivity(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store double 1.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %31, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 37
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 95
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %9

34:                                               ; preds = %29, %9
  br label %35

35:                                               ; preds = %89, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load double, double* @FULL_WILDCARD_SEL, align 8
  %49 = load double, double* %7, align 8
  %50 = fmul double %49, %48
  store double %50, double* %7, align 8
  br label %88

51:                                               ; preds = %39
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 95
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load double, double* @ANY_CHAR_SEL, align 8
  %61 = load double, double* %7, align 8
  %62 = fmul double %61, %60
  store double %62, double* %7, align 8
  br label %87

63:                                               ; preds = %51
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 92
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %92

78:                                               ; preds = %71
  %79 = load double, double* @FIXED_CHAR_SEL, align 8
  %80 = load double, double* %7, align 8
  %81 = fmul double %80, %79
  store double %81, double* %7, align 8
  br label %86

82:                                               ; preds = %63
  %83 = load double, double* @FIXED_CHAR_SEL, align 8
  %84 = load double, double* %7, align 8
  %85 = fmul double %84, %83
  store double %85, double* %7, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %59
  br label %88

88:                                               ; preds = %87, %47
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %35

92:                                               ; preds = %77, %35
  %93 = load double, double* %7, align 8
  %94 = fcmp ogt double %93, 1.000000e+00
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store double 1.000000e+00, double* %7, align 8
  br label %96

96:                                               ; preds = %95, %92
  %97 = load double, double* %7, align 8
  ret double %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
