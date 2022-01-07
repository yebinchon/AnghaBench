; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_datetime.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i32 }

@RTCHandle = common dso_local global i32 0, align 4
@RTC_FORMAT_BIN = common dso_local global i32 0, align 4
@RTC_HOURFORMAT12_AM = common dso_local global i32 0, align 4
@RTC_DAYLIGHTSAVING_NONE = common dso_local global i32 0, align 4
@RTC_STOREOPERATION_SET = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pyb_rtc_datetime(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call i32 (...) @rtc_init_finalise()
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @RTC_FORMAT_BIN, align 4
  %17 = call i32 @HAL_RTC_GetTime(i32* @RTCHandle, %struct.TYPE_7__* %7, i32 %16)
  %18 = load i32, i32* @RTC_FORMAT_BIN, align 4
  %19 = call i32 @HAL_RTC_GetDate(i32* @RTCHandle, %struct.TYPE_8__* %6, i32 %18)
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 2000
  %24 = call i32 @mp_obj_new_int(i8* %23)
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds i32, i32* %20, i64 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @mp_obj_new_int(i8* %27)
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @mp_obj_new_int(i8* %31)
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds i32, i32* %29, i64 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @mp_obj_new_int(i8* %35)
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds i32, i32* %33, i64 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @mp_obj_new_int(i8* %39)
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds i32, i32* %37, i64 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @mp_obj_new_int(i8* %43)
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds i32, i32* %41, i64 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @mp_obj_new_int(i8* %47)
  store i32 %48, i32* %45, align 4
  %49 = getelementptr inbounds i32, i32* %45, i64 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @rtc_subsec_to_us(i32 %51)
  %53 = call i32 @mp_obj_new_int(i8* %52)
  store i32 %53, i32* %49, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %55 = call i32 @mp_obj_new_tuple(i32 8, i32* %54)
  store i32 %55, i32* %3, align 4
  br label %108

56:                                               ; preds = %2
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mp_obj_get_array_fixed_n(i32 %59, i32 8, i32** %9)
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @mp_obj_get_int(i32 %63)
  %65 = getelementptr i8, i8* %64, i64 -2000
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @mp_obj_get_int(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @mp_obj_get_int(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @mp_obj_get_int(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @RTC_FORMAT_BIN, align 4
  %83 = call i32 @HAL_RTC_SetDate(i32* @RTCHandle, %struct.TYPE_8__* %10, i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @mp_obj_get_int(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @mp_obj_get_int(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i8* %92, i8** %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @mp_obj_get_int(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* @RTC_HOURFORMAT12_AM, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* @RTC_DAYLIGHTSAVING_NONE, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @RTC_STOREOPERATION_SET, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @RTC_FORMAT_BIN, align 4
  %106 = call i32 @HAL_RTC_SetTime(i32* @RTCHandle, %struct.TYPE_7__* %11, i32 %105)
  %107 = load i32, i32* @mp_const_none, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %56, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @rtc_init_finalise(...) #1

declare dso_local i32 @HAL_RTC_GetTime(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @HAL_RTC_GetDate(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mp_obj_new_int(i8*) #1

declare dso_local i8* @rtc_subsec_to_us(i32) #1

declare dso_local i32 @mp_obj_new_tuple(i32, i32*) #1

declare dso_local i32 @mp_obj_get_array_fixed_n(i32, i32, i32**) #1

declare dso_local i8* @mp_obj_get_int(i32) #1

declare dso_local i32 @HAL_RTC_SetDate(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @HAL_RTC_SetTime(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
