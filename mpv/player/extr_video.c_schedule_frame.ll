; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_schedule_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_schedule_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, double, double, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vo_frame = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Video sync mode %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.vo_frame*)* @schedule_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_frame(%struct.MPContext* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %7 = call i32 @handle_display_sync_frame(%struct.MPContext* %5, %struct.vo_frame* %6)
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @MP_VERBOSE(%struct.MPContext* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25, %12, %2
  %35 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %34
  %40 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 2
  store double 1.000000e+00, double* %41, align 8
  %42 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 3
  store double 1.000000e+00, double* %43, align 8
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = call i32 @update_playback_speed(%struct.MPContext* %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %47 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  br label %60

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %51
  %61 = phi i32 [ %58, %51 ], [ 0, %59 ]
  %62 = call i32 @update_av_diff(%struct.MPContext* %46, i32 %61)
  br label %63

63:                                               ; preds = %60, %34
  ret void
}

declare dso_local i32 @handle_display_sync_frame(%struct.MPContext*, %struct.vo_frame*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i8*) #1

declare dso_local i32 @update_playback_speed(%struct.MPContext*) #1

declare dso_local i32 @update_av_diff(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
