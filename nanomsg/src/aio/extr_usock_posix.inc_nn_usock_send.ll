; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_send.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i64, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nn_iovec = type { i64, i32 }

@NN_USOCK_STATE_ACTIVE = common dso_local global i64 0, align 8
@NN_USOCK_ACTION_ERROR = common dso_local global i32 0, align 4
@NN_USOCK_MAX_IOVCNT = common dso_local global i32 0, align 4
@NN_USOCK_SENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_send(%struct.nn_usock* %0, %struct.nn_iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.nn_usock*, align 8
  %5 = alloca %struct.nn_iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %4, align 8
  store %struct.nn_iovec* %1, %struct.nn_iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %11 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NN_USOCK_STATE_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %17 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %16, i32 0, i32 3
  %18 = load i32, i32* @NN_USOCK_ACTION_ERROR, align 4
  %19 = call i32 @nn_fsm_action(i32* %17, i32 %18)
  br label %132

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NN_USOCK_MAX_IOVCNT, align 4
  %23 = icmp sle i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @nn_assert(i32 %24)
  %26 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %27 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %31 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %33, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %78, %20
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load %struct.nn_iovec*, %struct.nn_iovec** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %39, i64 %41
  %43 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %78

47:                                               ; preds = %38
  %48 = load %struct.nn_iovec*, %struct.nn_iovec** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %48, i64 %50
  %52 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %55 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %53, i32* %61, align 8
  %62 = load %struct.nn_iovec*, %struct.nn_iovec** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %62, i64 %64
  %66 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %69 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %67, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %47, %46
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %34

81:                                               ; preds = %34
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %84 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %88 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %89 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @nn_usock_send_raw(%struct.nn_usock* %87, %struct.TYPE_6__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i64 @nn_fast(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %81
  %98 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %99 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %98, i32 0, i32 3
  %100 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %101 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %100, i32 0, i32 4
  %102 = load i32, i32* @NN_USOCK_SENT, align 4
  %103 = call i32 @nn_fsm_raise(i32* %99, i32* %101, i32 %102)
  br label %132

104:                                              ; preds = %81
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @nn_slow(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ECONNRESET, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 0, %118
  %120 = call i32 @errnum_assert(i32 %117, i32 %119)
  %121 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %122 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %121, i32 0, i32 3
  %123 = load i32, i32* @NN_USOCK_ACTION_ERROR, align 4
  %124 = call i32 @nn_fsm_action(i32* %122, i32 %123)
  br label %132

125:                                              ; preds = %104
  %126 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %127 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %130 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %129, i32 0, i32 1
  %131 = call i32 @nn_worker_execute(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %125, %112, %97, %15
  ret void
}

declare dso_local i32 @nn_fsm_action(i32*, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_send_raw(%struct.nn_usock*, %struct.TYPE_6__*) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_worker_execute(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
