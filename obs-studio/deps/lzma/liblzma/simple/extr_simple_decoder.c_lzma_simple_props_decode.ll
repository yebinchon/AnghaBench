; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_decoder.c_lzma_simple_props_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_decoder.c_lzma_simple_props_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_simple_props_decode(i8** %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @LZMA_OK, align 4
  store i32 %14, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %46

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_4__* @lzma_alloc(i32 8, i32* %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @unaligned_read32le(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @lzma_free(%struct.TYPE_4__* %37, i32* %38)
  br label %44

40:                                               ; preds = %27
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = bitcast %struct.TYPE_4__* %41 to i8*
  %43 = load i8**, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @LZMA_OK, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %25, %18, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @lzma_alloc(i32, i32*) #1

declare dso_local i64 @unaligned_read32le(i32*) #1

declare dso_local i32 @lzma_free(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
