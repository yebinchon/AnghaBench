; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rtc/extr_..kselftest_harness.h___register_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rtc/extr_..kselftest_harness.h___register_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__test_metadata = type { %struct.__test_metadata*, %struct.__test_metadata* }

@__test_count = common dso_local global i32 0, align 4
@__test_list = common dso_local global %struct.__test_metadata* null, align 8
@__constructor_order = common dso_local global i64 0, align 8
@_CONSTRUCTOR_ORDER_FORWARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__test_metadata*)* @__register_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__register_test(%struct.__test_metadata* %0) #0 {
  %2 = alloca %struct.__test_metadata*, align 8
  store %struct.__test_metadata* %0, %struct.__test_metadata** %2, align 8
  %3 = load i32, i32* @__test_count, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @__test_count, align 4
  %5 = load %struct.__test_metadata*, %struct.__test_metadata** @__test_list, align 8
  %6 = icmp eq %struct.__test_metadata* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  store %struct.__test_metadata* %8, %struct.__test_metadata** @__test_list, align 8
  %9 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %9, i32 0, i32 1
  store %struct.__test_metadata* null, %struct.__test_metadata** %10, align 8
  %11 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %12 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %12, i32 0, i32 0
  store %struct.__test_metadata* %11, %struct.__test_metadata** %13, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load i64, i64* @__constructor_order, align 8
  %16 = load i64, i64* @_CONSTRUCTOR_ORDER_FORWARD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %20 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %19, i32 0, i32 1
  store %struct.__test_metadata* null, %struct.__test_metadata** %20, align 8
  %21 = load %struct.__test_metadata*, %struct.__test_metadata** @__test_list, align 8
  %22 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %21, i32 0, i32 0
  %23 = load %struct.__test_metadata*, %struct.__test_metadata** %22, align 8
  %24 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %25 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %24, i32 0, i32 0
  store %struct.__test_metadata* %23, %struct.__test_metadata** %25, align 8
  %26 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %27 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %28 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %27, i32 0, i32 0
  %29 = load %struct.__test_metadata*, %struct.__test_metadata** %28, align 8
  %30 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %29, i32 0, i32 1
  store %struct.__test_metadata* %26, %struct.__test_metadata** %30, align 8
  %31 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %32 = load %struct.__test_metadata*, %struct.__test_metadata** @__test_list, align 8
  %33 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %32, i32 0, i32 0
  store %struct.__test_metadata* %31, %struct.__test_metadata** %33, align 8
  br label %47

34:                                               ; preds = %14
  %35 = load %struct.__test_metadata*, %struct.__test_metadata** @__test_list, align 8
  %36 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %37 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %36, i32 0, i32 1
  store %struct.__test_metadata* %35, %struct.__test_metadata** %37, align 8
  %38 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %39 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %40 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %39, i32 0, i32 1
  %41 = load %struct.__test_metadata*, %struct.__test_metadata** %40, align 8
  %42 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %41, i32 0, i32 0
  store %struct.__test_metadata* %38, %struct.__test_metadata** %42, align 8
  %43 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %44 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %45 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %44, i32 0, i32 0
  store %struct.__test_metadata* %43, %struct.__test_metadata** %45, align 8
  %46 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  store %struct.__test_metadata* %46, %struct.__test_metadata** @__test_list, align 8
  br label %47

47:                                               ; preds = %7, %34, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
