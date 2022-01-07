; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_bipc.c_nn_bipc_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_bipc.c_nn_bipc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_bipc = type { i32, i32, i32, i32*, i32, %struct.nn_ep* }

@.str = private unnamed_addr constant [5 x i8] c"bipc\00", align 1
@nn_bipc_ep_ops = common dso_local global i32 0, align 4
@nn_bipc_handler = common dso_local global i32 0, align 4
@nn_bipc_shutdown = common dso_local global i32 0, align 4
@NN_BIPC_STATE_IDLE = common dso_local global i32 0, align 4
@NN_BIPC_SRC_USOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_bipc_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca %struct.nn_bipc*, align 8
  %5 = alloca i32, align 4
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %6 = call %struct.nn_bipc* @nn_alloc(i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_bipc* %6, %struct.nn_bipc** %4, align 8
  %7 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %8 = call i32 @alloc_assert(%struct.nn_bipc* %7)
  %9 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %10 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %11 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %10, i32 0, i32 5
  store %struct.nn_ep* %9, %struct.nn_ep** %11, align 8
  %12 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %13 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %14 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %12, i32* @nn_bipc_ep_ops, %struct.nn_bipc* %13)
  %15 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %16 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %15, i32 0, i32 0
  %17 = load i32, i32* @nn_bipc_handler, align 4
  %18 = load i32, i32* @nn_bipc_shutdown, align 4
  %19 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %20 = call i32 @nn_ep_getctx(%struct.nn_ep* %19)
  %21 = call i32 @nn_fsm_init_root(i32* %16, i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* @NN_BIPC_STATE_IDLE, align 4
  %23 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %24 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %26 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %28 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %27, i32 0, i32 2
  %29 = call i32 @nn_list_init(i32* %28)
  %30 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %31 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %30, i32 0, i32 0
  %32 = call i32 @nn_fsm_start(i32* %31)
  %33 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %34 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %33, i32 0, i32 1
  %35 = load i32, i32* @NN_BIPC_SRC_USOCK, align 4
  %36 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %37 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %36, i32 0, i32 0
  %38 = call i32 @nn_usock_init(i32* %34, i32 %35, i32* %37)
  %39 = load %struct.nn_bipc*, %struct.nn_bipc** %4, align 8
  %40 = call i32 @nn_bipc_listen(%struct.nn_bipc* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.nn_bipc* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_bipc*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_bipc*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_bipc_listen(%struct.nn_bipc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
