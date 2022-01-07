; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_new_fence.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_new_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32)* }

@GL_SYNC_GPU_COMMANDS_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @new_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_fence(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (i32, i32)*, i64 (i32, i32)** %10, align 8
  %12 = icmp ne i64 (i32, i32)* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (i32, i32)*, i64 (i32, i32)** %16, align 8
  %18 = load i32, i32* @GL_SYNC_GPU_COMMANDS_COMPLETE, align 4
  %19 = call i64 %17(i32 %18, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @MP_TARRAY_APPEND(%struct.priv* %23, i32 %26, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %22, %13
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.priv*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
