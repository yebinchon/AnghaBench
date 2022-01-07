; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_5__*, i32, %struct.priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @d3d11_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 2
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 2
  %17 = call i32 @ra_tex_free(%struct.TYPE_5__* %14, i32* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SAFE_RELEASE(i32 %21)
  %23 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vo_w32_uninit(i32 %25)
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SAFE_RELEASE(i32 %29)
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %18
  %36 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %41, align 8
  %43 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 %42(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %35, %18
  ret void
}

declare dso_local i32 @ra_tex_free(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SAFE_RELEASE(i32) #1

declare dso_local i32 @vo_w32_uninit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
