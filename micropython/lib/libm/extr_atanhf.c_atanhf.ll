; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_atanhf.c_atanhf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_atanhf.c_atanhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @atanhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float %0, float* %2, align 4
  %6 = bitcast %union.anon* %3 to float*
  %7 = load float, float* %2, align 4
  store float %7, float* %6, align 4
  %8 = bitcast %union.anon* %3 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 31
  store i32 %10, i32* %4, align 4
  %11 = bitcast %union.anon* %3 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %11, align 4
  %14 = bitcast %union.anon* %3 to float*
  %15 = load float, float* %14, align 4
  %16 = fptosi float %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = bitcast %union.anon* %3 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1056964608
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = bitcast %union.anon* %3 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 796917760
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = bitcast %union.anon* %3 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 8388608
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sitofp i32 %31 to float
  %33 = call i32 @FORCE_EVAL(float %32)
  br label %34

34:                                               ; preds = %28, %24
  br label %49

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 2, %36
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 2, %38
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 1, %42
  %44 = sdiv i32 %41, %43
  %45 = add nsw i32 %37, %44
  %46 = call float @log1pf(i32 %45)
  %47 = fmul float 5.000000e-01, %46
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %34
  br label %59

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 1, %52
  %54 = sdiv i32 %51, %53
  %55 = mul nsw i32 2, %54
  %56 = call float @log1pf(i32 %55)
  %57 = fmul float 5.000000e-01, %56
  %58 = fptosi float %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %50, %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 0, %63
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = sitofp i32 %68 to float
  ret float %69
}

declare dso_local i32 @FORCE_EVAL(float) #1

declare dso_local float @log1pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
