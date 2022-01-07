; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_demux_api.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_demux_api.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ICCP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FUZZ\00", align 1
@kFuzzFrameLimit = common dso_local global i32 0, align 4
@WEBP_MUX_NOT_FOUND = common dso_local global i32 0, align 4
@WEBP_MUX_OK = common dso_local global i32 0, align 4
@WEBP_DEMUX_PARSED_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = call i32 @WebPDataInit(%struct.TYPE_10__* %6)
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 2
  %30 = call i32* @WebPMuxCreate(%struct.TYPE_10__* %6, i64 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %129

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @WebPMuxGetChunk(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %8)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @WebPMuxGetChunk(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %8)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @WebPMuxGetChunk(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %8)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @WebPMuxGetFeatures(i32* %41, i32* %9)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @WebPMuxGetAnimationParams(i32* %43, i32* %10)
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %67, %34
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @kFuzzFrameLimit, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @WebPMuxGetFrame(i32* %50, i32 %52, %struct.TYPE_9__* %12)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @WEBP_MUX_NOT_FOUND, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %70

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @WEBP_MUX_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %64 = call i32 @WebPDataClear(i32* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %45

70:                                               ; preds = %57, %45
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @WebPMuxDelete(i32* %71)
  br label %128

73:                                               ; preds = %2
  %74 = load i64, i64* %5, align 8
  %75 = and i64 %74, 2
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = call i32* @WebPDemuxPartial(%struct.TYPE_10__* %6, i64* %15)
  store i32* %78, i32** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @WEBP_DEMUX_PARSED_HEADER, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @WebPDemuxDelete(i32* %83)
  store i32 0, i32* %3, align 4
  br label %129

85:                                               ; preds = %77
  br label %92

86:                                               ; preds = %73
  %87 = call i32* @WebPDemux(%struct.TYPE_10__* %6)
  store i32* %87, i32** %14, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %129

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32*, i32** %14, align 8
  %94 = call i64 @WebPDemuxGetChunk(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i32* %16)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @WebPDemuxNextChunk(i32* %16)
  br label %98

98:                                               ; preds = %96, %92
  %99 = call i32 @WebPDemuxReleaseChunkIterator(i32* %16)
  %100 = load i32*, i32** %14, align 8
  %101 = call i64 @WebPDemuxGetChunk(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %16)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @WebPDemuxPrevChunk(i32* %16)
  br label %105

105:                                              ; preds = %103, %98
  %106 = call i32 @WebPDemuxReleaseChunkIterator(i32* %16)
  %107 = load i32*, i32** %14, align 8
  %108 = call i64 @WebPDemuxGetFrame(i32* %107, i32 1, i32* %17)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  br label %111

111:                                              ; preds = %120, %110
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @kFuzzFrameLimit, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = call i32 @WebPDemuxNextFrame(i32* %17)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  br label %123

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %111

123:                                              ; preds = %118, %111
  br label %124

124:                                              ; preds = %123, %105
  %125 = call i32 @WebPDemuxReleaseIterator(i32* %17)
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @WebPDemuxDelete(i32* %126)
  br label %128

128:                                              ; preds = %124, %70
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %90, %82, %33
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @WebPDataInit(%struct.TYPE_10__*) #1

declare dso_local i32* @WebPMuxCreate(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @WebPMuxGetChunk(i32*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @WebPMuxGetFeatures(i32*, i32*) #1

declare dso_local i32 @WebPMuxGetAnimationParams(i32*, i32*) #1

declare dso_local i32 @WebPMuxGetFrame(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @WebPDataClear(i32*) #1

declare dso_local i32 @WebPMuxDelete(i32*) #1

declare dso_local i32* @WebPDemuxPartial(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @WebPDemuxDelete(i32*) #1

declare dso_local i32* @WebPDemux(%struct.TYPE_10__*) #1

declare dso_local i64 @WebPDemuxGetChunk(i32*, i8*, i32, i32*) #1

declare dso_local i32 @WebPDemuxNextChunk(i32*) #1

declare dso_local i32 @WebPDemuxReleaseChunkIterator(i32*) #1

declare dso_local i32 @WebPDemuxPrevChunk(i32*) #1

declare dso_local i64 @WebPDemuxGetFrame(i32*, i32, i32*) #1

declare dso_local i32 @WebPDemuxNextFrame(i32*) #1

declare dso_local i32 @WebPDemuxReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
