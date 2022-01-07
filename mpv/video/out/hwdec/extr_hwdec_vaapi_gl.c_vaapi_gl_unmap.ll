; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_unmap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.priv* }
%struct.priv = type { %struct.vaapi_gl_mapper_priv* }
%struct.vaapi_gl_mapper_priv = type { i64*, i32 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @vaapi_gl_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vaapi_gl_unmap(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.vaapi_gl_mapper_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %6 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %10, align 8
  store %struct.vaapi_gl_mapper_priv* %11, %struct.vaapi_gl_mapper_priv** %4, align 8
  %12 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %13 = icmp ne %struct.vaapi_gl_mapper_priv* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %20 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %29 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %28, i32 0, i32 1
  %30 = load i32 (i32, i64)*, i32 (i32, i64)** %29, align 8
  %31 = call i32 (...) @eglGetCurrentDisplay()
  %32 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %33 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %30(i32 %31, i64 %38)
  br label %40

40:                                               ; preds = %27, %18
  %41 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %4, align 8
  %42 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %15

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @eglGetCurrentDisplay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
