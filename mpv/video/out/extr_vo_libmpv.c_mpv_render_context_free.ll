; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_mpv_render_context_free.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_mpv_render_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }

@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpv_render_context_free(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = icmp ne %struct.TYPE_11__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %122

6:                                                ; preds = %1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @mp_set_main_render_context(i32 %9, %struct.TYPE_11__* %10, i32 0)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 11
  %14 = call i64 @atomic_load(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %6
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kill_video_async(i32 %19)
  br label %21

21:                                               ; preds = %26, %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 11
  %24 = call i64 @atomic_load(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load i32, i32* @INFINITY, align 4
  %31 = call i32 @mp_dispatch_queue_process(%struct.TYPE_11__* %29, i32 %30)
  br label %21

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %6
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 11
  %42 = call i64 @atomic_load(i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %33
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @dr_helper_acquire_thread(%struct.TYPE_11__* %61)
  br label %63

63:                                               ; preds = %58, %33
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @mp_dispatch_queue_process(%struct.TYPE_11__* %66, i32 0)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = call i32 @forget_frames(%struct.TYPE_11__* %68, i32 1)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 %81(%struct.TYPE_11__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @talloc_free(%struct.TYPE_11__* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 7
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @talloc_free(%struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %74, %63
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = call i32 @talloc_free(%struct.TYPE_11__* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i32 @talloc_free(%struct.TYPE_11__* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = call i32 @pthread_cond_destroy(i32* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = call i32 @pthread_cond_destroy(i32* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = call i32 @pthread_mutex_destroy(i32* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = call i32 @pthread_mutex_destroy(i32* %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = call i32 @pthread_mutex_destroy(i32* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = call i32 @talloc_free(%struct.TYPE_11__* %120)
  br label %122

122:                                              ; preds = %96, %5
  ret void
}

declare dso_local i32 @mp_set_main_render_context(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @kill_video_async(i32) #1

declare dso_local i32 @mp_dispatch_queue_process(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dr_helper_acquire_thread(%struct.TYPE_11__*) #1

declare dso_local i32 @forget_frames(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_11__*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
