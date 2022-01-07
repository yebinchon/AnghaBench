; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/ses/extr_ses.c_grouping_flush_ses.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/ses/extr_ses.c_grouping_flush_ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.grouping_ses = type { double, i32 }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_ses(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.grouping_ses*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.grouping_ses*
  store %struct.grouping_ses* %11, %struct.grouping_ses** %6, align 8
  %12 = load %struct.grouping_ses*, %struct.grouping_ses** %6, align 8
  %13 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.grouping_ses*, %struct.grouping_ses** %6, align 8
  %18 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = call i32 @calculated_number_isnumber(double %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ true, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.grouping_ses*, %struct.grouping_ses** %6, align 8
  %35 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  store double %36, double* %3, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load double, double* %3, align 8
  ret double %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @calculated_number_isnumber(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
