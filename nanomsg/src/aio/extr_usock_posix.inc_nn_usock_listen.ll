; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_listen.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i32, i32 }

@NN_USOCK_STATE_STARTING = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NN_USOCK_ACTION_LISTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_listen(%struct.nn_usock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_usock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %8 = load i32, i32* @NN_USOCK_STATE_STARTING, align 4
  %9 = call i32 @nn_assert_state(%struct.nn_usock* %7, i32 %8)
  %10 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %11 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @listen(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @nn_slow(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %25 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %24, i32 0, i32 0
  %26 = load i32, i32* @NN_USOCK_ACTION_LISTEN, align 4
  %27 = call i32 @nn_fsm_action(i32* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @nn_assert_state(%struct.nn_usock*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_fsm_action(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
