; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_inside.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_inside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bounds*, %struct.bounds*)* @bounds_inside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounds_inside(%struct.bounds* %0, %struct.bounds* %1) #0 {
  %3 = alloca %struct.bounds*, align 8
  %4 = alloca %struct.bounds*, align 8
  store %struct.bounds* %0, %struct.bounds** %3, align 8
  store %struct.bounds* %1, %struct.bounds** %4, align 8
  %5 = load %struct.bounds*, %struct.bounds** %4, align 8
  %6 = getelementptr inbounds %struct.bounds, %struct.bounds* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bounds*, %struct.bounds** %3, align 8
  %10 = getelementptr inbounds %struct.bounds, %struct.bounds* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %8, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  %15 = load %struct.bounds*, %struct.bounds** %4, align 8
  %16 = getelementptr inbounds %struct.bounds, %struct.bounds* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bounds*, %struct.bounds** %3, align 8
  %20 = getelementptr inbounds %struct.bounds, %struct.bounds* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %18, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %14
  %25 = load %struct.bounds*, %struct.bounds** %4, align 8
  %26 = getelementptr inbounds %struct.bounds, %struct.bounds* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bounds*, %struct.bounds** %3, align 8
  %30 = getelementptr inbounds %struct.bounds, %struct.bounds* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %28, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %24
  %35 = load %struct.bounds*, %struct.bounds** %4, align 8
  %36 = getelementptr inbounds %struct.bounds, %struct.bounds* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bounds*, %struct.bounds** %3, align 8
  %40 = getelementptr inbounds %struct.bounds, %struct.bounds* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load %struct.bounds*, %struct.bounds** %4, align 8
  %46 = getelementptr inbounds %struct.bounds, %struct.bounds* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bounds*, %struct.bounds** %3, align 8
  %50 = getelementptr inbounds %struct.bounds, %struct.bounds* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %48, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.bounds*, %struct.bounds** %4, align 8
  %56 = getelementptr inbounds %struct.bounds, %struct.bounds* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bounds*, %struct.bounds** %3, align 8
  %60 = getelementptr inbounds %struct.bounds, %struct.bounds* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %58, %62
  br label %64

64:                                               ; preds = %54, %44, %34, %24, %14, %2
  %65 = phi i1 [ false, %44 ], [ false, %34 ], [ false, %24 ], [ false, %14 ], [ false, %2 ], [ %63, %54 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
