; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_subaru.h_subaru_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_subaru.h_subaru_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@controls_allowed = common dso_local global i64 0, align 8
@SUBARU_MAX_STEER = common dso_local global i32 0, align 4
@subaru_desired_torque_last = common dso_local global i32 0, align 4
@subaru_torque_driver = common dso_local global i32 0, align 4
@SUBARU_MAX_RATE_UP = common dso_local global i32 0, align 4
@SUBARU_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@SUBARU_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@SUBARU_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@subaru_rt_torque_last = common dso_local global i32 0, align 4
@SUBARU_MAX_RT_DELTA = common dso_local global i32 0, align 4
@subaru_ts_last = common dso_local global i64 0, align 8
@SUBARU_RT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @subaru_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subaru_tx_hook(i32* %0) #0 {
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
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 290
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 356
  br i1 %17, label %18, label %91

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 290
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 16, i32 8
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GET_BYTES_04(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %24, %25
  %27 = and i32 %26, 8191
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @to_signed(i32 %31, i32 13)
  store i32 %32, i32* %6, align 4
  %33 = load i64, i64* @controls_allowed, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SUBARU_MAX_STEER, align 4
  %38 = load i32, i32* @SUBARU_MAX_STEER, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @max_limit_check(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @subaru_desired_torque_last, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SUBARU_MAX_STEER, align 4
  %47 = load i32, i32* @SUBARU_MAX_RATE_UP, align 4
  %48 = load i32, i32* @SUBARU_MAX_RATE_DOWN, align 4
  %49 = load i32, i32* @SUBARU_DRIVER_TORQUE_ALLOWANCE, align 4
  %50 = load i32, i32* @SUBARU_DRIVER_TORQUE_FACTOR, align 4
  %51 = call i32 @driver_limit_check(i32 %44, i32 %45, i32* @subaru_torque_driver, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* @subaru_desired_torque_last, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @subaru_rt_torque_last, align 4
  %57 = load i32, i32* @SUBARU_MAX_RT_DELTA, align 4
  %58 = call i32 @rt_rate_limit_check(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @subaru_ts_last, align 8
  %63 = call i64 @get_ts_elapsed(i64 %61, i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @SUBARU_RT_INTERVAL, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %35
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* @subaru_rt_torque_last, align 4
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* @subaru_ts_last, align 8
  br label %70

70:                                               ; preds = %67, %35
  br label %71

71:                                               ; preds = %70, %18
  %72 = load i64, i64* @controls_allowed, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %74, %71
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @controls_allowed, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* @subaru_desired_torque_last, align 4
  store i32 0, i32* @subaru_rt_torque_last, align 4
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* @subaru_ts_last, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %86
  br label %91

91:                                               ; preds = %90, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTES_04(i32*) #1

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
