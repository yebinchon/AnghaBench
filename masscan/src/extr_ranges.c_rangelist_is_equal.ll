; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_is_equal.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_is_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RangeList*, %struct.RangeList*)* @rangelist_is_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangelist_is_equal(%struct.RangeList* %0, %struct.RangeList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca %struct.RangeList*, align 8
  %6 = alloca i32, align 4
  store %struct.RangeList* %0, %struct.RangeList** %4, align 8
  store %struct.RangeList* %1, %struct.RangeList** %5, align 8
  %7 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %8 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %11 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %61, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %19 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %16
  %23 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %24 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %32 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %43 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %51 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %49, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %65

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %16

64:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %40, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
