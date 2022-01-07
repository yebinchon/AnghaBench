; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_animation_api.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz_animation_api.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }

@WEBP_FF_CANVAS_WIDTH = common dso_local global i32 0, align 4
@WEBP_FF_CANVAS_HEIGHT = common dso_local global i32 0, align 4
@kFuzzPxLimit = common dso_local global i64 0, align 8
@kFuzzFrameLimit = common dso_local global i32 0, align 4
@MODE_LAST = common dso_local global i64 0, align 8
@MODE_BGRA = common dso_local global i64 0, align 8
@MODE_rgbA = common dso_local global i64 0, align 8
@MODE_bgrA = common dso_local global i64 0, align 8
@MODE_RGBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = call i32 @WebPDataInit(%struct.TYPE_14__* %6)
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = call i32* @WebPDemux(%struct.TYPE_14__* %6)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

28:                                               ; preds = %2
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @WEBP_FF_CANVAS_WIDTH, align 4
  %31 = call i64 @WebPDemuxGetI(i32* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @WEBP_FF_CANVAS_HEIGHT, align 4
  %34 = call i64 @WebPDemuxGetI(i32* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* @kFuzzPxLimit, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @WebPDemuxDelete(i32* %41)
  store i32 0, i32* %3, align 4
  br label %135

43:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @kFuzzFrameLimit, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @WebPDemuxGetFrame(i32* %49, i32 %51, %struct.TYPE_13__* %10)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %81

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @WebPGetInfo(i32 %58, i32 %61, i32* %12, i32* %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = load i64, i64* @kFuzzPxLimit, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = call i32 @WebPDemuxReleaseIterator(%struct.TYPE_13__* %10)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @WebPDemuxDelete(i32* %74)
  store i32 0, i32* %3, align 4
  br label %135

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %44

81:                                               ; preds = %54, %44
  %82 = call i32 @WebPDemuxReleaseIterator(%struct.TYPE_13__* %10)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @WebPDemuxDelete(i32* %83)
  %85 = call i32 @WebPAnimDecoderOptionsInit(%struct.TYPE_15__* %14)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %135

88:                                               ; preds = %81
  %89 = load i64, i64* %5, align 8
  %90 = and i64 %89, 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @MODE_LAST, align 8
  %94 = urem i64 %92, %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MODE_BGRA, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MODE_rgbA, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MODE_bgrA, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i64, i64* @MODE_RGBA, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %105, %100, %88
  %114 = call i32* @WebPAnimDecoderNew(%struct.TYPE_14__* %6, %struct.TYPE_15__* %14)
  store i32* %114, i32** %15, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %135

118:                                              ; preds = %113
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %129, %118
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @kFuzzFrameLimit, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @WebPAnimDecoderGetNext(i32* %124, i32** %17, i32* %18)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %132

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %119

132:                                              ; preds = %127, %119
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @WebPAnimDecoderDelete(i32* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %132, %117, %87, %72, %40, %27
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @WebPDataInit(%struct.TYPE_14__*) #1

declare dso_local i32* @WebPDemux(%struct.TYPE_14__*) #1

declare dso_local i64 @WebPDemuxGetI(i32*, i32) #1

declare dso_local i32 @WebPDemuxDelete(i32*) #1

declare dso_local i32 @WebPDemuxGetFrame(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @WebPGetInfo(i32, i32, i32*, i32*) #1

declare dso_local i32 @WebPDemuxReleaseIterator(%struct.TYPE_13__*) #1

declare dso_local i32 @WebPAnimDecoderOptionsInit(%struct.TYPE_15__*) #1

declare dso_local i32* @WebPAnimDecoderNew(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @WebPAnimDecoderGetNext(i32*, i32**, i32*) #1

declare dso_local i32 @WebPAnimDecoderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
