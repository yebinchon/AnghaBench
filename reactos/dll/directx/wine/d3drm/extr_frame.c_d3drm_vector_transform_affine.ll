; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_vector_transform_affine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_vector_transform_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.d3drm_matrix = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.d3drm_matrix*)* @d3drm_vector_transform_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3drm_vector_transform_affine(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.d3drm_matrix* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.d3drm_matrix*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.d3drm_matrix* %2, %struct.d3drm_matrix** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %13 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %21 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = add nsw i32 %15, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %30 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = add nsw i32 %24, %32
  %34 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %35 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %45 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %53 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = add nsw i32 %47, %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %62 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = add nsw i32 %56, %64
  %66 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %67 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %77 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %85 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = add nsw i32 %79, %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %94 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = add nsw i32 %88, %96
  %98 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %6, align 8
  %99 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = bitcast %struct.TYPE_10__* %104 to i8*
  %106 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
