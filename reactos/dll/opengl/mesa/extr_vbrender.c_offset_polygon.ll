; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_offset_polygon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_offset_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float, float, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, float, float)* @offset_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @offset_polygon(%struct.TYPE_5__* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %13 = load float, float* %8, align 4
  %14 = fcmp olt float %13, 0x3F50624DE0000000
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load float, float* %8, align 4
  %17 = fcmp ogt float %16, 0xBF50624DE0000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store float 0.000000e+00, float* %12, align 4
  br label %52

19:                                               ; preds = %15, %4
  %20 = load float, float* %6, align 4
  %21 = load float, float* %8, align 4
  %22 = fdiv float %20, %21
  store float %22, float* %9, align 4
  %23 = load float, float* %7, align 4
  %24 = load float, float* %8, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %10, align 4
  %26 = load float, float* %9, align 4
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load float, float* %9, align 4
  %30 = fneg float %29
  store float %30, float* %9, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load float, float* %10, align 4
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load float, float* %10, align 4
  %36 = fneg float %35
  store float %36, float* %10, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load float, float* %9, align 4
  %39 = load float, float* %10, align 4
  %40 = call float @MAX2(float %38, float %39)
  store float %40, float* %11, align 4
  %41 = load float, float* %11, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = fmul float %41, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fadd float %46, %50
  store float %51, float* %12, align 4
  br label %52

52:                                               ; preds = %37, %18
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load float, float* %12, align 4
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi float [ %59, %58 ], [ 0.000000e+00, %60 ]
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store float %62, float* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load float, float* %12, align 4
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi float [ %71, %70 ], [ 0.000000e+00, %72 ]
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store float %74, float* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load float, float* %12, align 4
  br label %85

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi float [ %83, %82 ], [ 0.000000e+00, %84 ]
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store float %86, float* %88, align 8
  ret void
}

declare dso_local float @MAX2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
