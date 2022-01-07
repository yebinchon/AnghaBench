; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_hist_value_sel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_hist_value_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CONSIDERED_ELEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32, i32)* @inet_hist_value_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @inet_hist_value_sel(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store double 0.000000e+00, double* %5, align 8
  br label %114

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 2
  %27 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %28 = sdiv i32 %26, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32* @DatumGetInetPP(i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @DatumGetInetPP(i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @inet_inclusion_cmp(i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %105, %24
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @DatumGetInetPP(i32 %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @inet_inclusion_cmp(i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load double, double* %10, align 8
  %63 = fadd double %62, 1.000000e+00
  store double %63, double* %10, align 8
  br label %100

64:                                               ; preds = %58, %45
  %65 = load i32, i32* %17, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %17, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i32, i32* %18, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73, %67
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @inet_hist_match_divider(i32* %77, i32* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @inet_hist_match_divider(i32* %81, i32* %82, i32 %83)
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %20, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87, %76
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @Max(i32 %91, i32 %92)
  %94 = call double @pow(double 2.000000e+00, i32 %93)
  %95 = fdiv double 1.000000e+00, %94
  %96 = load double, double* %10, align 8
  %97 = fadd double %96, %95
  store double %97, double* %10, align 8
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98, %73, %70
  br label %100

100:                                              ; preds = %99, %61
  %101 = load i32*, i32** %13, align 8
  store i32* %101, i32** %12, align 8
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %41

109:                                              ; preds = %41
  %110 = load double, double* %10, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sitofp i32 %111 to double
  %113 = fdiv double %110, %112
  store double %113, double* %5, align 8
  br label %114

114:                                              ; preds = %109, %23
  %115 = load double, double* %5, align 8
  ret double %115
}

declare dso_local i32* @DatumGetInetPP(i32) #1

declare dso_local i32 @inet_inclusion_cmp(i32*, i32*, i32) #1

declare dso_local i32 @inet_hist_match_divider(i32*, i32*, i32) #1

declare dso_local double @pow(double, i32) #1

declare dso_local i32 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
