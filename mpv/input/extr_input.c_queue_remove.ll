; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_queue_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_queue = type { %struct.mp_cmd* }
%struct.mp_cmd = type { %struct.mp_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_queue*, %struct.mp_cmd*)* @queue_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_remove(%struct.cmd_queue* %0, %struct.mp_cmd* %1) #0 {
  %3 = alloca %struct.cmd_queue*, align 8
  %4 = alloca %struct.mp_cmd*, align 8
  %5 = alloca %struct.mp_cmd**, align 8
  store %struct.cmd_queue* %0, %struct.cmd_queue** %3, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %4, align 8
  %6 = load %struct.cmd_queue*, %struct.cmd_queue** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_queue, %struct.cmd_queue* %6, i32 0, i32 0
  store %struct.mp_cmd** %7, %struct.mp_cmd*** %5, align 8
  br label %8

8:                                                ; preds = %13, %2
  %9 = load %struct.mp_cmd**, %struct.mp_cmd*** %5, align 8
  %10 = load %struct.mp_cmd*, %struct.mp_cmd** %9, align 8
  %11 = load %struct.mp_cmd*, %struct.mp_cmd** %4, align 8
  %12 = icmp ne %struct.mp_cmd* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.mp_cmd**, %struct.mp_cmd*** %5, align 8
  %15 = load %struct.mp_cmd*, %struct.mp_cmd** %14, align 8
  %16 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %15, i32 0, i32 0
  store %struct.mp_cmd** %16, %struct.mp_cmd*** %5, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.mp_cmd**, %struct.mp_cmd*** %5, align 8
  %19 = load %struct.mp_cmd*, %struct.mp_cmd** %18, align 8
  %20 = load %struct.mp_cmd*, %struct.mp_cmd** %4, align 8
  %21 = icmp eq %struct.mp_cmd* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.mp_cmd*, %struct.mp_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %24, i32 0, i32 0
  %26 = load %struct.mp_cmd*, %struct.mp_cmd** %25, align 8
  %27 = load %struct.mp_cmd**, %struct.mp_cmd*** %5, align 8
  store %struct.mp_cmd* %26, %struct.mp_cmd** %27, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
