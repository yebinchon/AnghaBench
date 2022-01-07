; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_trim.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nn_chunkref_chunk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_trim(%struct.nn_chunkref* %0, i64 %1) #0 {
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nn_chunkref_chunk*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %7 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %15 = bitcast %struct.nn_chunkref* %14 to %struct.nn_chunkref_chunk*
  store %struct.nn_chunkref_chunk* %15, %struct.nn_chunkref_chunk** %5, align 8
  %16 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %17 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @nn_chunk_trim(i32 %18, i64 %19)
  %21 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %22 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %25 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = icmp uge i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @nn_assert(i32 %33)
  %35 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %36 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = bitcast i32* %39 to i64*
  %41 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %42 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add i64 1, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %50 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %4, align 8
  %57 = sub i64 %55, %56
  %58 = call i32 @memmove(i64* %40, i64* %48, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %61 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %59
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @nn_chunk_trim(i32, i64) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
