; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAZDA_MAIN = common dso_local global i32 0, align 4
@MAZDA_LKAS = common dso_local global i32 0, align 4
@mazda_op_lkas_detected = common dso_local global i32 0, align 4
@MAZDA_LANEINFO = common dso_local global i32 0, align 4
@mazda_op_laneinfo_detected = common dso_local global i32 0, align 4
@MAZDA_MAX_STEER = common dso_local global i32 0, align 4
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@controls_allowed = common dso_local global i64 0, align 8
@mazda_desired_torque_last = common dso_local global i32 0, align 4
@mazda_torque_driver = common dso_local global i32 0, align 4
@MAZDA_MAX_RATE_UP = common dso_local global i32 0, align 4
@MAZDA_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@MAZDA_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@MAZDA_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@mazda_rt_torque_last = common dso_local global i32 0, align 4
@MAZDA_MAX_RT_DELTA = common dso_local global i32 0, align 4
@mazda_ts_last = common dso_local global i64 0, align 8
@MAZDA_RT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mazda_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mazda_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_ADDR(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @GET_BUS(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAZDA_MAIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAZDA_LKAS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @mazda_op_lkas_detected, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* @mazda_op_lkas_detected, align 4
  br label %26

26:                                               ; preds = %25, %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MAZDA_LANEINFO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @mazda_op_laneinfo_detected, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 1, i32* @mazda_op_laneinfo_detected, align 4
  br label %34

34:                                               ; preds = %33, %30, %26
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MAZDA_LKAS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %34
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @GET_BYTE(i32* %39, i32 0)
  %41 = and i32 %40, 15
  %42 = shl i32 %41, 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @GET_BYTE(i32* %43, i32 1)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @MAZDA_MAX_STEER, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* @controls_allowed, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MAZDA_MAX_STEER, align 4
  %56 = load i32, i32* @MAZDA_MAX_STEER, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @max_limit_check(i32 %54, i32 %55, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @mazda_desired_torque_last, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MAZDA_MAX_STEER, align 4
  %65 = load i32, i32* @MAZDA_MAX_RATE_UP, align 4
  %66 = load i32, i32* @MAZDA_MAX_RATE_DOWN, align 4
  %67 = load i32, i32* @MAZDA_DRIVER_TORQUE_ALLOWANCE, align 4
  %68 = load i32, i32* @MAZDA_DRIVER_TORQUE_FACTOR, align 4
  %69 = call i32 @driver_limit_check(i32 %62, i32 %63, i32* @mazda_torque_driver, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* @mazda_desired_torque_last, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @mazda_rt_torque_last, align 4
  %75 = load i32, i32* @MAZDA_MAX_RT_DELTA, align 4
  %76 = call i32 @rt_rate_limit_check(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @mazda_ts_last, align 8
  %81 = call i64 @get_ts_elapsed(i64 %79, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @MAZDA_RT_INTERVAL, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %53
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* @mazda_rt_torque_last, align 4
  %87 = load i64, i64* %8, align 8
  store i64 %87, i64* @mazda_ts_last, align 8
  br label %88

88:                                               ; preds = %85, %53
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i64, i64* @controls_allowed, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %92, %89
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @controls_allowed, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99, %96
  store i32 0, i32* @mazda_desired_torque_last, align 4
  store i32 0, i32* @mazda_rt_torque_last, align 4
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* @mazda_ts_last, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %108, %34
  br label %110

110:                                              ; preds = %109, %1
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

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
