; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_cinproc.c_nn_cinproc_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_cinproc.c_nn_cinproc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_cinproc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cinproc\00", align 1
@nn_cinproc_ops = common dso_local global i32 0, align 4
@nn_cinproc_handler = common dso_local global i32 0, align 4
@nn_cinproc_shutdown = common dso_local global i32 0, align 4
@NN_CINPROC_STATE_IDLE = common dso_local global i32 0, align 4
@NN_STAT_INPROGRESS_CONNECTIONS = common dso_local global i32 0, align 4
@nn_cinproc_connect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_cinproc_create(%struct.nn_ep* %0) #0 {
  %2 = alloca %struct.nn_ep*, align 8
  %3 = alloca %struct.nn_cinproc*, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %2, align 8
  %4 = call %struct.nn_cinproc* @nn_alloc(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_cinproc* %4, %struct.nn_cinproc** %3, align 8
  %5 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %6 = call i32 @alloc_assert(%struct.nn_cinproc* %5)
  %7 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %8 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %9 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %7, i32* @nn_cinproc_ops, %struct.nn_cinproc* %8)
  %10 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %11 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %10, i32 0, i32 0
  %12 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %13 = call i32 @nn_ins_item_init(i32* %11, %struct.nn_ep* %12)
  %14 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %15 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %14, i32 0, i32 1
  %16 = load i32, i32* @nn_cinproc_handler, align 4
  %17 = load i32, i32* @nn_cinproc_shutdown, align 4
  %18 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %19 = call i32 @nn_ep_getctx(%struct.nn_ep* %18)
  %20 = call i32 @nn_fsm_init_root(i32* %15, i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* @NN_CINPROC_STATE_IDLE, align 4
  %22 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %23 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %25 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %24, i32 0, i32 2
  %26 = call i32 @nn_list_init(i32* %25)
  %27 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %28 = load i32, i32* @NN_STAT_INPROGRESS_CONNECTIONS, align 4
  %29 = call i32 @nn_ep_stat_increment(%struct.nn_ep* %27, i32 %28, i32 1)
  %30 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %31 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %30, i32 0, i32 1
  %32 = call i32 @nn_fsm_start(i32* %31)
  %33 = load %struct.nn_cinproc*, %struct.nn_cinproc** %3, align 8
  %34 = getelementptr inbounds %struct.nn_cinproc, %struct.nn_cinproc* %33, i32 0, i32 0
  %35 = load i32, i32* @nn_cinproc_connect, align 4
  %36 = call i32 @nn_ins_connect(i32* %34, i32 %35)
  ret i32 0
}

declare dso_local %struct.nn_cinproc* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_cinproc*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_cinproc*) #1

declare dso_local i32 @nn_ins_item_init(i32*, %struct.nn_ep*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @nn_ep_stat_increment(%struct.nn_ep*, i32, i32) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_ins_connect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
