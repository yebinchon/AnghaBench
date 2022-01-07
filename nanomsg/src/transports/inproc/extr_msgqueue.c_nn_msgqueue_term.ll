; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msgqueue = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.nn_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msgqueue_term(%struct.nn_msgqueue* %0) #0 {
  %2 = alloca %struct.nn_msgqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_msg, align 4
  store %struct.nn_msgqueue* %0, %struct.nn_msgqueue** %2, align 8
  br label %5

5:                                                ; preds = %1, %13
  %6 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %7 = call i32 @nn_msgqueue_recv(%struct.nn_msgqueue* %6, %struct.nn_msg* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %21

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @errnum_assert(i32 %16, i32 %18)
  %20 = call i32 @nn_msg_term(%struct.nn_msg* %4)
  br label %5

21:                                               ; preds = %12
  %22 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %23 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %27 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @nn_assert(i32 %31)
  %33 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %34 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nn_free(i64 %36)
  %38 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %39 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %2, align 8
  %44 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nn_free(i64 %45)
  br label %47

47:                                               ; preds = %42, %21
  ret void
}

declare dso_local i32 @nn_msgqueue_recv(%struct.nn_msgqueue*, %struct.nn_msg*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_msg_term(%struct.nn_msg*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
