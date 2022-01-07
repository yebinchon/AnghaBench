; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_size_dependent_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_size_dependent_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64*)*, i32 (i32, i64)*, i32 (i32, i32, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @d3d_size_dependent_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d_size_dependent_destroy(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 6
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** %16, align 8
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 4
  %23 = call i32 %17(i32 %20, i32 1, i64* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32, i64)*, i32 (i32, i64)** %25, align 8
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %26(i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %14, %1
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i64*)*, i32 (i32, i64*)** %43, align 8
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  %47 = call i32 %44(i32 1, i64* %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.priv*, %struct.priv** %3, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SAFE_RELEASE(i32 %53)
  %55 = load %struct.priv*, %struct.priv** %3, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SAFE_RELEASE(i32 %57)
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @SAFE_RELEASE(i32 %61)
  ret void
}

declare dso_local i32 @SAFE_RELEASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
