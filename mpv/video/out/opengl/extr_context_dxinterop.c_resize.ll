; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_2__*, i32, %struct.priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 2
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = call i32 @dxgl_reset(%struct.ra_ctx* %7)
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ra_gl_ctx_resize(i32 %11, i32 %16, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @dxgl_reset(%struct.ra_ctx*) #1

declare dso_local i32 @ra_gl_ctx_resize(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
