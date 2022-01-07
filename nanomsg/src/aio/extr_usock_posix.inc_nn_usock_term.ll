; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NN_USOCK_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_term(%struct.nn_usock* %0) #0 {
  %2 = alloca %struct.nn_usock*, align 8
  store %struct.nn_usock* %0, %struct.nn_usock** %2, align 8
  %3 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %4 = load i32, i32* @NN_USOCK_STATE_IDLE, align 4
  %5 = call i32 @nn_assert_state(%struct.nn_usock* %3, i32 %4)
  %6 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %7 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %13 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @nn_free(i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %19 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %18, i32 0, i32 12
  %20 = call i32 @nn_fsm_event_term(i32* %19)
  %21 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %22 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %21, i32 0, i32 11
  %23 = call i32 @nn_fsm_event_term(i32* %22)
  %24 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %25 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %24, i32 0, i32 10
  %26 = call i32 @nn_fsm_event_term(i32* %25)
  %27 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %28 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %27, i32 0, i32 9
  %29 = call i32 @nn_fsm_event_term(i32* %28)
  %30 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %31 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %34 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %33, i32 0, i32 7
  %35 = call i32 @nn_worker_cancel(i32 %32, i32* %34)
  %36 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %37 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %40 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %39, i32 0, i32 6
  %41 = call i32 @nn_worker_cancel(i32 %38, i32* %40)
  %42 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %43 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %46 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %45, i32 0, i32 5
  %47 = call i32 @nn_worker_cancel(i32 %44, i32* %46)
  %48 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %49 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %52 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %51, i32 0, i32 4
  %53 = call i32 @nn_worker_cancel(i32 %50, i32* %52)
  %54 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %55 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %58 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %57, i32 0, i32 3
  %59 = call i32 @nn_worker_cancel(i32 %56, i32* %58)
  %60 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %61 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %64 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %63, i32 0, i32 2
  %65 = call i32 @nn_worker_cancel(i32 %62, i32* %64)
  %66 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %67 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %66, i32 0, i32 7
  %68 = call i32 @nn_worker_task_term(i32* %67)
  %69 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %70 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %69, i32 0, i32 6
  %71 = call i32 @nn_worker_task_term(i32* %70)
  %72 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %73 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %72, i32 0, i32 5
  %74 = call i32 @nn_worker_task_term(i32* %73)
  %75 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %76 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %75, i32 0, i32 4
  %77 = call i32 @nn_worker_task_term(i32* %76)
  %78 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %79 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %78, i32 0, i32 3
  %80 = call i32 @nn_worker_task_term(i32* %79)
  %81 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %82 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %81, i32 0, i32 2
  %83 = call i32 @nn_worker_task_term(i32* %82)
  %84 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %85 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %84, i32 0, i32 1
  %86 = call i32 @nn_worker_fd_term(i32* %85)
  %87 = load %struct.nn_usock*, %struct.nn_usock** %2, align 8
  %88 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %87, i32 0, i32 0
  %89 = call i32 @nn_fsm_term(i32* %88)
  ret void
}

declare dso_local i32 @nn_assert_state(%struct.nn_usock*, i32) #1

declare dso_local i32 @nn_free(i64) #1

declare dso_local i32 @nn_fsm_event_term(i32*) #1

declare dso_local i32 @nn_worker_cancel(i32, i32*) #1

declare dso_local i32 @nn_worker_task_term(i32*) #1

declare dso_local i32 @nn_worker_fd_term(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
