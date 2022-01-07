; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_ortho.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.matrix4 }
%struct.matrix4 = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_ortho(%struct.TYPE_4__* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
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
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.matrix4* %20, %struct.matrix4** %15, align 8
  %21 = load float, float* %10, align 4
  %22 = load float, float* %9, align 4
  %23 = fsub float %21, %22
  store float %23, float* %16, align 4
  %24 = load float, float* %12, align 4
  %25 = load float, float* %11, align 4
  %26 = fsub float %24, %25
  store float %26, float* %17, align 4
  %27 = load float, float* %14, align 4
  %28 = load float, float* %13, align 4
  %29 = fsub float %27, %28
  store float %29, float* %18, align 4
  %30 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %31 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %30, i32 0, i32 3
  %32 = call i32 @vec4_zero(%struct.TYPE_5__* %31)
  %33 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %34 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %33, i32 0, i32 2
  %35 = call i32 @vec4_zero(%struct.TYPE_5__* %34)
  %36 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %37 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %36, i32 0, i32 1
  %38 = call i32 @vec4_zero(%struct.TYPE_5__* %37)
  %39 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %40 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %39, i32 0, i32 0
  %41 = call i32 @vec4_zero(%struct.TYPE_5__* %40)
  %42 = load float, float* %16, align 4
  %43 = fdiv float 2.000000e+00, %42
  %44 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %45 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store float %43, float* %46, align 4
  %47 = load float, float* %9, align 4
  %48 = load float, float* %10, align 4
  %49 = fadd float %47, %48
  %50 = load float, float* %16, align 4
  %51 = fneg float %50
  %52 = fdiv float %49, %51
  %53 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %54 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store float %52, float* %55, align 4
  %56 = load float, float* %17, align 4
  %57 = fneg float %56
  %58 = fdiv float 2.000000e+00, %57
  %59 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %60 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store float %58, float* %61, align 4
  %62 = load float, float* %12, align 4
  %63 = load float, float* %11, align 4
  %64 = fadd float %62, %63
  %65 = load float, float* %17, align 4
  %66 = fdiv float %64, %65
  %67 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %68 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store float %66, float* %69, align 4
  %70 = load float, float* %18, align 4
  %71 = fdiv float -2.000000e+00, %70
  %72 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %73 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store float %71, float* %74, align 4
  %75 = load float, float* %14, align 4
  %76 = load float, float* %13, align 4
  %77 = fadd float %75, %76
  %78 = load float, float* %18, align 4
  %79 = fneg float %78
  %80 = fdiv float %77, %79
  %81 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %82 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store float %80, float* %83, align 4
  %84 = load %struct.matrix4*, %struct.matrix4** %15, align 8
  %85 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store float 1.000000e+00, float* %86, align 4
  ret void
}

declare dso_local i32 @vec4_zero(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
