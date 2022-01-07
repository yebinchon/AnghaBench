; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_size.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nn_chunkref_chunk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_chunkref_size(%struct.nn_chunkref* %0) #0 {
  %2 = alloca %struct.nn_chunkref*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %2, align 8
  %3 = load %struct.nn_chunkref*, %struct.nn_chunkref** %2, align 8
  %4 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.nn_chunkref*, %struct.nn_chunkref** %2, align 8
  %12 = bitcast %struct.nn_chunkref* %11 to %struct.nn_chunkref_chunk*
  %13 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nn_chunk_size(i32 %14)
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.nn_chunkref*, %struct.nn_chunkref** %2, align 8
  %18 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %16, %10
  %25 = phi i64 [ %15, %10 ], [ %23, %16 ]
  ret i64 %25
}

declare dso_local i64 @nn_chunk_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
