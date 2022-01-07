; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_acoshf.c_acoshf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_acoshf.c_acoshf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @acoshf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca %union.anon, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  %6 = bitcast %union.anon* %4 to float*
  %7 = load float, float* %3, align 4
  store float %7, float* %6, align 4
  %8 = bitcast %union.anon* %4 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 2147483647
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1073741824
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load float, float* %3, align 4
  %15 = fsub float %14, 1.000000e+00
  %16 = load float, float* %3, align 4
  %17 = fsub float %16, 1.000000e+00
  %18 = load float, float* %3, align 4
  %19 = fsub float %18, 1.000000e+00
  %20 = fmul float %17, %19
  %21 = load float, float* %3, align 4
  %22 = fsub float %21, 1.000000e+00
  %23 = fmul float 2.000000e+00, %22
  %24 = fadd float %20, %23
  %25 = call float @sqrtf(float %24) #2
  %26 = fadd float %15, %25
  %27 = call float @log1pf(float %26) #2
  store float %27, float* %2, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 1166016512
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load float, float* %3, align 4
  %33 = fmul float 2.000000e+00, %32
  %34 = load float, float* %3, align 4
  %35 = load float, float* %3, align 4
  %36 = load float, float* %3, align 4
  %37 = fmul float %35, %36
  %38 = fsub float %37, 1.000000e+00
  %39 = call float @sqrtf(float %38) #2
  %40 = fadd float %34, %39
  %41 = fdiv float 1.000000e+00, %40
  %42 = fsub float %33, %41
  %43 = call float @logf(float %42) #2
  store float %43, float* %2, align 4
  br label %48

44:                                               ; preds = %28
  %45 = load float, float* %3, align 4
  %46 = call float @logf(float %45) #2
  %47 = fadd float %46, 0x3FE62E4300000000
  store float %47, float* %2, align 4
  br label %48

48:                                               ; preds = %44, %31, %13
  %49 = load float, float* %2, align 4
  ret float %49
}

; Function Attrs: nounwind
declare dso_local float @log1pf(float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
