; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/reqrep/extr_req.c_nn_req_action_send.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/reqrep/extr_req.c_nn_req_action_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_req = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.nn_pipe*, i32, i32 }
%struct.nn_pipe = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nn_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NN_REQ_STATE_DELAYED = common dso_local global i32 0, align 4
@NN_REQ_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_req_action_send(%struct.nn_req* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_msg, align 4
  %7 = alloca %struct.nn_pipe*, align 8
  store %struct.nn_req* %0, %struct.nn_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %9 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = call i32 @nn_msg_cp(%struct.nn_msg* %6, i32* %10)
  %12 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %13 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @nn_xreq_send_to(i32* %14, %struct.nn_msg* %6, %struct.nn_pipe** %7)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @nn_slow(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @nn_assert(i32 %26)
  %28 = call i32 @nn_msg_term(%struct.nn_msg* %6)
  %29 = load i32, i32* @NN_REQ_STATE_DELAYED, align 4
  %30 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %31 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %60

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @nn_fast(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %40 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %43 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nn_timer_start(i32* %41, i32 %44)
  %46 = load %struct.nn_pipe*, %struct.nn_pipe** %7, align 8
  %47 = ptrtoint %struct.nn_pipe* %46 to i32
  %48 = call i32 @nn_assert(i32 %47)
  %49 = load %struct.nn_pipe*, %struct.nn_pipe** %7, align 8
  %50 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %51 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.nn_pipe* %49, %struct.nn_pipe** %52, align 8
  %53 = load i32, i32* @NN_REQ_STATE_ACTIVE, align 4
  %54 = load %struct.nn_req*, %struct.nn_req** %3, align 8
  %55 = getelementptr inbounds %struct.nn_req, %struct.nn_req* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %32
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @errnum_assert(i32 0, i32 %58)
  br label %60

60:                                               ; preds = %56, %38, %23
  ret void
}

declare dso_local i32 @nn_msg_cp(%struct.nn_msg*, i32*) #1

declare dso_local i32 @nn_xreq_send_to(i32*, %struct.nn_msg*, %struct.nn_pipe**) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_msg_term(%struct.nn_msg*) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_timer_start(i32*, i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
