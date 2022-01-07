; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_preload_video_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_preload_video_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.obs_source_frame = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"obs_source_preload_video\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.obs_source_frame*)* @obs_source_preload_video_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_preload_video_internal(%struct.TYPE_7__* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @obs_source_valid(%struct.TYPE_7__* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %64

9:                                                ; preds = %2
  %10 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %11 = icmp ne %struct.obs_source_frame* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %64

13:                                               ; preds = %9
  %14 = call i32 (...) @obs_enter_graphics()
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %17 = call i64 @preload_frame_changed(%struct.TYPE_7__* %15, %struct.obs_source_frame* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @obs_source_frame_destroy(i32 %22)
  %24 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %28 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %31 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @obs_source_frame_create(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %19, %13
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %41 = call i32 @copy_frame_data(i32 %39, %struct.obs_source_frame* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_async_texture_size(%struct.TYPE_7__* %42, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @update_async_textures(%struct.TYPE_7__* %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %59 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = call i32 (...) @obs_leave_graphics()
  br label %64

64:                                               ; preds = %36, %12, %8
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i64 @preload_frame_changed(%struct.TYPE_7__*, %struct.obs_source_frame*) #1

declare dso_local i32 @obs_source_frame_destroy(i32) #1

declare dso_local i32 @obs_source_frame_create(i32, i32, i32) #1

declare dso_local i32 @copy_frame_data(i32, %struct.obs_source_frame*) #1

declare dso_local i32 @set_async_texture_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @update_async_textures(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
