; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_get_point.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_get_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32, i32, i32 }
%struct.bounds = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bounds_get_point(%struct.vec3* %0, %struct.bounds* %1, i32 %2) #0 {
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.bounds*, align 8
  %6 = alloca i32, align 4
  store %struct.vec3* %0, %struct.vec3** %4, align 8
  store %struct.bounds* %1, %struct.bounds** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ugt i32 %7, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %65

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.bounds*, %struct.bounds** %5, align 8
  %15 = getelementptr inbounds %struct.bounds, %struct.bounds* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vec3*, %struct.vec3** %4, align 8
  %19 = getelementptr inbounds %struct.vec3, %struct.vec3* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 4
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %10
  %23 = load %struct.bounds*, %struct.bounds** %5, align 8
  %24 = getelementptr inbounds %struct.bounds, %struct.bounds* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vec3*, %struct.vec3** %4, align 8
  %28 = getelementptr inbounds %struct.vec3, %struct.vec3* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.bounds*, %struct.bounds** %5, align 8
  %34 = getelementptr inbounds %struct.bounds, %struct.bounds* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vec3*, %struct.vec3** %4, align 8
  %38 = getelementptr inbounds %struct.vec3, %struct.vec3* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.bounds*, %struct.bounds** %5, align 8
  %43 = getelementptr inbounds %struct.bounds, %struct.bounds* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vec3*, %struct.vec3** %4, align 8
  %47 = getelementptr inbounds %struct.vec3, %struct.vec3* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %32
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.bounds*, %struct.bounds** %5, align 8
  %53 = getelementptr inbounds %struct.bounds, %struct.bounds* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.bounds*, %struct.bounds** %5, align 8
  %58 = getelementptr inbounds %struct.bounds, %struct.bounds* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  %63 = load %struct.vec3*, %struct.vec3** %4, align 8
  %64 = getelementptr inbounds %struct.vec3, %struct.vec3* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
