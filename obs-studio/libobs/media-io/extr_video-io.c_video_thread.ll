; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_output = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"video-io: video thread\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"video_thread(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @video_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @video_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.video_output*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.video_output*
  store %struct.video_output* %6, %struct.video_output** %3, align 8
  %7 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @obs_get_profiler_name_store()
  %9 = load %struct.video_output*, %struct.video_output** %3, align 8
  %10 = getelementptr inbounds %struct.video_output, %struct.video_output* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @profile_store_name(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %45, %1
  %15 = load %struct.video_output*, %struct.video_output** %3, align 8
  %16 = getelementptr inbounds %struct.video_output, %struct.video_output* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @os_sem_wait(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.video_output*, %struct.video_output** %3, align 8
  %22 = getelementptr inbounds %struct.video_output, %struct.video_output* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %52

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @profile_start(i8* %27)
  br label %29

29:                                               ; preds = %41, %26
  %30 = load %struct.video_output*, %struct.video_output** %3, align 8
  %31 = getelementptr inbounds %struct.video_output, %struct.video_output* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.video_output*, %struct.video_output** %3, align 8
  %36 = call i32 @video_output_cur_frame(%struct.video_output* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load %struct.video_output*, %struct.video_output** %3, align 8
  %43 = getelementptr inbounds %struct.video_output, %struct.video_output* %42, i32 0, i32 0
  %44 = call i32 @os_atomic_inc_long(i32* %43)
  br label %29

45:                                               ; preds = %39
  %46 = load %struct.video_output*, %struct.video_output** %3, align 8
  %47 = getelementptr inbounds %struct.video_output, %struct.video_output* %46, i32 0, i32 0
  %48 = call i32 @os_atomic_inc_long(i32* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @profile_end(i8* %49)
  %51 = call i32 (...) @profile_reenable_thread()
  br label %14

52:                                               ; preds = %25, %14
  ret i8* null
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i8* @profile_store_name(i32, i8*, i32) #1

declare dso_local i32 @obs_get_profiler_name_store(...) #1

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i32 @profile_start(i8*) #1

declare dso_local i32 @video_output_cur_frame(%struct.video_output*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i32 @profile_end(i8*) #1

declare dso_local i32 @profile_reenable_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
