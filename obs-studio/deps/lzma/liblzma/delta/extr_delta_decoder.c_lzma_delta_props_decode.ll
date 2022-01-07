; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_decoder.c_lzma_delta_props_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_decoder.c_lzma_delta_props_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@LZMA_DELTA_TYPE_BYTE = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_delta_props_decode(i8** %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %14, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_3__* @lzma_alloc(i32 16, i32* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %15
  %23 = load i32, i32* @LZMA_DELTA_TYPE_BYTE, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = bitcast %struct.TYPE_3__* %32 to i8*
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @LZMA_OK, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %22, %20, %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_3__* @lzma_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
