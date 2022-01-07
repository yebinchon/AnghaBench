; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_queue_peek_tail.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_queue_peek_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd = type { %struct.mp_cmd* }
%struct.cmd_queue = type { %struct.mp_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_cmd* (%struct.cmd_queue*)* @queue_peek_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_cmd* @queue_peek_tail(%struct.cmd_queue* %0) #0 {
  %2 = alloca %struct.cmd_queue*, align 8
  %3 = alloca %struct.mp_cmd*, align 8
  store %struct.cmd_queue* %0, %struct.cmd_queue** %2, align 8
  %4 = load %struct.cmd_queue*, %struct.cmd_queue** %2, align 8
  %5 = getelementptr inbounds %struct.cmd_queue, %struct.cmd_queue* %4, i32 0, i32 0
  %6 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  store %struct.mp_cmd* %6, %struct.mp_cmd** %3, align 8
  br label %7

7:                                                ; preds = %17, %1
  %8 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %9 = icmp ne %struct.mp_cmd* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %11, i32 0, i32 0
  %13 = load %struct.mp_cmd*, %struct.mp_cmd** %12, align 8
  %14 = icmp ne %struct.mp_cmd* %13, null
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %18, i32 0, i32 0
  %20 = load %struct.mp_cmd*, %struct.mp_cmd** %19, align 8
  store %struct.mp_cmd* %20, %struct.mp_cmd** %3, align 8
  br label %7

21:                                               ; preds = %15
  %22 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  ret %struct.mp_cmd* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
