; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_recv.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64, i32* }

@NN_USOCK_STATE_ACTIVE = common dso_local global i64 0, align 8
@NN_USOCK_ACTION_ERROR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@NN_USOCK_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_recv(%struct.nn_usock* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nn_usock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nn_usock* %0, %struct.nn_usock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %12 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NN_USOCK_STATE_ACTIVE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %18 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %17, i32 0, i32 5
  %19 = load i32, i32* @NN_USOCK_ACTION_ERROR, align 4
  %20 = call i32 @nn_fsm_action(i32* %18, i32 %19)
  br label %82

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %25 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @nn_usock_recv_raw(%struct.nn_usock* %27, i8* %28, i64* %10)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @nn_slow(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ECONNRESET, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @errnum_assert(i32 %40, i32 %42)
  %44 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %45 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %44, i32 0, i32 5
  %46 = load i32, i32* @NN_USOCK_ACTION_ERROR, align 4
  %47 = call i32 @nn_fsm_action(i32* %45, i32 %46)
  br label %82

48:                                               ; preds = %21
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @nn_fast(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %57 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %56, i32 0, i32 5
  %58 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %59 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %58, i32 0, i32 4
  %60 = load i32, i32* @NN_USOCK_RECEIVED, align 4
  %61 = call i32 @nn_fsm_raise(i32* %57, i32* %59, i32 %60)
  br label %82

62:                                               ; preds = %48
  %63 = load i8*, i8** %6, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %68 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32* %66, i32** %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %70, %71
  %73 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %74 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %77 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %80 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %79, i32 0, i32 1
  %81 = call i32 @nn_worker_execute(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %62, %55, %35, %16
  ret void
}

declare dso_local i32 @nn_fsm_action(i32*, i32) #1

declare dso_local i32 @nn_usock_recv_raw(%struct.nn_usock*, i8*, i64*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #1

declare dso_local i32 @nn_worker_execute(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
