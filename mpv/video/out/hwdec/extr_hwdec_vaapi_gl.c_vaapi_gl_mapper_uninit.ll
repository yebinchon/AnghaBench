; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.priv* }
%struct.priv = type { %struct.vaapi_gl_mapper_priv*, i32* }
%struct.vaapi_gl_mapper_priv = type { i64* }
%struct.TYPE_3__ = type { i32 (i32, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @vaapi_gl_mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vaapi_gl_mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.vaapi_gl_mapper_priv*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %7 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %11, align 8
  store %struct.vaapi_gl_mapper_priv* %12, %struct.vaapi_gl_mapper_priv** %4, align 8
  %13 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %14 = icmp ne %struct.vaapi_gl_mapper_priv* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %1
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %17 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_3__* @ra_gl_get(i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32, i64*)*, i32 (i32, i64*)** %21, align 8
  %23 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %24 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 %22(i32 4, i64* %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %32 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %38 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @ra_tex_free(i32 %39, i32* %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %52 = call i32 @talloc_free(%struct.vaapi_gl_mapper_priv* %51)
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  store %struct.vaapi_gl_mapper_priv* null, %struct.vaapi_gl_mapper_priv** %54, align 8
  br label %55

55:                                               ; preds = %50, %1
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(i32) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @talloc_free(%struct.vaapi_gl_mapper_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
