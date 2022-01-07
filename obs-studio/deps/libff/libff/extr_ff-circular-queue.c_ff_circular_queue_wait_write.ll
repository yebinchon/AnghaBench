; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-circular-queue.c_ff_circular_queue_wait_write.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-circular-queue.c_ff_circular_queue_wait_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_circular_queue = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_circular_queue_wait_write(%struct.ff_circular_queue* %0) #0 {
  %2 = alloca %struct.ff_circular_queue*, align 8
  store %struct.ff_circular_queue* %0, %struct.ff_circular_queue** %2, align 8
  %3 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %4 = call i32 @queue_lock(%struct.ff_circular_queue* %3)
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ff_circular_queue, %struct.ff_circular_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %10 = getelementptr inbounds %struct.ff_circular_queue, %struct.ff_circular_queue* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %15 = getelementptr inbounds %struct.ff_circular_queue, %struct.ff_circular_queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %5
  %20 = phi i1 [ false, %5 ], [ %18, %13 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %23 = call i32 @queue_wait(%struct.ff_circular_queue* %22)
  br label %5

24:                                               ; preds = %19
  %25 = load %struct.ff_circular_queue*, %struct.ff_circular_queue** %2, align 8
  %26 = call i32 @queue_unlock(%struct.ff_circular_queue* %25)
  ret void
}

declare dso_local i32 @queue_lock(%struct.ff_circular_queue*) #1

declare dso_local i32 @queue_wait(%struct.ff_circular_queue*) #1

declare dso_local i32 @queue_unlock(%struct.ff_circular_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
