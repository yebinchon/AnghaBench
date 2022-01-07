; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_sinhf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_sinhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sinhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca %union.anon, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %3, align 4
  %9 = bitcast %union.anon* %4 to float*
  %10 = load float, float* %3, align 4
  store float %10, float* %9, align 4
  store float 5.000000e-01, float* %7, align 4
  %11 = bitcast %union.anon* %4 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 31
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load float, float* %7, align 4
  %17 = fneg float %16
  store float %17, float* %7, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = bitcast %union.anon* %4 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 2147483647
  store i32 %21, i32* %19, align 4
  %22 = bitcast %union.anon* %4 to float*
  %23 = load float, float* %22, align 4
  store float %23, float* %8, align 4
  %24 = bitcast %union.anon* %4 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 1118925335
  br i1 %27, label %28, label %59

28:                                               ; preds = %18
  %29 = load float, float* %8, align 4
  %30 = call float @expm1f(float %29) #3
  store float %30, float* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1065353216
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 964689920
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load float, float* %3, align 4
  store float %37, float* %2, align 4
  br label %67

38:                                               ; preds = %33
  %39 = load float, float* %7, align 4
  %40 = load float, float* %6, align 4
  %41 = fmul float 2.000000e+00, %40
  %42 = load float, float* %6, align 4
  %43 = load float, float* %6, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %6, align 4
  %46 = fadd float %45, 1.000000e+00
  %47 = fdiv float %44, %46
  %48 = fsub float %41, %47
  %49 = fmul float %39, %48
  store float %49, float* %2, align 4
  br label %67

50:                                               ; preds = %28
  %51 = load float, float* %7, align 4
  %52 = load float, float* %6, align 4
  %53 = load float, float* %6, align 4
  %54 = load float, float* %6, align 4
  %55 = fadd float %54, 1.000000e+00
  %56 = fdiv float %53, %55
  %57 = fadd float %52, %56
  %58 = fmul float %51, %57
  store float %58, float* %2, align 4
  br label %67

59:                                               ; preds = %18
  %60 = load float, float* %7, align 4
  %61 = fmul float 2.000000e+00, %60
  %62 = load float, float* %8, align 4
  %63 = call i32 @__expo2f(float %62)
  %64 = sitofp i32 %63 to float
  %65 = fmul float %61, %64
  store float %65, float* %6, align 4
  %66 = load float, float* %6, align 4
  store float %66, float* %2, align 4
  br label %67

67:                                               ; preds = %59, %50, %38, %36
  %68 = load float, float* %2, align 4
  ret float %68
}

; Function Attrs: nounwind
declare dso_local float @expm1f(float) #1

declare dso_local i32 @__expo2f(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
