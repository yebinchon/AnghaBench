; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_backoff.c_nn_backoff_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_backoff.c_nn_backoff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_backoff = type { i32, i32, i32, i32 }
%struct.nn_fsm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_init(%struct.nn_backoff* %0, i32 %1, i32 %2, i32 %3, %struct.nn_fsm* %4) #0 {
  %6 = alloca %struct.nn_backoff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nn_fsm*, align 8
  store %struct.nn_backoff* %0, %struct.nn_backoff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nn_fsm* %4, %struct.nn_fsm** %10, align 8
  %11 = load %struct.nn_backoff*, %struct.nn_backoff** %6, align 8
  %12 = getelementptr inbounds %struct.nn_backoff, %struct.nn_backoff* %11, i32 0, i32 3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.nn_fsm*, %struct.nn_fsm** %10, align 8
  %15 = call i32 @nn_timer_init(i32* %12, i32 %13, %struct.nn_fsm* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.nn_backoff*, %struct.nn_backoff** %6, align 8
  %18 = getelementptr inbounds %struct.nn_backoff, %struct.nn_backoff* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.nn_backoff*, %struct.nn_backoff** %6, align 8
  %21 = getelementptr inbounds %struct.nn_backoff, %struct.nn_backoff* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nn_backoff*, %struct.nn_backoff** %6, align 8
  %23 = getelementptr inbounds %struct.nn_backoff, %struct.nn_backoff* %22, i32 0, i32 2
  store i32 1, i32* %23, align 4
  ret void
}

declare dso_local i32 @nn_timer_init(i32*, i32, %struct.nn_fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
