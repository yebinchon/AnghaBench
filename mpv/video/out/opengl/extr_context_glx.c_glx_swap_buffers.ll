; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_glx_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_glx_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_4__*, %struct.priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @glx_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glx_swap_buffers(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @glXSwapBuffers(i32 %13, i32 %20)
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %28 = call i32 @update_vsync_oml(%struct.ra_ctx* %27)
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @glXSwapBuffers(i32, i32) #1

declare dso_local i32 @update_vsync_oml(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
