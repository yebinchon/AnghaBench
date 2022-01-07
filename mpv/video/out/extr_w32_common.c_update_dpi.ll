; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_dpi.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_dpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32, i64*, i64*)* }

@MDT_EFFECTIVE_DPI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DPI detected from the new API: %d\0A\00", align 1
@LOGPIXELSX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DPI detected from the old API: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Couldn't determine DPI, falling back to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*)* @update_dpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dpi(%struct.vo_w32_state* %0) #0 {
  %2 = alloca %struct.vo_w32_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %2, align 8
  %6 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %7 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (i32, i32, i64*, i64*)*, i64 (i32, i32, i64*, i64*)** %8, align 8
  %10 = icmp ne i64 (i32, i32, i64*, i64*)* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %13 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (i32, i32, i64*, i64*)*, i64 (i32, i32, i64*, i64*)** %14, align 8
  %16 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %17 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MDT_EFFECTIVE_DPI, align 4
  %20 = call i64 %15(i32 %18, i32 %19, i64* %3, i64* %4)
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %11
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %27 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %29 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %30 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MP_VERBOSE(%struct.vo_w32_state* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %58

33:                                               ; preds = %11, %1
  %34 = call i64 @GetDC(i32* null)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @LOGPIXELSX, align 4
  %40 = call i32 @GetDeviceCaps(i64 %38, i32 %39)
  %41 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %42 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ReleaseDC(i32* null, i64 %43)
  %45 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %46 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %47 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MP_VERBOSE(%struct.vo_w32_state* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %58

50:                                               ; preds = %33
  %51 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %52 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %51, i32 0, i32 0
  store i32 96, i32* %52, align 8
  %53 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %54 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %55 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @MP_VERBOSE(%struct.vo_w32_state* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %23, %50, %37
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_w32_state*, i8*, i32) #1

declare dso_local i64 @GetDC(i32*) #1

declare dso_local i32 @GetDeviceCaps(i64, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
