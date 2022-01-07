; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_stream_encoder.c_stream_encoder_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_stream_encoder.c_stream_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }

@SEQ_BLOCK_INIT = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@SEQ_BLOCK_ENCODE = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@LZMA_VLI_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @stream_encoder_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stream_encoder_update(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SEQ_BLOCK_INIT, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @block_encoder_init(%struct.TYPE_16__* %24, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @LZMA_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %5, align 8
  br label %95

38:                                               ; preds = %17
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  br label %64

41:                                               ; preds = %4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SEQ_BLOCK_ENCODE, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)*, i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)** %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = call i32 %51(i32 %55, i32* %56, %struct.TYPE_15__* %57, %struct.TYPE_15__* %58)
  %60 = call i32 @return_if_error(i32 %59)
  br label %63

61:                                               ; preds = %41
  %62 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %62, i64* %5, align 8
  br label %95

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %38
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %85, %64
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @lzma_free(i32 %82, i32* %83)
  br label %85

85:                                               ; preds = %75
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @lzma_filters_copy(%struct.TYPE_15__* %89, %struct.TYPE_15__* %92, i32* %93)
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %88, %61, %36
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i64 @block_encoder_init(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_free(i32, i32*) #1

declare dso_local i64 @lzma_filters_copy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
