; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decoder_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@auto_decode = common dso_local global i32 0, align 4
@auto_decoder_end = common dso_local global i32 0, align 4
@auto_decoder_get_check = common dso_local global i32 0, align 4
@auto_decoder_memconfig = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@SEQ_INIT = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64, i32)* @auto_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_decoder_init(%struct.TYPE_6__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_6__*, i32*, i64, i32)* @auto_decoder_init, %struct.TYPE_6__* %10, i32* %11)
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %16, i32* %5, align 4
  br label %72

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @LZMA_SUPPORTED_FLAGS, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_7__* @lzma_alloc(i32 4, i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %72

41:                                               ; preds = %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i32* @auto_decode, i32** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32* @auto_decoder_end, i32** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32* @auto_decoder_get_check, i32** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* @auto_decoder_memconfig, i32** %49, align 8
  %50 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 8
  br label %55

55:                                               ; preds = %41, %25
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i64 %56, i64* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @SEQ_INIT, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @LZMA_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %55, %39, %23, %15
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_6__*, i32*, i64, i32)*, %struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_7__* @lzma_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
