; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_TELL_NO_CHECK = common dso_local global i32 0, align 4
@LZMA_NO_CHECK = common dso_local global i32 0, align 4
@LZMA_TELL_ANY_CHECK = common dso_local global i32 0, align 4
@LZMA_GET_CHECK = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_CONCATENATED = common dso_local global i32 0, align 4
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @auto_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_decode(%struct.TYPE_5__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %130 [
    i32 128, label %24
    i32 130, label %80
    i32 129, label %113
  ]

24:                                               ; preds = %9
  %25 = load i64*, i64** %14, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @LZMA_OK, align 4
  store i32 %30, i32* %10, align 4
  br label %133

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 130, i32* %33, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 253
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lzma_stream_decoder_init(%struct.TYPE_6__* %42, i32* %43, i32 %46, i32 %49)
  %51 = call i32 @return_if_error(i32 %50)
  br label %79

52:                                               ; preds = %31
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lzma_alone_decoder_init(%struct.TYPE_6__* %54, i32* %55, i32 %58, i32 1)
  %60 = call i32 @return_if_error(i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LZMA_TELL_NO_CHECK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @LZMA_NO_CHECK, align 4
  store i32 %68, i32* %10, align 4
  br label %133

69:                                               ; preds = %52
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LZMA_TELL_ANY_CHECK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @LZMA_GET_CHECK, align 4
  store i32 %77, i32* %10, align 4
  br label %133

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %40
  br label %80

80:                                               ; preds = %9, %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i64*, i64** %17, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i32, i32* %19, align 4
  %97 = call i32 %84(i32 %88, i32* %89, i32* %90, i64* %91, i64 %92, i32* %93, i64* %94, i64 %95, i32 %96)
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* @LZMA_STREAM_END, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %80
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LZMA_CONCATENATED, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101, %80
  %109 = load i32, i32* %20, align 4
  store i32 %109, i32* %10, align 4
  br label %133

110:                                              ; preds = %101
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 129, i32* %112, align 8
  br label %113

113:                                              ; preds = %9, %110
  %114 = load i64*, i64** %14, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %119, i32* %10, align 4
  br label %133

120:                                              ; preds = %113
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @LZMA_FINISH, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @LZMA_STREAM_END, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @LZMA_OK, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %10, align 4
  br label %133

130:                                              ; preds = %9
  %131 = call i32 @assert(i32 0)
  %132 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %130, %128, %118, %108, %76, %67, %29
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_stream_decoder_init(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @lzma_alone_decoder_init(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
