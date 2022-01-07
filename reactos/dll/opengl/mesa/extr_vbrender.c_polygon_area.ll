; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_polygon_area.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_polygon_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vertex_buffer = type { float** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.vertex_buffer*, i64, i64*)* @polygon_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @polygon_area(%struct.vertex_buffer* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.vertex_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.vertex_buffer* %0, %struct.vertex_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %74, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = load i64, i64* %5, align 8
  %29 = urem i64 %27, %28
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %32, i32 0, i32 0
  %34 = load float**, float*** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds float*, float** %34, i64 %35
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  store float %39, float* %11, align 4
  %40 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %40, i32 0, i32 0
  %42 = load float**, float*** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds float*, float** %42, i64 %43
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  store float %47, float* %12, align 4
  %48 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %48, i32 0, i32 0
  %50 = load float**, float*** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds float*, float** %50, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  %55 = load float, float* %54, align 4
  store float %55, float* %13, align 4
  %56 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds float*, float** %58, i64 %59
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  store float %63, float* %14, align 4
  %64 = load float, float* %11, align 4
  %65 = load float, float* %13, align 4
  %66 = fsub float %64, %65
  %67 = load float, float* %12, align 4
  %68 = load float, float* %14, align 4
  %69 = fadd float %67, %68
  %70 = fmul float %66, %69
  store float %70, float* %15, align 4
  %71 = load float, float* %15, align 4
  %72 = load float, float* %7, align 4
  %73 = fadd float %72, %71
  store float %73, float* %7, align 4
  br label %74

74:                                               ; preds = %20
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %16

77:                                               ; preds = %16
  %78 = load float, float* %7, align 4
  %79 = fmul float %78, 5.000000e-01
  ret float %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
