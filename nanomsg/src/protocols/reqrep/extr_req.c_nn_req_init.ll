; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/reqrep/extr_req.c_nn_req_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/reqrep/extr_req.c_nn_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_req = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.nn_sockbase_vfptr = type { i32 }

@nn_req_handler = common dso_local global i32 0, align 4
@nn_req_shutdown = common dso_local global i32 0, align 4
@NN_REQ_STATE_IDLE = common dso_local global i32 0, align 4
@NN_REQ_SRC_RESEND_TIMER = common dso_local global i32 0, align 4
@NN_REQ_DEFAULT_RESEND_IVL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_req_init(%struct.nn_req* %0, %struct.nn_sockbase_vfptr* %1, i8* %2) #0 {
  %4 = alloca %struct.nn_req*, align 8
  %5 = alloca %struct.nn_sockbase_vfptr*, align 8
  %6 = alloca i8*, align 8
  store %struct.nn_req* %0, %struct.nn_req** %4, align 8
  store %struct.nn_sockbase_vfptr* %1, %struct.nn_sockbase_vfptr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %8 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %7, i32 0, i32 5
  %9 = load %struct.nn_sockbase_vfptr*, %struct.nn_sockbase_vfptr** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @nn_xreq_init(%struct.TYPE_3__* %8, %struct.nn_sockbase_vfptr* %9, i8* %10)
  %12 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %13 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %12, i32 0, i32 0
  %14 = load i32, i32* @nn_req_handler, align 4
  %15 = load i32, i32* @nn_req_shutdown, align 4
  %16 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %17 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @nn_sockbase_getctx(i32* %18)
  %20 = call i32 @nn_fsm_init_root(i32* %13, i32 %14, i32 %15, i32 %19)
  %21 = load i32, i32* @NN_REQ_STATE_IDLE, align 4
  %22 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %23 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %25 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %24, i32 0, i32 1
  %26 = call i32 @nn_random_generate(i32* %25, i32 4)
  %27 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %28 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %31 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = call i32 @nn_msg_init(i32* %32, i32 0)
  %34 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %35 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @nn_msg_init(i32* %36, i32 0)
  %38 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %39 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @NN_REQ_SRC_RESEND_TIMER, align 4
  %42 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %43 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %42, i32 0, i32 0
  %44 = call i32 @nn_timer_init(i32* %40, i32 %41, i32* %43)
  %45 = load i32, i32* @NN_REQ_DEFAULT_RESEND_IVL, align 4
  %46 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %47 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %49 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %48, i32 0, i32 2
  %50 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %51 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nn_task_init(%struct.TYPE_4__* %49, i32 %52)
  %54 = load %struct.nn_req*, %struct.nn_req** %4, align 8
  %55 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %54, i32 0, i32 0
  %56 = call i32 @nn_fsm_start(i32* %55)
  ret void
}

declare dso_local i32 @nn_xreq_init(%struct.TYPE_3__*, %struct.nn_sockbase_vfptr*, i8*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_sockbase_getctx(i32*) #1

declare dso_local i32 @nn_random_generate(i32*, i32) #1

declare dso_local i32 @nn_msg_init(i32*, i32) #1

declare dso_local i32 @nn_timer_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_task_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
