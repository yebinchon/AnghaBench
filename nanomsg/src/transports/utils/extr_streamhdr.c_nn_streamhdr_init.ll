; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_streamhdr.c_nn_streamhdr_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_streamhdr.c_nn_streamhdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_streamhdr = type { i32*, %struct.TYPE_2__, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nn_fsm = type { i32 }

@nn_streamhdr_handler = common dso_local global i32 0, align 4
@nn_streamhdr_shutdown = common dso_local global i32 0, align 4
@NN_STREAMHDR_STATE_IDLE = common dso_local global i32 0, align 4
@NN_STREAMHDR_SRC_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_init(%struct.nn_streamhdr* %0, i32 %1, %struct.nn_fsm* %2) #0 {
  %4 = alloca %struct.nn_streamhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_fsm*, align 8
  store %struct.nn_streamhdr* %0, %struct.nn_streamhdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nn_fsm* %2, %struct.nn_fsm** %6, align 8
  %7 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %8 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %7, i32 0, i32 4
  %9 = load i32, i32* @nn_streamhdr_handler, align 4
  %10 = load i32, i32* @nn_streamhdr_shutdown, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %13 = load %struct.nn_fsm*, %struct.nn_fsm** %6, align 8
  %14 = call i32 @nn_fsm_init(i32* %8, i32 %9, i32 %10, i32 %11, %struct.nn_streamhdr* %12, %struct.nn_fsm* %13)
  %15 = load i32, i32* @NN_STREAMHDR_STATE_IDLE, align 4
  %16 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %17 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %19 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %18, i32 0, i32 5
  %20 = load i32, i32* @NN_STREAMHDR_SRC_TIMER, align 4
  %21 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %22 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %21, i32 0, i32 4
  %23 = call i32 @nn_timer_init(i32* %19, i32 %20, i32* %22)
  %24 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %25 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %24, i32 0, i32 3
  %26 = call i32 @nn_fsm_event_init(i32* %25)
  %27 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %28 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %30 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %33 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %36 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  ret void
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_streamhdr*, %struct.nn_fsm*) #1

declare dso_local i32 @nn_timer_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
