; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_VertexWeights.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_VertexWeights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, double*)* @VertexWeights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VertexWeights(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store double* %3, double** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call double @VertL1dist(%struct.TYPE_7__* %11, %struct.TYPE_7__* %12)
  store double %13, double* %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call double @VertL1dist(%struct.TYPE_7__* %14, %struct.TYPE_7__* %15)
  store double %16, double* %10, align 8
  %17 = load double, double* %10, align 8
  %18 = fmul double 5.000000e-01, %17
  %19 = load double, double* %9, align 8
  %20 = load double, double* %10, align 8
  %21 = fadd double %19, %20
  %22 = fdiv double %18, %21
  %23 = load double*, double** %8, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  store double %22, double* %24, align 8
  %25 = load double, double* %9, align 8
  %26 = fmul double 5.000000e-01, %25
  %27 = load double, double* %9, align 8
  %28 = load double, double* %10, align 8
  %29 = fadd double %27, %28
  %30 = fdiv double %26, %29
  %31 = load double*, double** %8, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  store double %30, double* %32, align 8
  %33 = load double*, double** %8, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  %35 = load double, double* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = fmul double %35, %40
  %42 = load double*, double** %8, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  %44 = load double, double* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = fmul double %44, %49
  %51 = fadd double %41, %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 0
  %56 = load double, double* %55, align 8
  %57 = fadd double %56, %51
  store double %57, double* %55, align 8
  %58 = load double*, double** %8, align 8
  %59 = getelementptr inbounds double, double* %58, i64 0
  %60 = load double, double* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = fmul double %60, %65
  %67 = load double*, double** %8, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load double*, double** %71, align 8
  %73 = getelementptr inbounds double, double* %72, i64 1
  %74 = load double, double* %73, align 8
  %75 = fmul double %69, %74
  %76 = fadd double %66, %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = fadd double %81, %76
  store double %82, double* %80, align 8
  %83 = load double*, double** %8, align 8
  %84 = getelementptr inbounds double, double* %83, i64 0
  %85 = load double, double* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load double*, double** %87, align 8
  %89 = getelementptr inbounds double, double* %88, i64 2
  %90 = load double, double* %89, align 8
  %91 = fmul double %85, %90
  %92 = load double*, double** %8, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load double*, double** %96, align 8
  %98 = getelementptr inbounds double, double* %97, i64 2
  %99 = load double, double* %98, align 8
  %100 = fmul double %94, %99
  %101 = fadd double %91, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load double*, double** %103, align 8
  %105 = getelementptr inbounds double, double* %104, i64 2
  %106 = load double, double* %105, align 8
  %107 = fadd double %106, %101
  store double %107, double* %105, align 8
  ret void
}

declare dso_local double @VertL1dist(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
