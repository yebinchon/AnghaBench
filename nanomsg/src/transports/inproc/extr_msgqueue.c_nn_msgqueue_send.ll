; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_send.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msgqueue = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32* }
%struct.nn_msg = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NN_MSGQUEUE_GRANULARITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"msgqueue chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_msgqueue_send(%struct.nn_msgqueue* %0, %struct.nn_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_msgqueue*, align 8
  %5 = alloca %struct.nn_msg*, align 8
  %6 = alloca i64, align 8
  store %struct.nn_msgqueue* %0, %struct.nn_msgqueue** %4, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %5, align 8
  %7 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %8 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %7, i32 0, i32 1
  %9 = call i64 @nn_chunkref_size(i32* %8)
  %10 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %11 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %10, i32 0, i32 0
  %12 = call i64 @nn_chunkref_size(i32* %11)
  %13 = add i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %15 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %20 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %25 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br label %28

28:                                               ; preds = %18, %2
  %29 = phi i1 [ false, %2 ], [ %27, %18 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @nn_slow(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %115

36:                                               ; preds = %28
  %37 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %38 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %43 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %47 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %53 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %58 = call i32 @nn_msg_mv(i32* %56, %struct.nn_msg* %57)
  %59 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %60 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %65 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NN_MSGQUEUE_GRANULARITY, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @nn_slow(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %36
  %74 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %75 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @nn_slow(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %73
  %83 = call %struct.TYPE_5__* @nn_alloc(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %85 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %84, i32 0, i32 4
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %85, align 8
  %86 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %87 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @alloc_assert(%struct.TYPE_5__* %88)
  %90 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %91 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %93, align 8
  br label %94

94:                                               ; preds = %82, %73
  %95 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %96 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %95, i32 0, i32 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %99 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %102, align 8
  %103 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %104 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %103, i32 0, i32 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %107 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %108, align 8
  %109 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %110 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %109, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %110, align 8
  %111 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %4, align 8
  %112 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %94, %36
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %33
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @nn_chunkref_size(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_msg_mv(i32*, %struct.nn_msg*) #1

declare dso_local %struct.TYPE_5__* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
