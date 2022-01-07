; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_volkswagen.h_volkswagen_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_volkswagen.h_volkswagen_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MSG_HCA_01 = common dso_local global i32 0, align 4
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@controls_allowed = common dso_local global i64 0, align 8
@VOLKSWAGEN_MAX_STEER = common dso_local global i32 0, align 4
@volkswagen_desired_torque_last = common dso_local global i32 0, align 4
@volkswagen_torque_driver = common dso_local global i32 0, align 4
@VOLKSWAGEN_MAX_RATE_UP = common dso_local global i32 0, align 4
@VOLKSWAGEN_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@VOLKSWAGEN_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@volkswagen_rt_torque_last = common dso_local global i32 0, align 4
@VOLKSWAGEN_MAX_RT_DELTA = common dso_local global i32 0, align 4
@volkswagen_ts_last = common dso_local global i64 0, align 8
@VOLKSWAGEN_RT_INTERVAL = common dso_local global i64 0, align 8
@MSG_GRA_ACC_01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @volkswagen_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volkswagen_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_ADDR(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @GET_BUS(i32* %13)
  store i32 %14, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MSG_HCA_01, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %96

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 2)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @GET_BYTE(i32* %21, i32 3)
  %23 = and i32 %22, 63
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GET_BYTE(i32* %26, i32 3)
  %28 = and i32 %27, 128
  %29 = ashr i32 %28, 7
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @controls_allowed, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VOLKSWAGEN_MAX_STEER, align 4
  %44 = load i32, i32* @VOLKSWAGEN_MAX_STEER, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @max_limit_check(i32 %42, i32 %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @volkswagen_desired_torque_last, align 4
  %51 = load i32, i32* @VOLKSWAGEN_MAX_STEER, align 4
  %52 = load i32, i32* @VOLKSWAGEN_MAX_RATE_UP, align 4
  %53 = load i32, i32* @VOLKSWAGEN_MAX_RATE_DOWN, align 4
  %54 = load i32, i32* @VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE, align 4
  %55 = load i32, i32* @VOLKSWAGEN_DRIVER_TORQUE_FACTOR, align 4
  %56 = call i32 @driver_limit_check(i32 %49, i32 %50, i32* @volkswagen_torque_driver, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @volkswagen_desired_torque_last, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @volkswagen_rt_torque_last, align 4
  %62 = load i32, i32* @VOLKSWAGEN_MAX_RT_DELTA, align 4
  %63 = call i32 @rt_rate_limit_check(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @volkswagen_ts_last, align 8
  %68 = call i64 @get_ts_elapsed(i64 %66, i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @VOLKSWAGEN_RT_INTERVAL, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %41
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* @volkswagen_rt_torque_last, align 4
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* @volkswagen_ts_last, align 8
  br label %75

75:                                               ; preds = %72, %41
  br label %76

76:                                               ; preds = %75, %35
  %77 = load i64, i64* @controls_allowed, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %79, %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @controls_allowed, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* @volkswagen_desired_torque_last, align 4
  store i32 0, i32* @volkswagen_rt_torque_last, align 4
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* @volkswagen_ts_last, align 8
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %1
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @MSG_GRA_ACC_01, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i64, i64* @controls_allowed, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @GET_BYTE(i32* %107, i32 2)
  %109 = and i32 %108, 9
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %106
  br label %113

113:                                              ; preds = %112, %103, %99, %96
  %114 = load i32, i32* %5, align 4
  ret i32 %114
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
