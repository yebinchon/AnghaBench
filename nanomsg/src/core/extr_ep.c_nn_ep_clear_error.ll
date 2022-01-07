; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_ep.c_nn_ep_clear_error.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_ep.c_nn_ep_clear_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i64, i32 }

@NN_STAT_CURRENT_EP_ERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_clear_error(%struct.nn_ep* %0) #0 {
  %2 = alloca %struct.nn_ep*, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %2, align 8
  %3 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %4 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %10 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NN_STAT_CURRENT_EP_ERRORS, align 4
  %13 = call i32 @nn_sock_stat_increment(i32 %11, i32 %12, i32 -1)
  %14 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %15 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %17 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nn_ep*, %struct.nn_ep** %2, align 8
  %20 = call i32 @nn_sock_report_error(i32 %18, %struct.nn_ep* %19, i32 0)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @nn_sock_stat_increment(i32, i32, i32) #1

declare dso_local i32 @nn_sock_report_error(i32, %struct.nn_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
