; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-filter.c_readscan_filter_pass.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-filter.c_readscan_filter_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readscan_filter_pass(i32 %0, i32 %1, i32 %2, %struct.RangeList* %3, %struct.RangeList* %4, %struct.RangeList* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RangeList*, align 8
  %12 = alloca %struct.RangeList*, align 8
  %13 = alloca %struct.RangeList*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.RangeList* %3, %struct.RangeList** %11, align 8
  store %struct.RangeList* %4, %struct.RangeList** %12, align 8
  store %struct.RangeList* %5, %struct.RangeList** %13, align 8
  %14 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %15 = icmp ne %struct.RangeList* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %6
  %17 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %18 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.RangeList*, %struct.RangeList** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @rangelist_is_contains(%struct.RangeList* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %59

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %16, %6
  %29 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %30 = icmp ne %struct.RangeList* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %33 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.RangeList*, %struct.RangeList** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rangelist_is_contains(%struct.RangeList* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %59

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %31, %28
  %44 = load %struct.RangeList*, %struct.RangeList** %13, align 8
  %45 = icmp ne %struct.RangeList* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.RangeList*, %struct.RangeList** %13, align 8
  %48 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.RangeList*, %struct.RangeList** %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @rangelist_is_contains(%struct.RangeList* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %59

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %46, %43
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %56, %41, %26
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @rangelist_is_contains(%struct.RangeList*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
