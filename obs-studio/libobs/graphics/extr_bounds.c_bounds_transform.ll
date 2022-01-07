; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.matrix4 = type { i32 }
%struct.vec3 = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bounds_transform(%struct.bounds* %0, %struct.bounds* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.bounds*, align 8
  %5 = alloca %struct.bounds*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.bounds, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vec3, align 8
  store %struct.bounds* %0, %struct.bounds** %4, align 8
  store %struct.bounds* %1, %struct.bounds** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @memset(%struct.bounds* %7, i32 0, i32 48)
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %105, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %108

15:                                               ; preds = %12
  %16 = load %struct.bounds*, %struct.bounds** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @bounds_get_point(%struct.vec3* %10, %struct.bounds* %16, i32 %17)
  %19 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %20 = call i32 @vec3_transform(%struct.vec3* %10, %struct.vec3* %10, %struct.matrix4* %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %25 = call i32 @vec3_copy(%struct.TYPE_2__* %24, %struct.vec3* %10)
  %26 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %27 = call i32 @vec3_copy(%struct.TYPE_2__* %26, %struct.vec3* %10)
  store i32 1, i32* %8, align 4
  br label %104

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %53

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %52, %35
  %54 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %78

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %103

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %23
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %12

108:                                              ; preds = %12
  %109 = load %struct.bounds*, %struct.bounds** %4, align 8
  %110 = call i32 @bounds_copy(%struct.bounds* %109, %struct.bounds* %7)
  ret void
}

declare dso_local i32 @memset(%struct.bounds*, i32, i32) #1

declare dso_local i32 @bounds_get_point(%struct.vec3*, %struct.bounds*, i32) #1

declare dso_local i32 @vec3_transform(%struct.vec3*, %struct.vec3*, %struct.matrix4*) #1

declare dso_local i32 @vec3_copy(%struct.TYPE_2__*, %struct.vec3*) #1

declare dso_local i32 @bounds_copy(%struct.bounds*, %struct.bounds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
