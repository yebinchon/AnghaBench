; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.gl_video* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.gl_video* }

@VO_PASS_PERF_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_video_uninit(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %5 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %6 = icmp ne %struct.gl_video* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %104

8:                                                ; preds = %1
  %9 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %10 = call i32 @uninit_video(%struct.gl_video* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %26, %8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %14 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %19 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %18, i32 0, i32 12
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ra_hwdec_uninit(i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %31 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %33 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gl_sc_destroy(i32 %34)
  %36 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %37 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %40 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %39, i32 0, i32 10
  %41 = call i32 @ra_tex_free(i32 %38, i32* %40)
  %42 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %43 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %46 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %45, i32 0, i32 8
  %47 = call i32 @ra_buf_free(i32 %44, i32* %46)
  %48 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %49 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @timer_pool_destroy(i32 %50)
  %52 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %53 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @timer_pool_destroy(i32 %54)
  %56 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %57 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @timer_pool_destroy(i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %85, %29
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @VO_PASS_PERF_MAX, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %66 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.gl_video*, %struct.gl_video** %72, align 8
  %74 = call i32 @talloc_free(%struct.gl_video* %73)
  %75 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %76 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.gl_video*, %struct.gl_video** %82, align 8
  %84 = call i32 @talloc_free(%struct.gl_video* %83)
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %60

88:                                               ; preds = %60
  %89 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %90 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mpgl_osd_destroy(i32 %91)
  %93 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %94 = call i32 @gc_pending_dr_fences(%struct.gl_video* %93, i32 1)
  %95 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %96 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %103 = call i32 @talloc_free(%struct.gl_video* %102)
  br label %104

104:                                              ; preds = %88, %7
  ret void
}

declare dso_local i32 @uninit_video(%struct.gl_video*) #1

declare dso_local i32 @ra_hwdec_uninit(i32) #1

declare dso_local i32 @gl_sc_destroy(i32) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @ra_buf_free(i32, i32*) #1

declare dso_local i32 @timer_pool_destroy(i32) #1

declare dso_local i32 @talloc_free(%struct.gl_video*) #1

declare dso_local i32 @mpgl_osd_destroy(i32) #1

declare dso_local i32 @gc_pending_dr_fences(%struct.gl_video*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
