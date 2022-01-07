; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_kill_waiting.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_kill_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout_queue = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_connection = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timeout_queue_kill_waiting(%struct.timeout_queue* %0) #0 {
  %2 = alloca %struct.timeout_queue*, align 8
  %3 = alloca %struct.lwan_connection*, align 8
  store %struct.timeout_queue* %0, %struct.timeout_queue** %2, align 8
  %4 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %5 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %10 = call i32 @timeout_queue_empty(%struct.timeout_queue* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %15 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %16 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.lwan_connection* @timeout_queue_idx_to_node(%struct.timeout_queue* %14, i32 %18)
  store %struct.lwan_connection* %19, %struct.lwan_connection** %3, align 8
  %20 = load %struct.lwan_connection*, %struct.lwan_connection** %3, align 8
  %21 = getelementptr inbounds %struct.lwan_connection, %struct.lwan_connection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %24 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %35

28:                                               ; preds = %13
  %29 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %30 = load %struct.lwan_connection*, %struct.lwan_connection** %3, align 8
  %31 = call i32 @timeout_queue_kill(%struct.timeout_queue* %29, %struct.lwan_connection* %30)
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.timeout_queue*, %struct.timeout_queue** %2, align 8
  %34 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @timeout_queue_empty(%struct.timeout_queue*) #1

declare dso_local %struct.lwan_connection* @timeout_queue_idx_to_node(%struct.timeout_queue*, i32) #1

declare dso_local i32 @timeout_queue_kill(%struct.timeout_queue*, %struct.lwan_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
