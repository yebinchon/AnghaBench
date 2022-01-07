; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_mv.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_mv(%struct.nn_chunkref* %0, %struct.nn_chunkref* %1) #0 {
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca %struct.nn_chunkref*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  store %struct.nn_chunkref* %1, %struct.nn_chunkref** %4, align 8
  %5 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %6 = load %struct.nn_chunkref*, %struct.nn_chunkref** %4, align 8
  %7 = load %struct.nn_chunkref*, %struct.nn_chunkref** %4, align 8
  %8 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.nn_chunkref*, %struct.nn_chunkref** %4, align 8
  %17 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  br label %23

23:                                               ; preds = %15, %14
  %24 = phi i32 [ 4, %14 ], [ %22, %15 ]
  %25 = call i32 @memcpy(%struct.nn_chunkref* %5, %struct.nn_chunkref* %6, i32 %24)
  ret void
}

declare dso_local i32 @memcpy(%struct.nn_chunkref*, %struct.nn_chunkref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
