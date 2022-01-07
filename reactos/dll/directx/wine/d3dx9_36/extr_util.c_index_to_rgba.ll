; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_index_to_rgba.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_index_to_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { float, float, float, float }
%struct.TYPE_3__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec4*, %struct.vec4*, %struct.TYPE_3__*)* @index_to_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_to_rgba(%struct.vec4* %0, %struct.vec4* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.vec4*, align 8
  %5 = alloca %struct.vec4*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store %struct.vec4* %0, %struct.vec4** %4, align 8
  store %struct.vec4* %1, %struct.vec4** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.vec4*, %struct.vec4** %4, align 8
  %9 = getelementptr inbounds %struct.vec4, %struct.vec4* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %10, 2.550000e+02
  %12 = fadd float %11, 5.000000e-01
  %13 = fptoui float %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fdiv float %18, 2.550000e+02
  %20 = load %struct.vec4*, %struct.vec4** %5, align 8
  %21 = getelementptr inbounds %struct.vec4, %struct.vec4* %20, i32 0, i32 0
  store float %19, float* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fdiv float %26, 2.550000e+02
  %28 = load %struct.vec4*, %struct.vec4** %5, align 8
  %29 = getelementptr inbounds %struct.vec4, %struct.vec4* %28, i32 0, i32 1
  store float %27, float* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = fdiv float %34, 2.550000e+02
  %36 = load %struct.vec4*, %struct.vec4** %5, align 8
  %37 = getelementptr inbounds %struct.vec4, %struct.vec4* %36, i32 0, i32 2
  store float %35, float* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load float, float* %41, align 4
  %43 = fdiv float %42, 2.550000e+02
  %44 = load %struct.vec4*, %struct.vec4** %5, align 8
  %45 = getelementptr inbounds %struct.vec4, %struct.vec4* %44, i32 0, i32 3
  store float %43, float* %45, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
