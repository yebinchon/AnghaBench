; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_mktime.c___wceex_mktime_internal.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_mktime.c___wceex_mktime_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@EPOCH_YEAR = common dso_local global i32 0, align 4
@TM_YEAR_BASE = common dso_local global i32 0, align 4
@MONTHDAYS = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i32)* @__wceex_mktime_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wceex_mktime_internal(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tm*, %struct.tm** %4, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 11
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EPOCH_YEAR, align 4
  %23 = load i32, i32* @TM_YEAR_BASE, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %13, %2
  store i32 -1, i32* %3, align 4
  br label %122

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* @EPOCH_YEAR, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TM_YEAR_BASE, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @IS_LEAP_YEAR(i32 %38)
  %40 = add nsw i64 365, %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.tm*, %struct.tm** %4, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i64*, i64** @MONTHDAYS, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.tm*, %struct.tm** %4, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load %struct.tm*, %struct.tm** %4, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tm*, %struct.tm** %4, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %94

83:                                               ; preds = %68
  %84 = load %struct.tm*, %struct.tm** %4, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TM_YEAR_BASE, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i64 @IS_LEAP_YEAR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %83, %68
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.tm*, %struct.tm** %4, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = sub nsw i32 %99, 1
  %101 = mul nsw i32 24, %100
  %102 = load %struct.tm*, %struct.tm** %4, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 60, %106
  %108 = load %struct.tm*, %struct.tm** %4, align 8
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 60, %112
  %114 = load %struct.tm*, %struct.tm** %4, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %94, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @IS_LEAP_YEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
