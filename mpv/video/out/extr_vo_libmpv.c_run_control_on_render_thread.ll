; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_run_control_on_render_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_run_control_on_render_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_render_context = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)* }
%struct.vo_frame = type { i32 }

@VO_NOTIMPL = common dso_local global i32 0, align 4
@VO_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_control_on_render_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_control_on_render_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.mpv_render_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vo_frame*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %3, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.mpv_render_context*
  store %struct.mpv_render_context* %14, %struct.mpv_render_context** %4, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i8**, i8*** %3, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %88 [
    i32 128, label %25
    i32 129, label %64
  ]

25:                                               ; preds = %1
  %26 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %27 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %26, i32 0, i32 1
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %30 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.vo_frame* @vo_frame_ref(i32 %31)
  store %struct.vo_frame* %32, %struct.vo_frame** %8, align 8
  %33 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %34 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %33, i32 0, i32 1
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load %struct.vo_frame*, %struct.vo_frame** %8, align 8
  %37 = icmp ne %struct.vo_frame* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %25
  %39 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %40 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)*, i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %49 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)*, i32 (%struct.TYPE_5__*, %struct.vo_frame*, i8*)** %53, align 8
  %55 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %56 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load %struct.vo_frame*, %struct.vo_frame** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 %54(%struct.TYPE_5__* %57, %struct.vo_frame* %58, i8* %59)
  br label %61

61:                                               ; preds = %47, %38, %25
  %62 = load %struct.vo_frame*, %struct.vo_frame** %8, align 8
  %63 = call i32 @talloc_free(%struct.vo_frame* %62)
  br label %88

64:                                               ; preds = %1
  %65 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %66 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_5__*, i8*)* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %75 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %79, align 8
  %81 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %82 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 %80(%struct.TYPE_5__* %83, i8* %84)
  %86 = load i32, i32* @VO_TRUE, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %73, %64
  br label %88

88:                                               ; preds = %1, %87, %61
  %89 = load i32, i32* %7, align 4
  %90 = load i8**, i8*** %3, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 3
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %89, i32* %93, align 4
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.vo_frame* @vo_frame_ref(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @talloc_free(%struct.vo_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
