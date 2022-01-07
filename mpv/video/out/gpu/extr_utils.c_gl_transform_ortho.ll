; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_ortho.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { float**, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_transform_ortho(%struct.gl_transform* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.gl_transform*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.gl_transform* %0, %struct.gl_transform** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load float, float* %10, align 4
  %13 = load float, float* %9, align 4
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load float, float* %9, align 4
  store float %16, float* %11, align 4
  %17 = load float, float* %11, align 4
  %18 = load float, float* %10, align 4
  %19 = fsub float %17, %18
  store float %19, float* %9, align 4
  %20 = load float, float* %11, align 4
  store float %20, float* %10, align 4
  br label %21

21:                                               ; preds = %15, %5
  %22 = load float, float* %8, align 4
  %23 = load float, float* %7, align 4
  %24 = fsub float %22, %23
  %25 = fdiv float 2.000000e+00, %24
  %26 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %27 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %26, i32 0, i32 0
  %28 = load float**, float*** %27, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float %25, float* %31, align 4
  %32 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %33 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %32, i32 0, i32 0
  %34 = load float**, float*** %33, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float 0.000000e+00, float* %37, align 4
  %38 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %39 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %38, i32 0, i32 0
  %40 = load float**, float*** %39, align 8
  %41 = getelementptr inbounds float*, float** %40, i64 1
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  store float 0.000000e+00, float* %43, align 4
  %44 = load float, float* %10, align 4
  %45 = load float, float* %9, align 4
  %46 = fsub float %44, %45
  %47 = fdiv float 2.000000e+00, %46
  %48 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %49 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %48, i32 0, i32 0
  %50 = load float**, float*** %49, align 8
  %51 = getelementptr inbounds float*, float** %50, i64 1
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  store float %47, float* %53, align 4
  %54 = load float, float* %8, align 4
  %55 = load float, float* %7, align 4
  %56 = fadd float %54, %55
  %57 = fneg float %56
  %58 = load float, float* %8, align 4
  %59 = load float, float* %7, align 4
  %60 = fsub float %58, %59
  %61 = fdiv float %57, %60
  %62 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %63 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 0
  store float %61, float* %65, align 4
  %66 = load float, float* %10, align 4
  %67 = load float, float* %9, align 4
  %68 = fadd float %66, %67
  %69 = fneg float %68
  %70 = load float, float* %10, align 4
  %71 = load float, float* %9, align 4
  %72 = fsub float %70, %71
  %73 = fdiv float %69, %72
  %74 = load %struct.gl_transform*, %struct.gl_transform** %6, align 8
  %75 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 1
  store float %73, float* %77, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
