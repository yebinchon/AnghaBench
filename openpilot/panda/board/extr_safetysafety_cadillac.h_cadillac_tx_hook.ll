; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_cadillac.h_cadillac_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_cadillac.h_cadillac_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@CADILLAC_TORQUE_MSG_N = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i64 0, align 8
@CADILLAC_MAX_STEER = common dso_local global i32 0, align 4
@cadillac_desired_torque_last = common dso_local global i32* null, align 8
@cadillac_torque_driver = common dso_local global i32 0, align 4
@CADILLAC_MAX_RATE_UP = common dso_local global i32 0, align 4
@CADILLAC_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@CADILLAC_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@CADILLAC_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@cadillac_rt_torque_last = common dso_local global i32 0, align 4
@CADILLAC_MAX_RT_DELTA = common dso_local global i32 0, align 4
@cadillac_ts_last = common dso_local global i64 0, align 8
@CADILLAC_RT_INTERVAL = common dso_local global i64 0, align 8
@cadillac_supercruise_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cadillac_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadillac_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_ADDR(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 337
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 338
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 339
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 340
  br i1 %23, label %24, label %113

24:                                               ; preds = %21, %18, %15, %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GET_BYTE(i32* %25, i32 0)
  %27 = and i32 %26, 63
  %28 = shl i32 %27, 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GET_BYTE(i32* %29, i32 1)
  %31 = or i32 %28, %30
  store i32 %31, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CADILLAC_TORQUE_MSG_N, align 4
  %37 = call i32 @cadillac_get_torque_idx(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @to_signed(i32 %38, i32 14)
  store i32 %39, i32* %5, align 4
  %40 = load i64, i64* @controls_allowed, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CADILLAC_MAX_STEER, align 4
  %45 = load i32, i32* @CADILLAC_MAX_STEER, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @max_limit_check(i32 %43, i32 %44, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32*, i32** @cadillac_desired_torque_last, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @CADILLAC_MAX_STEER, align 4
  %58 = load i32, i32* @CADILLAC_MAX_RATE_UP, align 4
  %59 = load i32, i32* @CADILLAC_MAX_RATE_DOWN, align 4
  %60 = load i32, i32* @CADILLAC_DRIVER_TORQUE_ALLOWANCE, align 4
  %61 = load i32, i32* @CADILLAC_DRIVER_TORQUE_FACTOR, align 4
  %62 = call i32 @driver_limit_check(i32 %55, i32 %56, i32* @cadillac_torque_driver, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** @cadillac_desired_torque_last, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @cadillac_rt_torque_last, align 4
  %72 = load i32, i32* @CADILLAC_MAX_RT_DELTA, align 4
  %73 = call i32 @rt_rate_limit_check(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @cadillac_ts_last, align 8
  %78 = call i64 @get_ts_elapsed(i64 %76, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @CADILLAC_RT_INTERVAL, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* @cadillac_rt_torque_last, align 4
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* @cadillac_ts_last, align 8
  br label %85

85:                                               ; preds = %82, %42
  br label %86

86:                                               ; preds = %85, %24
  %87 = load i64, i64* @controls_allowed, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %89, %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @controls_allowed, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** @cadillac_desired_torque_last, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 0, i32* %103, align 4
  store i32 0, i32* @cadillac_rt_torque_last, align 4
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* @cadillac_ts_last, align 8
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @cadillac_supercruise_on, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %105
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @cadillac_get_torque_idx(i32, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

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
