; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_binproc.c_nn_binproc_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_binproc.c_nn_binproc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_binproc = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"binproc\00", align 1
@nn_binproc_handler = common dso_local global i32 0, align 4
@nn_binproc_shutdown = common dso_local global i32 0, align 4
@NN_BINPROC_STATE_IDLE = common dso_local global i32 0, align 4
@nn_binproc_connect = common dso_local global i32 0, align 4
@nn_binproc_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_binproc_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_binproc*, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %6 = call %struct.nn_binproc* @nn_alloc(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_binproc* %6, %struct.nn_binproc** %5, align 8
  %7 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %8 = call i32 @alloc_assert(%struct.nn_binproc* %7)
  %9 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %10 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %9, i32 0, i32 0
  %11 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %12 = call i32 @nn_ins_item_init(i32* %10, %struct.nn_ep* %11)
  %13 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %14 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %13, i32 0, i32 1
  %15 = load i32, i32* @nn_binproc_handler, align 4
  %16 = load i32, i32* @nn_binproc_shutdown, align 4
  %17 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %18 = call i32 @nn_ep_getctx(%struct.nn_ep* %17)
  %19 = call i32 @nn_fsm_init_root(%struct.TYPE_4__* %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* @NN_BINPROC_STATE_IDLE, align 4
  %21 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %22 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %24 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %23, i32 0, i32 2
  %25 = call i32 @nn_list_init(i32* %24)
  %26 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %27 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %26, i32 0, i32 1
  %28 = call i32 @nn_fsm_start(%struct.TYPE_4__* %27)
  %29 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %30 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %29, i32 0, i32 0
  %31 = load i32, i32* @nn_binproc_connect, align 4
  %32 = call i32 @nn_ins_bind(i32* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %1
  %36 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %37 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %36, i32 0, i32 2
  %38 = call i32 @nn_list_term(i32* %37)
  %39 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %40 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %43 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %42, i32 0, i32 1
  %44 = call i32 @nn_fsm_term(%struct.TYPE_4__* %43)
  %45 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %46 = getelementptr inbounds %struct.nn_binproc, %struct.nn_binproc* %45, i32 0, i32 0
  %47 = call i32 @nn_ins_item_term(i32* %46)
  %48 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %49 = call i32 @nn_free(%struct.nn_binproc* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %53 = load %struct.nn_binproc*, %struct.nn_binproc** %5, align 8
  %54 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %52, i32* @nn_binproc_ops, %struct.nn_binproc* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.nn_binproc* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_binproc*) #1

declare dso_local i32 @nn_ins_item_init(i32*, %struct.nn_ep*) #1

declare dso_local i32 @nn_fsm_init_root(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @nn_fsm_start(%struct.TYPE_4__*) #1

declare dso_local i32 @nn_ins_bind(i32*, i32) #1

declare dso_local i32 @nn_list_term(i32*) #1

declare dso_local i32 @nn_fsm_term(%struct.TYPE_4__*) #1

declare dso_local i32 @nn_ins_item_term(i32*) #1

declare dso_local i32 @nn_free(%struct.nn_binproc*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_binproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
