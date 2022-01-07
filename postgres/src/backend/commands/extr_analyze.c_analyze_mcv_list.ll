; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_analyze_mcv_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_analyze_mcv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, double, double, i32, double)* @analyze_mcv_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_mcv_list(i32* %0, i32 %1, double %2, double %3, i32 %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sitofp i32 %24 to double
  %26 = load double, double* %13, align 8
  %27 = fcmp oeq double %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load double, double* %13, align 8
  %30 = fcmp ole double %29, 1.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %6
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %7, align 4
  br label %162

33:                                               ; preds = %28
  %34 = load double, double* %10, align 8
  store double %34, double* %14, align 8
  %35 = load double, double* %14, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load double, double* %14, align 8
  %39 = fneg double %38
  %40 = load double, double* %13, align 8
  %41 = fmul double %39, %40
  store double %41, double* %14, align 8
  br label %42

42:                                               ; preds = %37, %33
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to double
  %55 = load double, double* %15, align 8
  %56 = fadd double %55, %54
  store double %56, double* %15, align 8
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %43

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %159, %60
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %160

64:                                               ; preds = %61
  %65 = load double, double* %15, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %65, %67
  %69 = fsub double 1.000000e+00, %68
  %70 = load double, double* %11, align 8
  %71 = fsub double %69, %70
  store double %71, double* %17, align 8
  %72 = load double, double* %17, align 8
  %73 = fcmp olt double %72, 0.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store double 0.000000e+00, double* %17, align 8
  br label %75

75:                                               ; preds = %74, %64
  %76 = load double, double* %17, align 8
  %77 = fcmp ogt double %76, 1.000000e+00
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store double 1.000000e+00, double* %17, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load double, double* %14, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sitofp i32 %82 to double
  %84 = fsub double %80, %83
  store double %84, double* %18, align 8
  %85 = load double, double* %18, align 8
  %86 = fcmp ogt double %85, 1.000000e+00
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load double, double* %18, align 8
  %89 = load double, double* %17, align 8
  %90 = fdiv double %89, %88
  store double %90, double* %17, align 8
  br label %91

91:                                               ; preds = %87, %79
  %92 = load double, double* %13, align 8
  store double %92, double* %19, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sitofp i32 %93 to double
  store double %94, double* %20, align 8
  %95 = load double, double* %19, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = fmul double %95, %102
  %104 = load double, double* %20, align 8
  %105 = fdiv double %103, %104
  store double %105, double* %21, align 8
  %106 = load double, double* %20, align 8
  %107 = load double, double* %21, align 8
  %108 = fmul double %106, %107
  %109 = load double, double* %19, align 8
  %110 = load double, double* %21, align 8
  %111 = fsub double %109, %110
  %112 = fmul double %108, %111
  %113 = load double, double* %19, align 8
  %114 = load double, double* %20, align 8
  %115 = fsub double %113, %114
  %116 = fmul double %112, %115
  %117 = load double, double* %19, align 8
  %118 = load double, double* %19, align 8
  %119 = fmul double %117, %118
  %120 = load double, double* %19, align 8
  %121 = fsub double %120, 1.000000e+00
  %122 = fmul double %119, %121
  %123 = fdiv double %116, %122
  store double %123, double* %22, align 8
  %124 = load double, double* %22, align 8
  %125 = call double @sqrt(double %124) #2
  store double %125, double* %23, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sitofp i32 %131 to double
  %133 = load double, double* %17, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sitofp i32 %134 to double
  %136 = fmul double %133, %135
  %137 = load double, double* %23, align 8
  %138 = fmul double 2.000000e+00, %137
  %139 = fadd double %136, %138
  %140 = fadd double %139, 5.000000e-01
  %141 = fcmp ogt double %132, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %91
  br label %160

143:                                              ; preds = %91
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %160

149:                                              ; preds = %143
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sitofp i32 %155 to double
  %157 = load double, double* %15, align 8
  %158 = fsub double %157, %156
  store double %158, double* %15, align 8
  br label %159

159:                                              ; preds = %149
  br label %61

160:                                              ; preds = %148, %142, %61
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %160, %31
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
