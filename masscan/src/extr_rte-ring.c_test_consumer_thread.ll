; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rte-ring.c_test_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rte-ring.c_test_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test = type { i32, i64, i32, %struct.rte_ring* }
%struct.rte_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_consumer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Test*, align 8
  %4 = alloca %struct.rte_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.Test*
  store %struct.Test* %9, %struct.Test** %3, align 8
  %10 = load %struct.Test*, %struct.Test** %3, align 8
  %11 = getelementptr inbounds %struct.Test, %struct.Test* %10, i32 0, i32 3
  %12 = load %struct.rte_ring*, %struct.rte_ring** %11, align 8
  store %struct.rte_ring* %12, %struct.rte_ring** %4, align 8
  %13 = load %struct.Test*, %struct.Test** %3, align 8
  %14 = getelementptr inbounds %struct.Test, %struct.Test* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %34, %1
  %16 = load %struct.Test*, %struct.Test** %3, align 8
  %17 = getelementptr inbounds %struct.Test, %struct.Test* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.rte_ring*, %struct.rte_ring** %4, align 8
  %23 = bitcast i64* %6 to i8**
  %24 = call i32 @rte_ring_sc_dequeue(%struct.rte_ring* %22, i8** %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.Test*, %struct.Test** %3, align 8
  %30 = getelementptr inbounds %struct.Test, %struct.Test* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %27
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %54, %35
  %37 = load %struct.rte_ring*, %struct.rte_ring** %4, align 8
  %38 = call i32 @rte_ring_empty(%struct.rte_ring* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.rte_ring*, %struct.rte_ring** %4, align 8
  %43 = bitcast i64* %7 to i8**
  %44 = call i32 @rte_ring_sc_dequeue(%struct.rte_ring* %42, i8** %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.Test*, %struct.Test** %3, align 8
  %50 = getelementptr inbounds %struct.Test, %struct.Test* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %47
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.Test*, %struct.Test** %3, align 8
  %57 = getelementptr inbounds %struct.Test, %struct.Test* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  ret void
}

declare dso_local i32 @rte_ring_sc_dequeue(%struct.rte_ring*, i8**) #1

declare dso_local i32 @rte_ring_empty(%struct.rte_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
