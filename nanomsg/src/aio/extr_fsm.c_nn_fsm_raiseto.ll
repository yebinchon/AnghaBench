; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_fsm.c_nn_fsm_raiseto.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_fsm.c_nn_fsm_raiseto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_fsm = type { i32 }
%struct.nn_fsm_event = type { i32, i32, i8*, %struct.nn_fsm* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_raiseto(%struct.nn_fsm* %0, %struct.nn_fsm* %1, %struct.nn_fsm_event* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.nn_fsm*, align 8
  %8 = alloca %struct.nn_fsm*, align 8
  %9 = alloca %struct.nn_fsm_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.nn_fsm* %0, %struct.nn_fsm** %7, align 8
  store %struct.nn_fsm* %1, %struct.nn_fsm** %8, align 8
  store %struct.nn_fsm_event* %2, %struct.nn_fsm_event** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load %struct.nn_fsm*, %struct.nn_fsm** %8, align 8
  %14 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %9, align 8
  %15 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %14, i32 0, i32 3
  store %struct.nn_fsm* %13, %struct.nn_fsm** %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %9, align 8
  %18 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %9, align 8
  %21 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %9, align 8
  %24 = getelementptr inbounds %struct.nn_fsm_event, %struct.nn_fsm_event* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nn_fsm*, %struct.nn_fsm** %7, align 8
  %26 = getelementptr inbounds %struct.nn_fsm, %struct.nn_fsm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nn_fsm_event*, %struct.nn_fsm_event** %9, align 8
  %29 = call i32 @nn_ctx_raiseto(i32 %27, %struct.nn_fsm_event* %28)
  ret void
}

declare dso_local i32 @nn_ctx_raiseto(i32, %struct.nn_fsm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
