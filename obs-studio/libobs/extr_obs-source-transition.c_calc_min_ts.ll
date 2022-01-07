; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_calc_min_ts.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_calc_min_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__**)* @calc_min_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_min_ts(%struct.TYPE_3__** %0) #0 {
  %2 = alloca %struct.TYPE_3__**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %9, i64 %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25, %22
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %14, %8
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %5

46:                                               ; preds = %5
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
