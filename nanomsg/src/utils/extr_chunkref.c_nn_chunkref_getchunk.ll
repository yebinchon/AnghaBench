; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_getchunk.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_chunkref.c_nn_chunkref_getchunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nn_chunkref_chunk = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nn_chunkref_getchunk(%struct.nn_chunkref* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nn_chunkref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_chunkref_chunk*, align 8
  %6 = alloca i8*, align 8
  store %struct.nn_chunkref* %0, %struct.nn_chunkref** %3, align 8
  %7 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %8 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %16 = bitcast %struct.nn_chunkref* %15 to %struct.nn_chunkref_chunk*
  store %struct.nn_chunkref_chunk* %16, %struct.nn_chunkref_chunk** %5, align 8
  %17 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %18 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.nn_chunkref_chunk*, %struct.nn_chunkref_chunk** %5, align 8
  %23 = getelementptr inbounds %struct.nn_chunkref_chunk, %struct.nn_chunkref_chunk* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %56

25:                                               ; preds = %1
  %26 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %27 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nn_chunk_alloc(i32 %31, i32 0, i8** %6)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @errno_assert(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %39 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %44 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i8* %37, i32* %42, i32 %48)
  %50 = load %struct.nn_chunkref*, %struct.nn_chunkref** %3, align 8
  %51 = getelementptr inbounds %struct.nn_chunkref, %struct.nn_chunkref* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %2, align 8
  br label %56

56:                                               ; preds = %25, %14
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @nn_chunk_alloc(i32, i32, i8**) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
