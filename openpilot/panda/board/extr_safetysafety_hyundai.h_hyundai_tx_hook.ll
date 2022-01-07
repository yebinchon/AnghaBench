; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_hyundai.h_hyundai_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_hyundai.h_hyundai_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@hyundai_camera_detected = common dso_local global i64 0, align 8
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@controls_allowed = common dso_local global i64 0, align 8
@HYUNDAI_MAX_STEER = common dso_local global i32 0, align 4
@hyundai_desired_torque_last = common dso_local global i32 0, align 4
@hyundai_torque_driver = common dso_local global i32 0, align 4
@HYUNDAI_MAX_RATE_UP = common dso_local global i32 0, align 4
@HYUNDAI_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@HYUNDAI_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@HYUNDAI_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@hyundai_rt_torque_last = common dso_local global i32 0, align 4
@HYUNDAI_MAX_RT_DELTA = common dso_local global i32 0, align 4
@hyundai_ts_last = common dso_local global i64 0, align 8
@HYUNDAI_RT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hyundai_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyundai_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GET_ADDR(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @hyundai_camera_detected, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 832
  br i1 %16, label %17, label %83

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @GET_BYTES_04(i32* %18)
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 2047
  %22 = sub nsw i32 %21, 1024
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %26 = load i64, i64* @controls_allowed, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HYUNDAI_MAX_STEER, align 4
  %31 = load i32, i32* @HYUNDAI_MAX_STEER, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @max_limit_check(i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @hyundai_desired_torque_last, align 4
  %38 = load i32, i32* @HYUNDAI_MAX_STEER, align 4
  %39 = load i32, i32* @HYUNDAI_MAX_RATE_UP, align 4
  %40 = load i32, i32* @HYUNDAI_MAX_RATE_DOWN, align 4
  %41 = load i32, i32* @HYUNDAI_DRIVER_TORQUE_ALLOWANCE, align 4
  %42 = load i32, i32* @HYUNDAI_DRIVER_TORQUE_FACTOR, align 4
  %43 = call i32 @driver_limit_check(i32 %36, i32 %37, i32* @hyundai_torque_driver, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* @hyundai_desired_torque_last, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @hyundai_rt_torque_last, align 4
  %49 = load i32, i32* @HYUNDAI_MAX_RT_DELTA, align 4
  %50 = call i32 @rt_rate_limit_check(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @hyundai_ts_last, align 8
  %55 = call i64 @get_ts_elapsed(i64 %53, i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @HYUNDAI_RT_INTERVAL, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %28
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* @hyundai_rt_torque_last, align 4
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* @hyundai_ts_last, align 8
  br label %62

62:                                               ; preds = %59, %28
  br label %63

63:                                               ; preds = %62, %17
  %64 = load i64, i64* @controls_allowed, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %66, %63
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* @controls_allowed, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* @hyundai_desired_torque_last, align 4
  store i32 0, i32* @hyundai_rt_torque_last, align 4
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* @hyundai_ts_last, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTES_04(i32*) #1

declare dso_local i32 @max_limit_check(i32, i32, i32) #1

declare dso_local i32 @driver_limit_check(i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rt_rate_limit_check(i32, i32, i32) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
