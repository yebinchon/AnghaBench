; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_node_to_idx.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tq.c_timeout_queue_node_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout_queue = type { %struct.lwan_connection*, %struct.lwan_connection }
%struct.lwan_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeout_queue*, %struct.lwan_connection*)* @timeout_queue_node_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeout_queue_node_to_idx(%struct.timeout_queue* %0, %struct.lwan_connection* %1) #0 {
  %3 = alloca %struct.timeout_queue*, align 8
  %4 = alloca %struct.lwan_connection*, align 8
  store %struct.timeout_queue* %0, %struct.timeout_queue** %3, align 8
  store %struct.lwan_connection* %1, %struct.lwan_connection** %4, align 8
  %5 = load %struct.lwan_connection*, %struct.lwan_connection** %4, align 8
  %6 = load %struct.timeout_queue*, %struct.timeout_queue** %3, align 8
  %7 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %6, i32 0, i32 1
  %8 = icmp eq %struct.lwan_connection* %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.lwan_connection*, %struct.lwan_connection** %4, align 8
  %12 = load %struct.timeout_queue*, %struct.timeout_queue** %3, align 8
  %13 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %12, i32 0, i32 0
  %14 = load %struct.lwan_connection*, %struct.lwan_connection** %13, align 8
  %15 = ptrtoint %struct.lwan_connection* %11 to i64
  %16 = ptrtoint %struct.lwan_connection* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %10, %9
  %21 = phi i32 [ -1, %9 ], [ %19, %10 ]
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
