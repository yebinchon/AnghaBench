; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @d3d_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d_destroy(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 4
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 %17(i64 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SAFE_RELEASE(i32 %25)
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SAFE_RELEASE(i32 %29)
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @FreeLibrary(i64 %38)
  br label %40

40:                                               ; preds = %35, %22
  ret void
}

declare dso_local i32 @SAFE_RELEASE(i32) #1

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
