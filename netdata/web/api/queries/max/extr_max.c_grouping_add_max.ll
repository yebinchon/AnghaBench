; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/max/extr_max.c_grouping_add_max.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/max/extr_max.c_grouping_add_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.grouping_max = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grouping_add_max(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grouping_max*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @isnan(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.grouping_max*
  store %struct.grouping_max* %14, %struct.grouping_max** %5, align 8
  %15 = load %struct.grouping_max*, %struct.grouping_max** %5, align 8
  %16 = getelementptr inbounds %struct.grouping_max, %struct.grouping_max* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @calculated_number_fabs(i32 %20)
  %22 = load %struct.grouping_max*, %struct.grouping_max** %5, align 8
  %23 = getelementptr inbounds %struct.grouping_max, %struct.grouping_max* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @calculated_number_fabs(i32 %24)
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %19, %9
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.grouping_max*, %struct.grouping_max** %5, align 8
  %30 = getelementptr inbounds %struct.grouping_max, %struct.grouping_max* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.grouping_max*, %struct.grouping_max** %5, align 8
  %32 = getelementptr inbounds %struct.grouping_max, %struct.grouping_max* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %19
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @isnan(i32) #1

declare dso_local i64 @calculated_number_fabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
