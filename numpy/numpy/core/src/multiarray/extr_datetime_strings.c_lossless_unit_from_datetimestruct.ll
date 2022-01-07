; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_strings.c_lossless_unit_from_datetimestruct.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_strings.c_lossless_unit_from_datetimestruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i32, i32 }

@NPY_FR_as = common dso_local global i32 0, align 4
@NPY_FR_fs = common dso_local global i32 0, align 4
@NPY_FR_ps = common dso_local global i32 0, align 4
@NPY_FR_ns = common dso_local global i32 0, align 4
@NPY_FR_us = common dso_local global i32 0, align 4
@NPY_FR_ms = common dso_local global i32 0, align 4
@NPY_FR_s = common dso_local global i32 0, align 4
@NPY_FR_m = common dso_local global i32 0, align 4
@NPY_FR_h = common dso_local global i32 0, align 4
@NPY_FR_D = common dso_local global i32 0, align 4
@NPY_FR_M = common dso_local global i32 0, align 4
@NPY_FR_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @lossless_unit_from_datetimestruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lossless_unit_from_datetimestruct(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = srem i32 %6, 1000
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NPY_FR_as, align 4
  store i32 %10, i32* %2, align 4
  br label %85

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @NPY_FR_fs, align 4
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %21, 1000
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @NPY_FR_ps, align 4
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @NPY_FR_ns, align 4
  store i32 %32, i32* %2, align 4
  br label %85

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %36, 1000
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @NPY_FR_us, align 4
  store i32 %40, i32* %2, align 4
  br label %85

41:                                               ; preds = %33
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @NPY_FR_ms, align 4
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @NPY_FR_s, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @NPY_FR_m, align 4
  store i32 %61, i32* %2, align 4
  br label %85

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @NPY_FR_h, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %62
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @NPY_FR_D, align 4
  store i32 %75, i32* %2, align 4
  br label %85

76:                                               ; preds = %69
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @NPY_FR_M, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @NPY_FR_Y, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %81, %74, %67, %60, %53, %46, %39, %31, %24, %16, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
