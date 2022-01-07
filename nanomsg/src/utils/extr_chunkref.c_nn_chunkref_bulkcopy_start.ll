; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_bulkcopy_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_bulkcopy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nn_chunkref_chunk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_bulkcopy_start(%struct.nn_chunkref* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_chunkref_chunk*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %7 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %15 = bitcast %struct.nn_chunkref* %14 to %struct.nn_chunkref_chunk*
  store %struct.nn_chunkref_chunk* %15, %struct.nn_chunkref_chunk** %5, align 8
  %16 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %17 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @nn_chunk_addref(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @nn_chunk_addref(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
