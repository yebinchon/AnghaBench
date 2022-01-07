; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compare_vertex_indices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compare_vertex_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point2d_index = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_vertex_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_vertex_indices(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.point2d_index*, align 8
  %6 = alloca %struct.point2d_index*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.point2d_index*
  store %struct.point2d_index* %11, %struct.point2d_index** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.point2d_index*
  store %struct.point2d_index* %13, %struct.point2d_index** %6, align 8
  %14 = load %struct.point2d_index*, %struct.point2d_index** %5, align 8
  %15 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.point2d_index*, %struct.point2d_index** %5, align 8
  %20 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  %24 = load %struct.point2d_index*, %struct.point2d_index** %6, align 8
  %25 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.point2d_index*, %struct.point2d_index** %6, align 8
  %30 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = fsub float %36, %39
  store float %40, float* %9, align 4
  %41 = load float, float* %9, align 4
  %42 = fcmp oeq float %41, 0.000000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = fsub float %46, %49
  store float %50, float* %9, align 4
  br label %51

51:                                               ; preds = %43, %2
  %52 = load float, float* %9, align 4
  %53 = fcmp oeq float %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %60

55:                                               ; preds = %51
  %56 = load float, float* %9, align 4
  %57 = fcmp ogt float %56, 0.000000e+00
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 -1, i32 1
  br label %60

60:                                               ; preds = %55, %54
  %61 = phi i32 [ 0, %54 ], [ %59, %55 ]
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
