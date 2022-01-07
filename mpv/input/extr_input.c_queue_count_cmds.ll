; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_queue_count_cmds.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_queue_count_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_queue = type { %struct.mp_cmd* }
%struct.mp_cmd = type { %struct.mp_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_queue*)* @queue_count_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_count_cmds(%struct.cmd_queue* %0) #0 {
  %2 = alloca %struct.cmd_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_cmd*, align 8
  store %struct.cmd_queue* %0, %struct.cmd_queue** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cmd_queue*, %struct.cmd_queue** %2, align 8
  %6 = getelementptr inbounds %struct.cmd_queue, %struct.cmd_queue* %5, i32 0, i32 0
  %7 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  store %struct.mp_cmd* %7, %struct.mp_cmd** %4, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.mp_cmd*, %struct.mp_cmd** %4, align 8
  %10 = icmp ne %struct.mp_cmd* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.mp_cmd*, %struct.mp_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %15, i32 0, i32 0
  %17 = load %struct.mp_cmd*, %struct.mp_cmd** %16, align 8
  store %struct.mp_cmd* %17, %struct.mp_cmd** %4, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
