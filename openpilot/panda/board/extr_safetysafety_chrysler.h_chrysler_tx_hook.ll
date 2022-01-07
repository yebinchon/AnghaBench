; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_chrysler.h_chrysler_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_chrysler.h_chrysler_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@chrysler_camera_detected = common dso_local global i64 0, align 8
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@controls_allowed = common dso_local global i64 0, align 8
@CHRYSLER_MAX_STEER = common dso_local global i32 0, align 4
@chrysler_desired_torque_last = common dso_local global i32 0, align 4
@chrysler_torque_meas = common dso_local global i32 0, align 4
@CHRYSLER_MAX_RATE_UP = common dso_local global i32 0, align 4
@CHRYSLER_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@CHRYSLER_MAX_TORQUE_ERROR = common dso_local global i32 0, align 4
@chrysler_rt_torque_last = common dso_local global i32 0, align 4
@CHRYSLER_MAX_RT_DELTA = common dso_local global i32 0, align 4
@chrysler_ts_last = common dso_local global i64 0, align 8
@CHRYSLER_RT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @chrysler_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chrysler_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %9 = load i64, i64* @chrysler_camera_detected, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @GET_ADDR(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 658
  br i1 %16, label %17, label %84

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @GET_BYTE(i32* %18, i32 0)
  %20 = and i32 %19, 7
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GET_BYTE(i32* %22, i32 1)
  %24 = add i32 %21, %23
  %25 = sub i32 %24, 1024
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %29 = load i64, i64* @controls_allowed, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CHRYSLER_MAX_STEER, align 4
  %34 = load i32, i32* @CHRYSLER_MAX_STEER, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @max_limit_check(i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @chrysler_desired_torque_last, align 4
  %41 = load i32, i32* @CHRYSLER_MAX_RATE_UP, align 4
  %42 = load i32, i32* @CHRYSLER_MAX_RATE_DOWN, align 4
  %43 = load i32, i32* @CHRYSLER_MAX_TORQUE_ERROR, align 4
  %44 = call i32 @dist_to_meas_check(i32 %39, i32 %40, i32* @chrysler_torque_meas, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* @chrysler_desired_torque_last, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @chrysler_rt_torque_last, align 4
  %50 = load i32, i32* @CHRYSLER_MAX_RT_DELTA, align 4
  %51 = call i32 @rt_rate_limit_check(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @chrysler_ts_last, align 8
  %56 = call i64 @get_ts_elapsed(i64 %54, i64 %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @CHRYSLER_RT_INTERVAL, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %31
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* @chrysler_rt_torque_last, align 4
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* @chrysler_ts_last, align 8
  br label %63

63:                                               ; preds = %60, %31
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i64, i64* @controls_allowed, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %67, %64
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @controls_allowed, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* @chrysler_desired_torque_last, align 4
  store i32 0, i32* @chrysler_rt_torque_last, align 4
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* @chrysler_ts_last, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @max_limit_check(i32, i32, i32) #1

declare dso_local i32 @dist_to_meas_check(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rt_rate_limit_check(i32, i32, i32) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
