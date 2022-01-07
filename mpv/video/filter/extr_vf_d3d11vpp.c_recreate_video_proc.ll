; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_recreate_video_proc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_recreate_video_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_17__, i32, i32, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Found %d rate conversion caps. Looking for caps=0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  - %d: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"       (matching)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"No fitting video processor found, picking #0.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to create D3D11 video processor.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL = common dso_local global i32 0, align 4
@MP_CSP_BT_601 = common dso_local global i32 0, align 4
@MP_CSP_LEVELS_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*)* @recreate_video_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recreate_video_proc(%struct.mp_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_21__, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %14 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %13, i32 0, i32 0
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %4, align 8
  %16 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %17 = call i32 @destroy_video_proc(%struct.mp_filter* %16)
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 3
  %45 = call i32 @ID3D11VideoDevice_CreateVideoProcessorEnumerator(i32 %42, %struct.TYPE_20__* %6, i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %203

50:                                               ; preds = %1
  %51 = load %struct.priv*, %struct.priv** %4, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps(i32 %53, %struct.TYPE_22__* %7)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %203

59:                                               ; preds = %50
  %60 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 5
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %67)
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %108, %59
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %69
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps(i32 %77, i32 %78, %struct.TYPE_19__* %10)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %203

84:                                               ; preds = %74
  %85 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.priv*, %struct.priv** %4, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 5
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %91, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %84
  %100 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %101 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %84
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %69

111:                                              ; preds = %69
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %116 = call i32 @MP_WARN(%struct.mp_filter* %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.priv*, %struct.priv** %4, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.priv*, %struct.priv** %4, align 8
  %122 = getelementptr inbounds %struct.priv, %struct.priv* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.priv*, %struct.priv** %4, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 0
  %127 = call i32 @ID3D11VideoDevice_CreateVideoProcessor(i32 %120, i32 %123, i32 %124, i32* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @FAILED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %133 = call i32 @MP_ERR(%struct.mp_filter* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %203

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %136 = load %struct.priv*, %struct.priv** %4, align 8
  %137 = getelementptr inbounds %struct.priv, %struct.priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %135, align 4
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %141 = load %struct.priv*, %struct.priv** %4, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %140, align 4
  %145 = load %struct.priv*, %struct.priv** %4, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.priv*, %struct.priv** %4, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32 %147, i32 %150, i32 0, i32 %151, %struct.TYPE_18__* %11)
  %153 = load %struct.priv*, %struct.priv** %4, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.priv*, %struct.priv** %4, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @FALSE, align 4
  %160 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32 %155, i32 %158, i32 0, i32 %159)
  %161 = load %struct.priv*, %struct.priv** %4, align 8
  %162 = getelementptr inbounds %struct.priv, %struct.priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.priv*, %struct.priv** %4, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL, align 4
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamOutputRate(i32 %163, i32 %166, i32 0, i32 %167, i32 %168, i32 0)
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %171 = load %struct.priv*, %struct.priv** %4, align 8
  %172 = getelementptr inbounds %struct.priv, %struct.priv* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MP_CSP_BT_601, align 4
  %177 = icmp ne i32 %175, %176
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %170, align 4
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %180 = load %struct.priv*, %struct.priv** %4, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MP_CSP_LEVELS_TV, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 2
  store i32 %188, i32* %179, align 4
  %189 = load %struct.priv*, %struct.priv** %4, align 8
  %190 = getelementptr inbounds %struct.priv, %struct.priv* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.priv*, %struct.priv** %4, align 8
  %193 = getelementptr inbounds %struct.priv, %struct.priv* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamColorSpace(i32 %191, i32 %194, i32 0, %struct.TYPE_21__* %12)
  %196 = load %struct.priv*, %struct.priv** %4, align 8
  %197 = getelementptr inbounds %struct.priv, %struct.priv* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.priv*, %struct.priv** %4, align 8
  %200 = getelementptr inbounds %struct.priv, %struct.priv* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @ID3D11VideoContext_VideoProcessorSetOutputColorSpace(i32 %198, i32 %201, %struct.TYPE_21__* %12)
  store i32 0, i32* %2, align 4
  br label %206

203:                                              ; preds = %131, %83, %58, %49
  %204 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %205 = call i32 @destroy_video_proc(%struct.mp_filter* %204)
  store i32 -1, i32* %2, align 4
  br label %206

206:                                              ; preds = %203, %134
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @destroy_video_proc(%struct.mp_filter*) #1

declare dso_local i32 @ID3D11VideoDevice_CreateVideoProcessorEnumerator(i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*, ...) #1

declare dso_local i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*) #1

declare dso_local i32 @ID3D11VideoDevice_CreateVideoProcessor(i32, i32, i32, i32*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32, i32, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32, i32, i32, i32) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamOutputRate(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamColorSpace(i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetOutputColorSpace(i32, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
