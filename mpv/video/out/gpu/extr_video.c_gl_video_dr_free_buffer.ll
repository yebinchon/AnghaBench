; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_dr_free_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_dr_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.dr_buffer*, i32 }
%struct.dr_buffer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @gl_video_dr_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_video_dr_free_buffer(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gl_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dr_buffer*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.gl_video*
  store %struct.gl_video* %9, %struct.gl_video** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %53, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %13 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %18 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %17, i32 0, i32 1
  %19 = load %struct.dr_buffer*, %struct.dr_buffer** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %19, i64 %21
  store %struct.dr_buffer* %22, %struct.dr_buffer** %7, align 8
  %23 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %16
  %31 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %39 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dr_buffer*, %struct.dr_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %41, i32 0, i32 0
  %43 = call i32 @ra_buf_free(i32 %40, %struct.TYPE_2__** %42)
  %44 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %45 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %44, i32 0, i32 1
  %46 = load %struct.dr_buffer*, %struct.dr_buffer** %45, align 8
  %47 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %48 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @MP_TARRAY_REMOVE_AT(%struct.dr_buffer* %46, i32 %49, i32 %50)
  br label %58

52:                                               ; preds = %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %10

56:                                               ; preds = %10
  %57 = call i32 @assert(i32 0)
  br label %58

58:                                               ; preds = %56, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ra_buf_free(i32, %struct.TYPE_2__**) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.dr_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
