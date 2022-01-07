; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_triangulation_get_next_point.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_triangulation_get_next_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.triangulation = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64* }
%struct.glyphinfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.point2d_index* }
%struct.point2d_index = type { i32, %struct.outline* }
%struct.outline = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.triangulation*, %struct.glyphinfo*, i64)* @triangulation_get_next_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @triangulation_get_next_point(%struct.triangulation* %0, %struct.glyphinfo* %1, i64 %2) #0 {
  %4 = alloca %struct.triangulation*, align 8
  %5 = alloca %struct.glyphinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.point2d_index*, align 8
  %10 = alloca %struct.outline*, align 8
  store %struct.triangulation* %0, %struct.triangulation** %4, align 8
  store %struct.glyphinfo* %1, %struct.glyphinfo** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %12 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %18 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %21, %16 ], [ 0, %22 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %26 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.glyphinfo*, %struct.glyphinfo** %5, align 8
  %34 = getelementptr inbounds %struct.glyphinfo, %struct.glyphinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.point2d_index*, %struct.point2d_index** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %36, i64 %37
  store %struct.point2d_index* %38, %struct.point2d_index** %9, align 8
  %39 = load %struct.point2d_index*, %struct.point2d_index** %9, align 8
  %40 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %39, i32 0, i32 1
  %41 = load %struct.outline*, %struct.outline** %40, align 8
  store %struct.outline* %41, %struct.outline** %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %23
  %45 = load %struct.point2d_index*, %struct.point2d_index** %9, align 8
  %46 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.outline*, %struct.outline** %10, align 8
  %49 = getelementptr inbounds %struct.outline, %struct.outline* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.outline*, %struct.outline** %10, align 8
  %54 = getelementptr inbounds %struct.outline, %struct.outline* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %52, %55
  store i32 %56, i32* %7, align 4
  br label %66

57:                                               ; preds = %23
  %58 = load %struct.point2d_index*, %struct.point2d_index** %9, align 8
  %59 = getelementptr inbounds %struct.point2d_index, %struct.point2d_index* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = load %struct.outline*, %struct.outline** %10, align 8
  %63 = getelementptr inbounds %struct.outline, %struct.outline* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %61, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %57, %44
  %67 = load %struct.outline*, %struct.outline** %10, align 8
  %68 = getelementptr inbounds %struct.outline, %struct.outline* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  ret i32* %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
