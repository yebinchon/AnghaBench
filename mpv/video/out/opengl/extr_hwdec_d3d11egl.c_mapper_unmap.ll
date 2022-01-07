; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_unmap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.priv*, %struct.TYPE_2__* }
%struct.priv = type { i64 }
%struct.TYPE_2__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_unmap(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv_owner*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %6 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.priv_owner*, %struct.priv_owner** %9, align 8
  store %struct.priv_owner* %10, %struct.priv_owner** %3, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 2
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %19 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %22 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @ra_tex_free(i32 %20, i32* %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.priv*, %struct.priv** %4, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %38 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %37, i32 0, i32 1
  %39 = load i32 (i32, i64)*, i32 (i32, i64)** %38, align 8
  %40 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %41 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 %39(i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @ra_tex_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
