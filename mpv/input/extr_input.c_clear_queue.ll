; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_clear_queue.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_clear_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_queue = type { %struct.mp_cmd* }
%struct.mp_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_queue*)* @clear_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_queue(%struct.cmd_queue* %0) #0 {
  %2 = alloca %struct.cmd_queue*, align 8
  %3 = alloca %struct.mp_cmd*, align 8
  store %struct.cmd_queue* %0, %struct.cmd_queue** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.cmd_queue*, %struct.cmd_queue** %2, align 8
  %6 = getelementptr inbounds %struct.cmd_queue, %struct.cmd_queue* %5, i32 0, i32 0
  %7 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %8 = icmp ne %struct.mp_cmd* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.cmd_queue*, %struct.cmd_queue** %2, align 8
  %11 = getelementptr inbounds %struct.cmd_queue, %struct.cmd_queue* %10, i32 0, i32 0
  %12 = load %struct.mp_cmd*, %struct.mp_cmd** %11, align 8
  store %struct.mp_cmd* %12, %struct.mp_cmd** %3, align 8
  %13 = load %struct.cmd_queue*, %struct.cmd_queue** %2, align 8
  %14 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %15 = call i32 @queue_remove(%struct.cmd_queue* %13, %struct.mp_cmd* %14)
  %16 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %17 = call i32 @talloc_free(%struct.mp_cmd* %16)
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @queue_remove(%struct.cmd_queue*, %struct.mp_cmd*) #1

declare dso_local i32 @talloc_free(%struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
