; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_btcp.c_nn_btcp_destroy.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_btcp.c_nn_btcp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_btcp = type { i32, i32, i32*, i32 }

@NN_BTCP_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nn_btcp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_btcp_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nn_btcp*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nn_btcp*
  store %struct.nn_btcp* %5, %struct.nn_btcp** %3, align 8
  %6 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %7 = load i32, i32* @NN_BTCP_STATE_IDLE, align 4
  %8 = call i32 @nn_assert_state(%struct.nn_btcp* %6, i32 %7)
  %9 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %10 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %9, i32 0, i32 3
  %11 = call i32 @nn_list_term(i32* %10)
  %12 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %13 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @nn_assert(i32 %16)
  %18 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %19 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %18, i32 0, i32 1
  %20 = call i32 @nn_usock_term(i32* %19)
  %21 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %22 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %21, i32 0, i32 0
  %23 = call i32 @nn_fsm_term(i32* %22)
  %24 = load %struct.nn_btcp*, %struct.nn_btcp** %3, align 8
  %25 = call i32 @nn_free(%struct.nn_btcp* %24)
  ret void
}

declare dso_local i32 @nn_assert_state(%struct.nn_btcp*, i32) #1

declare dso_local i32 @nn_list_term(i32*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_term(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

declare dso_local i32 @nn_free(%struct.nn_btcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
