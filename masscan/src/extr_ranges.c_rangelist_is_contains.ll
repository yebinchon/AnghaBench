; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_is_contains.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_is_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.Range* }
%struct.Range = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rangelist_is_contains(%struct.RangeList* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Range*, align 8
  store %struct.RangeList* %0, %struct.RangeList** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %11 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %16 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %15, i32 0, i32 1
  %17 = load %struct.Range*, %struct.Range** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Range, %struct.Range* %17, i64 %19
  store %struct.Range* %20, %struct.Range** %7, align 8
  %21 = load %struct.Range*, %struct.Range** %7, align 8
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.Range*, %struct.Range** %7, align 8
  %29 = getelementptr inbounds %struct.Range, %struct.Range* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ule i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %38

33:                                               ; preds = %26, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
