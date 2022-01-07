; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_cipc.c_nn_cipc_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_cipc.c_nn_cipc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_cipc = type { i32, i32, i32, i32, i32, %struct.nn_ep* }

@.str = private unnamed_addr constant [5 x i8] c"cipc\00", align 1
@nn_cipc_ep_ops = common dso_local global i32 0, align 4
@nn_cipc_handler = common dso_local global i32 0, align 4
@nn_cipc_shutdown = common dso_local global i32 0, align 4
@NN_CIPC_STATE_IDLE = common dso_local global i32 0, align 4
@NN_CIPC_SRC_USOCK = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL_MAX = common dso_local global i32 0, align 4
@NN_CIPC_SRC_RECONNECT_TIMER = common dso_local global i32 0, align 4
@NN_CIPC_SRC_SIPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_cipc_create(%struct.nn_ep* %0) #0 {
  %2 = alloca %struct.nn_ep*, align 8
  %3 = alloca %struct.nn_cipc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %2, align 8
  %7 = call %struct.nn_cipc* @nn_alloc(i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_cipc* %7, %struct.nn_cipc** %3, align 8
  %8 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %9 = call i32 @alloc_assert(%struct.nn_cipc* %8)
  %10 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %11 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %12 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %11, i32 0, i32 5
  store %struct.nn_ep* %10, %struct.nn_ep** %12, align 8
  %13 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %14 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %15 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %13, i32* @nn_cipc_ep_ops, %struct.nn_cipc* %14)
  %16 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %17 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %16, i32 0, i32 0
  %18 = load i32, i32* @nn_cipc_handler, align 4
  %19 = load i32, i32* @nn_cipc_shutdown, align 4
  %20 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %21 = call i32 @nn_ep_getctx(%struct.nn_ep* %20)
  %22 = call i32 @nn_fsm_init_root(i32* %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @NN_CIPC_STATE_IDLE, align 4
  %24 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %25 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %27 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %26, i32 0, i32 3
  %28 = load i32, i32* @NN_CIPC_SRC_USOCK, align 4
  %29 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %30 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %29, i32 0, i32 0
  %31 = call i32 @nn_usock_init(i32* %27, i32 %28, i32* %30)
  store i64 4, i64* %6, align 8
  %32 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %33 = load i32, i32* @NN_SOL_SOCKET, align 4
  %34 = load i32, i32* @NN_RECONNECT_IVL, align 4
  %35 = call i32 @nn_ep_getopt(%struct.nn_ep* %32, i32 %33, i32 %34, i32* %4, i64* %6)
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 4
  %38 = zext i1 %37 to i32
  %39 = call i32 @nn_assert(i32 %38)
  store i64 4, i64* %6, align 8
  %40 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %41 = load i32, i32* @NN_SOL_SOCKET, align 4
  %42 = load i32, i32* @NN_RECONNECT_IVL_MAX, align 4
  %43 = call i32 @nn_ep_getopt(%struct.nn_ep* %40, i32 %41, i32 %42, i32* %5, i64* %6)
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 4
  %46 = zext i1 %45 to i32
  %47 = call i32 @nn_assert(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %1
  %53 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %54 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %53, i32 0, i32 2
  %55 = load i32, i32* @NN_CIPC_SRC_RECONNECT_TIMER, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %59 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %58, i32 0, i32 0
  %60 = call i32 @nn_backoff_init(i32* %54, i32 %55, i32 %56, i32 %57, i32* %59)
  %61 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %62 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %61, i32 0, i32 1
  %63 = load i32, i32* @NN_CIPC_SRC_SIPC, align 4
  %64 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %65 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %66 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %65, i32 0, i32 0
  %67 = call i32 @nn_sipc_init(i32* %62, i32 %63, %struct.nn_ep* %64, i32* %66)
  %68 = load %struct.nn_cipc*, %struct.nn_cipc** %3, align 8
  %69 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %68, i32 0, i32 0
  %70 = call i32 @nn_fsm_start(i32* %69)
  ret i32 0
}

declare dso_local %struct.nn_cipc* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_cipc*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_cipc*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_backoff_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nn_sipc_init(i32*, i32, %struct.nn_ep*, i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
