; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_report_performance.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_report_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.pass_info* }
%struct.pass_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@VO_PASS_PERF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pass '%.*s': last %dus avg %dus peak %dus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @pass_report_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_report_performance(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pass_info*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %5 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %6 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %5, i32 0, i32 0
  %7 = load %struct.pass_info*, %struct.pass_info** %6, align 8
  %8 = icmp ne %struct.pass_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %54, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VO_PASS_PERF_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %17 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %16, i32 0, i32 0
  %18 = load %struct.pass_info*, %struct.pass_info** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %18, i64 %20
  store %struct.pass_info* %21, %struct.pass_info** %4, align 8
  %22 = load %struct.pass_info*, %struct.pass_info** %4, align 8
  %23 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %15
  %28 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %29 = load %struct.pass_info*, %struct.pass_info** %4, align 8
  %30 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BSTR_P(i64 %32)
  %34 = load %struct.pass_info*, %struct.pass_info** %4, align 8
  %35 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sdiv i32 %38, 1000
  %40 = load %struct.pass_info*, %struct.pass_info** %4, align 8
  %41 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = sdiv i32 %44, 1000
  %46 = load %struct.pass_info*, %struct.pass_info** %4, align 8
  %47 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sdiv i32 %50, 1000
  %52 = call i32 @MP_TRACE(%struct.gl_video* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %27, %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %11

57:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @MP_TRACE(%struct.gl_video*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BSTR_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
