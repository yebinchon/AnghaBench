; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_index_encoder.c_lzma_index_encoder_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_index_encoder.c_lzma_index_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@index_encode = common dso_local global i32 0, align 4
@index_encoder_end = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_index_encoder_init(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_5__*, i32*, i32*)* @lzma_index_encoder_init, %struct.TYPE_5__* %8, i32* %9)
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @lzma_alloc(i32 4, i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32* @index_encode, i32** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32* @index_encoder_end, i32** %35, align 8
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @index_encoder_reset(i32* %39, i32* %40)
  %42 = load i32, i32* @LZMA_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %29, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_5__*, i32*, i32*)*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @index_encoder_reset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
