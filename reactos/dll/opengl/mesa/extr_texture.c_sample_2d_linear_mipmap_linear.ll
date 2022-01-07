; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_2d_linear_mipmap_linear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_2d_linear_mipmap_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i64, i64, float*, float*, float*, float*)* @sample_2d_linear_mipmap_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_2d_linear_mipmap_linear(%struct.gl_texture_object* %0, i64 %1, i64 %2, i64 %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.gl_texture_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %28 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %29 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %17, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %8
  %39 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %41 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load float*, float** %13, align 8
  %49 = load float*, float** %14, align 8
  %50 = load float*, float** %15, align 8
  %51 = load float*, float** %16, align 8
  %52 = call i32 @sample_2d_linear(%struct.gl_texture_object* %39, %struct.TYPE_2__* %45, i64 %46, i64 %47, float* %48, float* %49, float* %50, float* %51)
  br label %128

53:                                               ; preds = %8
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @frac(i64 %54)
  store i64 %55, i64* %26, align 8
  %56 = load i64, i64* %12, align 8
  %57 = uitofp i64 %56 to float
  %58 = fadd float %57, 1.000000e+00
  %59 = fptoui float %58 to i64
  store i64 %59, i64* %27, align 8
  %60 = load i64, i64* %27, align 8
  %61 = load i64, i64* %17, align 8
  %62 = call i64 @CLAMP(i64 %60, i32 1, i64 %61)
  store i64 %62, i64* %27, align 8
  %63 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %64 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %65 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i64, i64* %27, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @sample_2d_linear(%struct.gl_texture_object* %63, %struct.TYPE_2__* %70, i64 %71, i64 %72, float* %18, float* %19, float* %20, float* %21)
  %74 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %75 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %76 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %76, align 8
  %78 = load i64, i64* %27, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @sample_2d_linear(%struct.gl_texture_object* %74, %struct.TYPE_2__* %80, i64 %81, i64 %82, float* %22, float* %23, float* %24, float* %25)
  %84 = load i64, i64* %26, align 8
  %85 = uitofp i64 %84 to float
  %86 = fsub float 1.000000e+00, %85
  %87 = load float, float* %18, align 4
  %88 = fmul float %86, %87
  %89 = load i64, i64* %26, align 8
  %90 = uitofp i64 %89 to float
  %91 = load float, float* %22, align 4
  %92 = fmul float %90, %91
  %93 = fadd float %88, %92
  %94 = load float*, float** %13, align 8
  store float %93, float* %94, align 4
  %95 = load i64, i64* %26, align 8
  %96 = uitofp i64 %95 to float
  %97 = fsub float 1.000000e+00, %96
  %98 = load float, float* %19, align 4
  %99 = fmul float %97, %98
  %100 = load i64, i64* %26, align 8
  %101 = uitofp i64 %100 to float
  %102 = load float, float* %23, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %99, %103
  %105 = load float*, float** %14, align 8
  store float %104, float* %105, align 4
  %106 = load i64, i64* %26, align 8
  %107 = uitofp i64 %106 to float
  %108 = fsub float 1.000000e+00, %107
  %109 = load float, float* %20, align 4
  %110 = fmul float %108, %109
  %111 = load i64, i64* %26, align 8
  %112 = uitofp i64 %111 to float
  %113 = load float, float* %24, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %110, %114
  %116 = load float*, float** %15, align 8
  store float %115, float* %116, align 4
  %117 = load i64, i64* %26, align 8
  %118 = uitofp i64 %117 to float
  %119 = fsub float 1.000000e+00, %118
  %120 = load float, float* %21, align 4
  %121 = fmul float %119, %120
  %122 = load i64, i64* %26, align 8
  %123 = uitofp i64 %122 to float
  %124 = load float, float* %25, align 4
  %125 = fmul float %123, %124
  %126 = fadd float %121, %125
  %127 = load float*, float** %16, align 8
  store float %126, float* %127, align 4
  br label %128

128:                                              ; preds = %53, %38
  ret void
}

declare dso_local i32 @sample_2d_linear(%struct.gl_texture_object*, %struct.TYPE_2__*, i64, i64, float*, float*, float*, float*) #1

declare dso_local i64 @frac(i64) #1

declare dso_local i64 @CLAMP(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
