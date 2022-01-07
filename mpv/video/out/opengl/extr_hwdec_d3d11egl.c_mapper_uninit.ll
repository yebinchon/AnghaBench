; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.priv*, %struct.TYPE_4__* }
%struct.priv = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 (i32, i64)* }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv_owner*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %6 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.priv_owner*, %struct.priv_owner** %9, align 8
  store %struct.priv_owner* %10, %struct.priv_owner** %3, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %4, align 8
  %14 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %15 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_5__* @ra_gl_get(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %24 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %23, i32 0, i32 1
  %25 = load i32 (i32, i64)*, i32 (i32, i64)** %24, align 8
  %26 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %27 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %25(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.priv*, %struct.priv** %4, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %38(i32 2, i32 %41)
  ret void
}

declare dso_local %struct.TYPE_5__* @ra_gl_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
