; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_1d_linear_mipmap_linear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_1d_linear_mipmap_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i64, float*, float*, float*, float*)* @sample_1d_linear_mipmap_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_1d_linear_mipmap_linear(%struct.gl_texture_object* %0, i64 %1, i64 %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca %struct.gl_texture_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %26 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %27 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %7
  %37 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %38 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %39 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load float*, float** %11, align 8
  %46 = load float*, float** %12, align 8
  %47 = load float*, float** %13, align 8
  %48 = load float*, float** %14, align 8
  %49 = call i32 @sample_1d_linear(%struct.gl_texture_object* %37, %struct.TYPE_2__* %43, i64 %44, float* %45, float* %46, float* %47, float* %48)
  br label %123

50:                                               ; preds = %7
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @frac(i64 %51)
  store i64 %52, i64* %24, align 8
  %53 = load i64, i64* %10, align 8
  %54 = uitofp i64 %53 to float
  %55 = fadd float %54, 1.000000e+00
  %56 = fptoui float %55 to i64
  store i64 %56, i64* %25, align 8
  %57 = load i64, i64* %25, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @CLAMP(i64 %57, i32 1, i64 %58)
  store i64 %59, i64* %25, align 8
  %60 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %61 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %62 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i64, i64* %25, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @sample_1d_linear(%struct.gl_texture_object* %60, %struct.TYPE_2__* %67, i64 %68, float* %16, float* %17, float* %18, float* %19)
  %70 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %71 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %72 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i64, i64* %25, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @sample_1d_linear(%struct.gl_texture_object* %70, %struct.TYPE_2__* %76, i64 %77, float* %20, float* %21, float* %22, float* %23)
  %79 = load i64, i64* %24, align 8
  %80 = uitofp i64 %79 to float
  %81 = fsub float 1.000000e+00, %80
  %82 = load float, float* %16, align 4
  %83 = fmul float %81, %82
  %84 = load i64, i64* %24, align 8
  %85 = uitofp i64 %84 to float
  %86 = load float, float* %20, align 4
  %87 = fmul float %85, %86
  %88 = fadd float %83, %87
  %89 = load float*, float** %11, align 8
  store float %88, float* %89, align 4
  %90 = load i64, i64* %24, align 8
  %91 = uitofp i64 %90 to float
  %92 = fsub float 1.000000e+00, %91
  %93 = load float, float* %17, align 4
  %94 = fmul float %92, %93
  %95 = load i64, i64* %24, align 8
  %96 = uitofp i64 %95 to float
  %97 = load float, float* %21, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %94, %98
  %100 = load float*, float** %12, align 8
  store float %99, float* %100, align 4
  %101 = load i64, i64* %24, align 8
  %102 = uitofp i64 %101 to float
  %103 = fsub float 1.000000e+00, %102
  %104 = load float, float* %18, align 4
  %105 = fmul float %103, %104
  %106 = load i64, i64* %24, align 8
  %107 = uitofp i64 %106 to float
  %108 = load float, float* %22, align 4
  %109 = fmul float %107, %108
  %110 = fadd float %105, %109
  %111 = load float*, float** %13, align 8
  store float %110, float* %111, align 4
  %112 = load i64, i64* %24, align 8
  %113 = uitofp i64 %112 to float
  %114 = fsub float 1.000000e+00, %113
  %115 = load float, float* %19, align 4
  %116 = fmul float %114, %115
  %117 = load i64, i64* %24, align 8
  %118 = uitofp i64 %117 to float
  %119 = load float, float* %23, align 4
  %120 = fmul float %118, %119
  %121 = fadd float %116, %120
  %122 = load float*, float** %14, align 8
  store float %121, float* %122, align 4
  br label %123

123:                                              ; preds = %50, %36
  ret void
}

declare dso_local i32 @sample_1d_linear(%struct.gl_texture_object*, %struct.TYPE_2__*, i64, float*, float*, float*, float*) #1

declare dso_local i64 @frac(i64) #1

declare dso_local i64 @CLAMP(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
