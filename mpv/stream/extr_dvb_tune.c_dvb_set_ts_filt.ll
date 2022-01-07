; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_set_ts_filt.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_set_ts_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_pes_filter_params = type { i32, i32, i32, i32, i32 }

@DMX_IN_FRONTEND = common dso_local global i32 0, align 4
@DMX_OUT_TS_TAP = common dso_local global i32 0, align 4
@DMX_IMMEDIATE_START = common dso_local global i32 0, align 4
@DMX_SET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ERROR IN DMX_SET_BUFFER_SIZE %i for fd %d: ERRNO: %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@DMX_SET_PES_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ERROR IN SETTING DMX_FILTER %i for fd %d: ERRNO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"SET PES FILTER ON PID %d to fd %d, RESULT: %d, ERRNO: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_set_ts_filt(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dmx_pes_filter_params, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %11, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @DMX_IN_FRONTEND, align 4
  %16 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %11, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @DMX_OUT_TS_TAP, align 4
  %18 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %11, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %11, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @DMX_IMMEDIATE_START, align 4
  %22 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  store i32 262144, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DMX_SET_BUFFER_SIZE, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i64 (i32, i32, ...) @ioctl(i32 %23, i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* @errno, align 8
  %33 = call i32 @MP_ERR(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %28, %4
  store i64 0, i64* @errno, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DMX_SET_PES_FILTER, align 4
  %37 = call i64 (i32, i32, ...) @ioctl(i32 %35, i32 %36, %struct.dmx_pes_filter_params* %11)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @MP_ERR(i32* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i64 %44)
  store i32 0, i32* %5, align 4
  br label %53

46:                                               ; preds = %34
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* @errno, align 8
  %52 = call i32 @MP_VERBOSE(i32* %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i64 %51)
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @MP_ERR(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @MP_VERBOSE(i32*, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
