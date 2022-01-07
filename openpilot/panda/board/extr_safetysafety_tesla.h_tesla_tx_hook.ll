; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_tesla.h_tesla_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_tesla.h_tesla_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tesla_desired_angle_last = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i64 0, align 8
@TESLA_LOOKUP_ANGLE_RATE_UP = common dso_local global i32 0, align 4
@tesla_speed = common dso_local global i32 0, align 4
@TESLA_LOOKUP_ANGLE_RATE_DOWN = common dso_local global i32 0, align 4
@TESLA_LOOKUP_MAX_ANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tesla_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tesla_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_ADDR(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1160
  br i1 %17, label %18, label %108

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 0)
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GET_BYTE(i32* %23, i32 1)
  %25 = add nsw i32 %22, %24
  %26 = sitofp i32 %25 to float
  store float %26, float* %5, align 4
  %27 = load float, float* %5, align 4
  %28 = fpext float %27 to double
  %29 = fmul double %28, 1.000000e-01
  %30 = fsub double %29, 1.638350e+03
  %31 = fptrunc double %30 to float
  store float %31, float* %6, align 4
  store i32 0, i32* %7, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GET_BYTE(i32* %32, i32 2)
  %34 = and i32 %33, 64
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load float, float* %6, align 4
  %39 = fptosi float %38 to i32
  store i32 %39, i32* @tesla_desired_angle_last, align 4
  br label %107

40:                                               ; preds = %18
  %41 = load i64, i64* @controls_allowed, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load i32, i32* @TESLA_LOOKUP_ANGLE_RATE_UP, align 4
  %45 = load i32, i32* @tesla_speed, align 4
  %46 = call i32 @interpolate(i32 %44, i32 %45)
  %47 = sitofp i32 %46 to double
  %48 = fadd double %47, 1.000000e+00
  %49 = fptrunc double %48 to float
  store float %49, float* %9, align 4
  %50 = load i32, i32* @TESLA_LOOKUP_ANGLE_RATE_DOWN, align 4
  %51 = load i32, i32* @tesla_speed, align 4
  %52 = call i32 @interpolate(i32 %50, i32 %51)
  %53 = sitofp i32 %52 to double
  %54 = fadd double %53, 1.000000e+00
  %55 = fptrunc double %54 to float
  store float %55, float* %10, align 4
  %56 = load i32, i32* @tesla_desired_angle_last, align 4
  %57 = sitofp i32 %56 to float
  %58 = load i32, i32* @tesla_desired_angle_last, align 4
  %59 = sitofp i32 %58 to double
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load float, float* %9, align 4
  br label %65

63:                                               ; preds = %43
  %64 = load float, float* %10, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi float [ %62, %61 ], [ %64, %63 ]
  %67 = fadd float %57, %66
  store float %67, float* %11, align 4
  %68 = load i32, i32* @tesla_desired_angle_last, align 4
  %69 = sitofp i32 %68 to float
  %70 = load i32, i32* @tesla_desired_angle_last, align 4
  %71 = sitofp i32 %70 to double
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load float, float* %10, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load float, float* %9, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi float [ %74, %73 ], [ %76, %75 ]
  %79 = fsub float %69, %78
  store float %79, float* %12, align 4
  %80 = load i32, i32* @TESLA_LOOKUP_MAX_ANGLE, align 4
  %81 = load i32, i32* @tesla_speed, align 4
  %82 = call i32 @interpolate(i32 %80, i32 %81)
  %83 = sitofp i32 %82 to double
  %84 = fadd double %83, 1.000000e+00
  %85 = fptrunc double %84 to float
  store float %85, float* %13, align 4
  %86 = load float, float* %6, align 4
  %87 = load float, float* %13, align 4
  %88 = load float, float* %13, align 4
  %89 = fneg float %88
  %90 = call i32 @fmax_limit_check(float %86, float %87, float %89)
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load float, float* %6, align 4
  %94 = load float, float* %11, align 4
  %95 = load float, float* %12, align 4
  %96 = call i32 @fmax_limit_check(float %93, float %94, float %95)
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %77
  store i64 0, i64* @controls_allowed, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %77
  %103 = load float, float* %6, align 4
  %104 = fptosi float %103 to i32
  store i32 %104, i32* @tesla_desired_angle_last, align 4
  br label %106

105:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %106, %37
  br label %108

108:                                              ; preds = %107, %1
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @interpolate(i32, i32) #1

declare dso_local i32 @fmax_limit_check(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
