; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_msgqueue.c_nn_msgqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msgqueue = type { i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i64, %struct.nn_msgqueue_chunk* }
%struct.nn_msgqueue_chunk = type { i32* }
%struct.TYPE_3__ = type { i64, %struct.nn_msgqueue_chunk* }

@.str = private unnamed_addr constant [15 x i8] c"msgqueue chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msgqueue_init(%struct.nn_msgqueue* %0, i64 %1) #0 {
  %3 = alloca %struct.nn_msgqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nn_msgqueue_chunk*, align 8
  store %struct.nn_msgqueue* %0, %struct.nn_msgqueue** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %7 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %9 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %12 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = call %struct.nn_msgqueue_chunk* @nn_alloc(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_msgqueue_chunk* %13, %struct.nn_msgqueue_chunk** %5, align 8
  %14 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %5, align 8
  %15 = call i32 @alloc_assert(%struct.nn_msgqueue_chunk* %14)
  %16 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %5, align 8
  %17 = getelementptr inbounds %struct.nn_msgqueue_chunk, %struct.nn_msgqueue_chunk* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %5, align 8
  %19 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %20 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.nn_msgqueue_chunk* %18, %struct.nn_msgqueue_chunk** %21, align 8
  %22 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %23 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.nn_msgqueue_chunk*, %struct.nn_msgqueue_chunk** %5, align 8
  %26 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %27 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.nn_msgqueue_chunk* %25, %struct.nn_msgqueue_chunk** %28, align 8
  %29 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %30 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.nn_msgqueue*, %struct.nn_msgqueue** %3, align 8
  %33 = getelementptr inbounds %struct.nn_msgqueue, %struct.nn_msgqueue* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local %struct.nn_msgqueue_chunk* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_msgqueue_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
