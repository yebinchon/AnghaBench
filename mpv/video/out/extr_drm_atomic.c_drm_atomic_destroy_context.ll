; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_destroy_context.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_context = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_destroy_context(%struct.drm_atomic_context* %0) #0 {
  %2 = alloca %struct.drm_atomic_context*, align 8
  store %struct.drm_atomic_context* %0, %struct.drm_atomic_context** %2, align 8
  %3 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %4 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %7 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @drm_mode_destroy_blob(i32 %5, i32* %9)
  %11 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %12 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @drm_object_free(i32 %13)
  %15 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %16 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @drm_object_free(i32 %17)
  %19 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %20 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_object_free(i32 %21)
  %23 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %24 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @drm_object_free(i32 %25)
  %27 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %2, align 8
  %28 = call i32 @talloc_free(%struct.drm_atomic_context* %27)
  ret void
}

declare dso_local i32 @drm_mode_destroy_blob(i32, i32*) #1

declare dso_local i32 @drm_object_free(i32) #1

declare dso_local i32 @talloc_free(%struct.drm_atomic_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
