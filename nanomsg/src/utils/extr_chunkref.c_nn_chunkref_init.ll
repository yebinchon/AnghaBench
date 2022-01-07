; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.nn_chunkref_chunk = type { i32, i32 }

@NN_CHUNKREF_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_init(%struct.nn_chunkref* %0, i64 %1) #0 {
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_chunkref_chunk*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @NN_CHUNKREF_MAX, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %13 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %11, i64* %16, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %19 = bitcast %struct.nn_chunkref* %18 to %struct.nn_chunkref_chunk*
  store %struct.nn_chunkref_chunk* %19, %struct.nn_chunkref_chunk** %6, align 8
  %20 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %6, align 8
  %21 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %20, i32 0, i32 0
  store i32 255, i32* %21, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %6, align 8
  %24 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %23, i32 0, i32 1
  %25 = call i32 @nn_chunk_alloc(i64 %22, i32 0, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @errno_assert(i32 %28)
  br label %30

30:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @nn_chunk_alloc(i64, i32, i32*) #1

declare dso_local i32 @errno_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
