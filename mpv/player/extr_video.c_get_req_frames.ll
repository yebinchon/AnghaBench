; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_get_req_frames.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_get_req_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@VO_CAP_NORETAIN = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32)* @get_req_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_req_frames(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %82

11:                                               ; preds = %2
  %12 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VO_CAP_NORETAIN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %82

23:                                               ; preds = %11
  %24 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %82

36:                                               ; preds = %28, %23
  %37 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %36
  store i32 1, i32* %3, align 4
  br label %82

53:                                               ; preds = %43
  %54 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 2
  store i32 %61, i32* %6, align 4
  %62 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %63 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %82

69:                                               ; preds = %53
  %70 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @vo_get_num_req_frames(%struct.TYPE_8__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %77 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @MP_ARRAY_SIZE(i32 %78)
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @MPCLAMP(i32 %74, i32 %75, i64 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %69, %67, %52, %35, %22, %10
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @vo_get_num_req_frames(%struct.TYPE_8__*) #1

declare dso_local i32 @MPCLAMP(i32, i32, i64) #1

declare dso_local i64 @MP_ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
