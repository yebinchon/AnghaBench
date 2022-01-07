; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/median/extr_median.c_grouping_add_median.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/median/extr_median.c_grouping_add_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.grouping_median = type { i64, i64, i64* }

@.str = private unnamed_addr constant [106 x i8] c"INTERNAL ERROR: median buffer overflow on chart '%s' - next_pos = %zu, series_size = %zu, r->group = %ld.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grouping_add_median(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.grouping_median*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.grouping_median*
  store %struct.grouping_median* %10, %struct.grouping_median** %5, align 8
  %11 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %12 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %15 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %28 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %31 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @error(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29, i64 %32, i32 %35)
  br label %52

37:                                               ; preds = %2
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @calculated_number_isnumber(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %44 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %47 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 %42, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i32, i64, i64, i32) #1

declare dso_local i64 @calculated_number_isnumber(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
