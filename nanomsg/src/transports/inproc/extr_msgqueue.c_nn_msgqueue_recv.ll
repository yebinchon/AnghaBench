; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_recv.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msgqueue = type { i32, i32, %struct.nn_msgqueue_chunk*, %struct.TYPE_2__ }
%struct.nn_msgqueue_chunk = type { %struct.nn_msgqueue_chunk*, i32* }
%struct.TYPE_2__ = type { i64, %struct.nn_msgqueue_chunk* }
%struct.nn_msg = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NN_MSGQUEUE_GRANULARITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_msgqueue_recv(%struct.nn_msgqueue* %0, %struct.nn_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_msgqueue*, align 8
  %5 = alloca %struct.nn_msg*, align 8
  %6 = alloca %struct.nn_msgqueue_chunk*, align 8
  store %struct.nn_msgqueue* %0, %struct.nn_msgqueue** %4, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %5, align 8
  %7 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %8 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @nn_slow(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %20 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %21 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %22, align 8
  %24 = getelementptr inbounds %struct.nn_msgqueue_chunk, %struct.nn_msgqueue_chunk* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %27 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = call i32 @nn_msg_mv(%struct.nn_msg* %19, i32* %30)
  %32 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %33 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %38 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NN_MSGQUEUE_GRANULARITY, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @nn_slow(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %18
  %47 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %48 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %49, align 8
  store %struct.nn_msgqueue_chunk* %50, %struct.nn_msgqueue_chunk** %6, align 8
  %51 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %52 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %53, align 8
  %55 = getelementptr inbounds %struct.nn_msgqueue_chunk, %struct.nn_msgqueue_chunk* %54, i32 0, i32 0
  %56 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %55, align 8
  %57 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %58 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store %struct.nn_msgqueue_chunk* %56, %struct.nn_msgqueue_chunk** %59, align 8
  %60 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %61 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %64 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %63, i32 0, i32 2
  %65 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %64, align 8
  %66 = icmp ne %struct.nn_msgqueue_chunk* %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @nn_fast(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %46
  %72 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %6, align 8
  %73 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %74 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %73, i32 0, i32 2
  store %struct.nn_msgqueue_chunk* %72, %struct.nn_msgqueue_chunk** %74, align 8
  br label %78

75:                                               ; preds = %46
  %76 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %6, align 8
  %77 = call i32 @nn_free(%struct.nn_msgqueue_chunk* %76)
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %18
  %80 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %81 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %85 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %84, i32 0, i32 1
  %86 = call i64 @nn_chunkref_size(i32* %85)
  %87 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %88 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %87, i32 0, i32 0
  %89 = call i64 @nn_chunkref_size(i32* %88)
  %90 = add nsw i64 %86, %89
  %91 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %92 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %79, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_msg_mv(%struct.nn_msg*, i32*) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_free(%struct.nn_msgqueue_chunk*) #1

declare dso_local i64 @nn_chunkref_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
