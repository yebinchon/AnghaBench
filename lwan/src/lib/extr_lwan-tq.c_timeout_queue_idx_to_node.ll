; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_idx_to_node.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_idx_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_connection = type { i32 }
%struct.timeout_queue = type { %struct.lwan_connection*, %struct.lwan_connection }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_connection* (%struct.timeout_queue*, i32)* @timeout_queue_idx_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_connection* @timeout_queue_idx_to_node(%struct.timeout_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.timeout_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.timeout_queue* %0, %struct.timeout_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.timeout_queue*, %struct.timeout_queue** %3, align 8
  %9 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %8, i32 0, i32 1
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.timeout_queue*, %struct.timeout_queue** %3, align 8
  %12 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %11, i32 0, i32 0
  %13 = load %struct.lwan_connection*, %struct.lwan_connection** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lwan_connection, %struct.lwan_connection* %13, i64 %15
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi %struct.lwan_connection* [ %9, %7 ], [ %16, %10 ]
  ret %struct.lwan_connection* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
