; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_decoder.c_lzma_lzma_props_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_decoder.c_lzma_lzma_props_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32 }

@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_lzma_props_decode(i8** %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ne i64 %11, 5
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %14, i32* %5, align 4
  br label %49

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_5__* @lzma_alloc(i32 24, i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @lzma_lzma_lclppb_decode(%struct.TYPE_5__* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %44

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @unaligned_read32le(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = bitcast %struct.TYPE_5__* %40 to i8*
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @LZMA_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @lzma_free(%struct.TYPE_5__* %45, i32* %46)
  %48 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %30, %20, %13
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_5__* @lzma_alloc(i32, i32*) #1

declare dso_local i64 @lzma_lzma_lclppb_decode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @unaligned_read32le(i32*) #1

declare dso_local i32 @lzma_free(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
