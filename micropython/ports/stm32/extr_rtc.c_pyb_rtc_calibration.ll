; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_calibration.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"calibration value out of range\00", align 1
@RTC_SMOOTHCALIB_PLUSPULSES_SET = common dso_local global i32 0, align 4
@RTC_SMOOTHCALIB_PLUSPULSES_RESET = common dso_local global i32 0, align 4
@RTCHandle = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RTC_SMOOTHCALIB_PERIOD_32SEC = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i32 0, align 4
@RTC_CALIBOUTPUT_512HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pyb_rtc_calibration(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i32 (...) @rtc_init_finalise()
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 2
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mp_obj_get_int(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, -511
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %12
  %23 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @RTC_SMOOTHCALIB_PLUSPULSES_SET, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 512, %29
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @RTC_SMOOTHCALIB_PLUSPULSES_RESET, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @RTC_SMOOTHCALIB_PERIOD_32SEC, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @HAL_RTCEx_SetSmoothCalib(%struct.TYPE_7__* @RTCHandle, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @mp_const_none, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @RTCHandle, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 32768
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @RTCHandle, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 511
  %52 = sub nsw i32 512, %51
  store i32 %52, i32* %6, align 4
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @RTCHandle, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 511
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @mp_obj_new_int(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %35
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @rtc_init_finalise(...) #1

declare dso_local i32 @mp_obj_get_int(i32) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32 @HAL_RTCEx_SetSmoothCalib(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @mp_obj_new_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
