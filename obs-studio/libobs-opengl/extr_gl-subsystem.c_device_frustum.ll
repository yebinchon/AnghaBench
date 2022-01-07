; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_frustum.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_frustum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.matrix4 }
%struct.matrix4 = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_frustum(%struct.TYPE_4__* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.matrix4*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.matrix4* %21, %struct.matrix4** %15, align 8
  %22 = load float, float* %10, align 4
  %23 = load float, float* %9, align 4
  %24 = fsub float %22, %23
  store float %24, float* %16, align 4
  %25 = load float, float* %11, align 4
  %26 = load float, float* %12, align 4
  %27 = fsub float %25, %26
  store float %27, float* %17, align 4
  %28 = load float, float* %13, align 4
  %29 = load float, float* %14, align 4
  %30 = fsub float %28, %29
  store float %30, float* %18, align 4
  %31 = load float, float* %13, align 4
  %32 = fmul float 2.000000e+00, %31
  store float %32, float* %19, align 4
  %33 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %34 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %33, i32 0, i32 3
  %35 = call i32 @vec4_zero(%struct.TYPE_5__* %34)
  %36 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %37 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %36, i32 0, i32 2
  %38 = call i32 @vec4_zero(%struct.TYPE_5__* %37)
  %39 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %40 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %39, i32 0, i32 0
  %41 = call i32 @vec4_zero(%struct.TYPE_5__* %40)
  %42 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %43 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %42, i32 0, i32 1
  %44 = call i32 @vec4_zero(%struct.TYPE_5__* %43)
  %45 = load float, float* %19, align 4
  %46 = load float, float* %16, align 4
  %47 = fdiv float %45, %46
  %48 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %49 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store float %47, float* %50, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %10, align 4
  %53 = fadd float %51, %52
  %54 = load float, float* %16, align 4
  %55 = fdiv float %53, %54
  %56 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %57 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store float %55, float* %58, align 4
  %59 = load float, float* %19, align 4
  %60 = load float, float* %17, align 4
  %61 = fdiv float %59, %60
  %62 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %63 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store float %61, float* %64, align 4
  %65 = load float, float* %12, align 4
  %66 = load float, float* %11, align 4
  %67 = fadd float %65, %66
  %68 = load float, float* %17, align 4
  %69 = fdiv float %67, %68
  %70 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %71 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store float %69, float* %72, align 4
  %73 = load float, float* %14, align 4
  %74 = load float, float* %13, align 4
  %75 = fadd float %73, %74
  %76 = load float, float* %18, align 4
  %77 = fdiv float %75, %76
  %78 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %79 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store float %77, float* %80, align 4
  %81 = load float, float* %13, align 4
  %82 = load float, float* %14, align 4
  %83 = fmul float %81, %82
  %84 = fmul float 2.000000e+00, %83
  %85 = load float, float* %18, align 4
  %86 = fdiv float %84, %85
  %87 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %88 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store float %86, float* %89, align 4
  %90 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %91 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store float -1.000000e+00, float* %92, align 4
  ret void
}

declare dso_local i32 @vec4_zero(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
