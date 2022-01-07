; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_update_vsync_oml.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_update_vsync_oml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_3__*, %struct.priv* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.priv = type { i32, i32 (i32, i32, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @update_vsync_oml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vsync_oml(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %11, align 8
  %13 = call i32 @assert(i32 (i32, i32, i32*, i32*, i32*)* %12)
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %15, align 8
  %17 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %16(i32 %23, i32 %30, i32* %4, i32* %5, i32* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @oml_sync_swap(i32* %36, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @assert(i32 (i32, i32, i32*, i32*, i32*)*) #1

declare dso_local i32 @oml_sync_swap(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
