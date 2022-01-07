; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_fsm.c_nn_fsm_raise.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_fsm.c_nn_fsm_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_fsm = type { i32, i32, i32, i32 }
%struct.nn_fsm_event = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_raise(%struct.nn_fsm* %0, %struct.nn_fsm_event* %1, i32 %2) #0 {
  %4 = alloca %struct.nn_fsm*, align 8
  %5 = alloca %struct.nn_fsm_event*, align 8
  %6 = alloca i32, align 4
  store %struct.nn_fsm* %0, %struct.nn_fsm** %4, align 8
  store %struct.nn_fsm_event* %1, %struct.nn_fsm_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nn_fsm*, %struct.nn_fsm** %4, align 8
  %8 = getelementptr inbounds %struct.nn_fsm, %struct.nn_fsm* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %5, align 8
  %11 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.nn_fsm*, %struct.nn_fsm** %4, align 8
  %13 = getelementptr inbounds %struct.nn_fsm, %struct.nn_fsm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %5, align 8
  %16 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nn_fsm*, %struct.nn_fsm** %4, align 8
  %18 = getelementptr inbounds %struct.nn_fsm, %struct.nn_fsm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %5, align 8
  %21 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %5, align 8
  %24 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nn_fsm*, %struct.nn_fsm** %4, align 8
  %26 = getelementptr inbounds %struct.nn_fsm, %struct.nn_fsm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %5, align 8
  %29 = call i32 @nn_ctx_raise(i32 %27, %struct.nn_fsm_event* %28)
  ret void
}

declare dso_local i32 @nn_ctx_raise(i32, %struct.nn_fsm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
