; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gc_pending_dr_fences.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gc_pending_dr_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.TYPE_4__*, %struct.dr_buffer* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.dr_buffer = type { %struct.mp_image*, i32 }
%struct.mp_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, i32)* @gc_pending_dr_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_pending_dr_fences(%struct.gl_video* %0, i32 %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dr_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_image*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %9

9:                                                ; preds = %48, %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %57, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %13 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %18 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %17, i32 0, i32 2
  %19 = load %struct.dr_buffer*, %struct.dr_buffer** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %19, i64 %21
  store %struct.dr_buffer* %22, %struct.dr_buffer** %6, align 8
  %23 = load %struct.dr_buffer*, %struct.dr_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %23, i32 0, i32 0
  %25 = load %struct.mp_image*, %struct.mp_image** %24, align 8
  %26 = icmp ne %struct.mp_image* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %57

28:                                               ; preds = %16
  %29 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %30 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %34, align 8
  %36 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %37 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.dr_buffer*, %struct.dr_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.TYPE_4__* %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45, %28
  %49 = load %struct.dr_buffer*, %struct.dr_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %49, i32 0, i32 0
  %51 = load %struct.mp_image*, %struct.mp_image** %50, align 8
  store %struct.mp_image* %51, %struct.mp_image** %8, align 8
  %52 = load %struct.dr_buffer*, %struct.dr_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.dr_buffer, %struct.dr_buffer* %52, i32 0, i32 0
  store %struct.mp_image* null, %struct.mp_image** %53, align 8
  %54 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %55 = call i32 @talloc_free(%struct.mp_image* %54)
  br label %9

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %10

60:                                               ; preds = %10
  ret void
}

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
