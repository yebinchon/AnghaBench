; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_vec3_inside.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_vec3_inside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.vec3 = type { i64, i64, i64 }

@EPSILON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bounds*, %struct.vec3*)* @bounds_vec3_inside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounds_vec3_inside(%struct.bounds* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.bounds*, align 8
  %4 = alloca %struct.vec3*, align 8
  store %struct.bounds* %0, %struct.bounds** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %5 = load %struct.vec3*, %struct.vec3** %4, align 8
  %6 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.bounds*, %struct.bounds** %3, align 8
  %9 = getelementptr inbounds %struct.bounds, %struct.bounds* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EPSILON, align 8
  %13 = sub nsw i64 %11, %12
  %14 = icmp sge i64 %7, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  %16 = load %struct.vec3*, %struct.vec3** %4, align 8
  %17 = getelementptr inbounds %struct.vec3, %struct.vec3* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bounds*, %struct.bounds** %3, align 8
  %20 = getelementptr inbounds %struct.bounds, %struct.bounds* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EPSILON, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp sle i64 %18, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %15
  %27 = load %struct.vec3*, %struct.vec3** %4, align 8
  %28 = getelementptr inbounds %struct.vec3, %struct.vec3* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bounds*, %struct.bounds** %3, align 8
  %31 = getelementptr inbounds %struct.bounds, %struct.bounds* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EPSILON, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp sge i64 %29, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %26
  %38 = load %struct.vec3*, %struct.vec3** %4, align 8
  %39 = getelementptr inbounds %struct.vec3, %struct.vec3* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bounds*, %struct.bounds** %3, align 8
  %42 = getelementptr inbounds %struct.bounds, %struct.bounds* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EPSILON, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sle i64 %40, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %37
  %49 = load %struct.vec3*, %struct.vec3** %4, align 8
  %50 = getelementptr inbounds %struct.vec3, %struct.vec3* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bounds*, %struct.bounds** %3, align 8
  %53 = getelementptr inbounds %struct.bounds, %struct.bounds* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EPSILON, align 8
  %57 = sub nsw i64 %55, %56
  %58 = icmp sge i64 %51, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.vec3*, %struct.vec3** %4, align 8
  %61 = getelementptr inbounds %struct.vec3, %struct.vec3* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bounds*, %struct.bounds** %3, align 8
  %64 = getelementptr inbounds %struct.bounds, %struct.bounds* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EPSILON, align 8
  %68 = add nsw i64 %66, %67
  %69 = icmp sle i64 %62, %68
  br label %70

70:                                               ; preds = %59, %48, %37, %26, %15, %2
  %71 = phi i1 [ false, %48 ], [ false, %37 ], [ false, %26 ], [ false, %15 ], [ false, %2 ], [ %69, %59 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
