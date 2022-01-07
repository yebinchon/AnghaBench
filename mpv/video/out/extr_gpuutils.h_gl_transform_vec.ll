; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_gpuutils.h_gl_transform_vec.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_gpuutils.h_gl_transform_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { float**, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float*, float*, float*)* @gl_transform_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_transform_vec(float** %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.gl_transform, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = bitcast %struct.gl_transform* %5 to { float**, float* }*
  %11 = getelementptr inbounds { float**, float* }, { float**, float* }* %10, i32 0, i32 0
  store float** %0, float*** %11, align 8
  %12 = getelementptr inbounds { float**, float* }, { float**, float* }* %10, i32 0, i32 1
  store float* %1, float** %12, align 8
  store float* %2, float** %6, align 8
  store float* %3, float** %7, align 8
  %13 = load float*, float** %6, align 8
  %14 = load float, float* %13, align 4
  store float %14, float* %8, align 4
  %15 = load float*, float** %7, align 8
  %16 = load float, float* %15, align 4
  store float %16, float* %9, align 4
  %17 = load float, float* %8, align 4
  %18 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 0
  %19 = load float**, float*** %18, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 0
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  %24 = fmul float %17, %23
  %25 = load float, float* %9, align 4
  %26 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 0
  %27 = load float**, float*** %26, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = fmul float %25, %31
  %33 = fadd float %24, %32
  %34 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = fadd float %33, %37
  %39 = load float*, float** %6, align 8
  store float %38, float* %39, align 4
  %40 = load float, float* %8, align 4
  %41 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 0
  %42 = load float**, float*** %41, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 1
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = fmul float %40, %46
  %48 = load float, float* %9, align 4
  %49 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 0
  %50 = load float**, float*** %49, align 8
  %51 = getelementptr inbounds float*, float** %50, i64 1
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fmul float %48, %54
  %56 = fadd float %47, %55
  %57 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %5, i32 0, i32 1
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = fadd float %56, %60
  %62 = load float*, float** %7, align 8
  store float %61, float* %62, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
