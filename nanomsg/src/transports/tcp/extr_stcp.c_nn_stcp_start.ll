; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_stcp.c_nn_stcp_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_stcp.c_nn_stcp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_stcp = type { i32, %struct.nn_usock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.nn_usock = type { i32 }

@NN_STCP_SRC_USOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_start(%struct.nn_stcp* %0, %struct.nn_usock* %1) #0 {
  %3 = alloca %struct.nn_stcp*, align 8
  %4 = alloca %struct.nn_usock*, align 8
  store %struct.nn_stcp* %0, %struct.nn_stcp** %3, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %4, align 8
  %5 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %6 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %5, i32 0, i32 1
  %7 = load %struct.nn_usock*, %struct.nn_usock** %6, align 8
  %8 = icmp eq %struct.nn_usock* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %11 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ false, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @nn_assert(i32 %17)
  %19 = load i32, i32* @NN_STCP_SRC_USOCK, align 4
  %20 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %21 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %24 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %23, i32 0, i32 0
  %25 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %26 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %29 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %30 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %29, i32 0, i32 2
  %31 = call i32 @nn_usock_swap_owner(%struct.nn_usock* %28, %struct.TYPE_2__* %30)
  %32 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %33 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %34 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %33, i32 0, i32 1
  store %struct.nn_usock* %32, %struct.nn_usock** %34, align 8
  %35 = load %struct.nn_stcp*, %struct.nn_stcp** %3, align 8
  %36 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %35, i32 0, i32 0
  %37 = call i32 @nn_fsm_start(i32* %36)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_swap_owner(%struct.nn_usock*, %struct.TYPE_2__*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
