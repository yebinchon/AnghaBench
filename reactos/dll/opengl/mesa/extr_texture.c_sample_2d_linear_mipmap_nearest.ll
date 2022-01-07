; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_2d_linear_mipmap_nearest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_2d_linear_mipmap_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, float, float, float, i32*, i32*, i32*, i32*)* @sample_2d_linear_mipmap_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_2d_linear_mipmap_nearest(%struct.gl_texture_object* %0, float %1, float %2, float %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.gl_texture_object*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load float, float* %12, align 4
  %20 = fcmp ole float %19, 5.000000e-01
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i64 0, i64* %17, align 8
  br label %39

22:                                               ; preds = %8
  %23 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %24 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %18, align 8
  %30 = load float, float* %12, align 4
  %31 = fadd float %30, 0x3FDFFFFBC0000000
  %32 = fptosi float %31 to i64
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* %18, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* %18, align 8
  store i64 %37, i64* %17, align 8
  br label %38

38:                                               ; preds = %36, %22
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %42 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load float, float* %10, align 4
  %48 = load float, float* %11, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @sample_2d_linear(%struct.gl_texture_object* %40, %struct.TYPE_2__* %46, float %47, float %48, i32* %49, i32* %50, i32* %51, i32* %52)
  ret void
}

declare dso_local i32 @sample_2d_linear(%struct.gl_texture_object*, %struct.TYPE_2__*, float, float, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
