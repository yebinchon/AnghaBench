; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_init_audio.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_init_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_16__, %struct.TYPE_24__*, i64, i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }

@PINDIR_OUTPUT = common dso_local global i32 0, align 4
@wszAudioStream = common dso_local global i32 0, align 4
@FORMAT_WaveFormatEx = common dso_local global i32 0, align 4
@MEDIATYPE_Audio = common dso_local global i32 0, align 4
@MEDIASUBTYPE_MPEG1AudioPayload = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Variable-bitrate audio not fully supported.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@WAVE_FORMAT_MPEGLAYER3 = common dso_local global i32 0, align 4
@WAVE_FORMAT_MPEG = common dso_local global i32 0, align 4
@freqs = common dso_local global i32* null, align 8
@tabsel_123 = common dso_local global i32*** null, align 8
@MPEGLAYER3_WFX_EXTRA_BYTES = common dso_local global i32 0, align 4
@MPEGLAYER3_ID_MPEG = common dso_local global i32 0, align 4
@MPEGLAYER3_FLAG_PADDING_ON = common dso_local global i32 0, align 4
@ACM_MPEG_LAYER1 = common dso_local global i32 0, align 4
@ACM_MPEG_LAYER2 = common dso_local global i32 0, align 4
@ACM_MPEG_LAYER3 = common dso_local global i32 0, align 4
@ACM_MPEG_SINGLECHANNEL = common dso_local global i32 0, align 4
@ACM_MPEG_DUALCHANNEL = common dso_local global i32 0, align 4
@ACM_MPEG_JOINTSTEREO = common dso_local global i32 0, align 4
@ACM_MPEG_STEREO = common dso_local global i32 0, align 4
@ACM_MPEG_ID_MPEG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"MPEG audio stream detected:\0A\09Layer %d (%#x)\0A\09Frequency: %d\0A\09Channels: %d (%d)\0A\09BytesPerSec: %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, %struct.TYPE_24__*)* @MPEGSplitter_init_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEGSplitter_init_audio(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  store i32 1, i32* %16, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %23 = call i32 @ZeroMemory(%struct.TYPE_24__* %22, i32 48)
  %24 = load i32, i32* @PINDIR_OUTPUT, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @wszAudioStream, align 4
  %37 = call i32 @wsprintfW(i32 %35, i32 %36)
  %38 = load i32, i32* @FORMAT_WaveFormatEx, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @MEDIATYPE_Audio, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_16__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_16__* @MEDIASUBTYPE_MPEG1AudioPayload to i8*), i64 4, i1 false)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 1
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 3
  %66 = and i32 %65, 1
  %67 = xor i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %61, %4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 1
  %73 = and i32 %72, 3
  %74 = sub nsw i32 4, %73
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %11, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 1
  %84 = and i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 2
  %89 = and i32 %88, 3
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %68
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %93, 3
  br label %96

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i32 [ %94, %92 ], [ 6, %95 ]
  %98 = add nsw i32 %89, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 3
  store i32 %103, i32* %19, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 4
  %108 = and i32 %107, 3
  store i32 %108, i32* %13, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 0
  %113 = and i32 %112, 3
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %96
  %117 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 15, i32* %11, align 4
  br label %118

118:                                              ; preds = %116, %96
  %119 = load i32, i32* %18, align 4
  %120 = icmp eq i32 %119, 3
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i64 20, i64 24
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_24__* @CoTaskMemAlloc(i32 %128)
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %131, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = icmp ne %struct.TYPE_24__* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %118
  %137 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %137, i32* %5, align 4
  br label %362

138:                                              ; preds = %118
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ZeroMemory(%struct.TYPE_24__* %141, i32 %144)
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  %149 = bitcast %struct.TYPE_24__* %148 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %10, align 8
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* @WAVE_FORMAT_MPEGLAYER3, align 4
  br label %156

154:                                              ; preds = %138
  %155 = load i32, i32* @WAVE_FORMAT_MPEG, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %19, align 4
  %161 = icmp eq i32 %160, 3
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 2
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32*, i32** @freqs, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32***, i32**** @tabsel_123, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32**, i32*** %173, i64 %175
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %177, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 1000
  %188 = sdiv i32 %187, 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %18, align 4
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %193, label %209

193:                                              ; preds = %156
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %196, 8
  %198 = mul nsw i32 %197, 144
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %16, align 4
  %203 = shl i32 %201, %202
  %204 = sdiv i32 %198, %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  br label %242

209:                                              ; preds = %156
  %210 = load i32, i32* %18, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %215, 8
  %217 = mul nsw i32 %216, 144
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sdiv i32 %217, %220
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %221, %222
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  br label %241

226:                                              ; preds = %209
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = mul nsw i32 %229, 8
  %231 = mul nsw i32 %230, 12
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %231, %234
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %235, %236
  %238 = mul nsw i32 4, %237
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %226, %212
  br label %242

242:                                              ; preds = %241, %193
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 6
  store i64 0, i64* %244, align 8
  %245 = load i32, i32* %18, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %268

247:                                              ; preds = %242
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %249 = bitcast %struct.TYPE_19__* %248 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %249, %struct.TYPE_22__** %20, align 8
  %250 = load i32, i32* @MPEGLAYER3_WFX_EXTRA_BYTES, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @MPEGLAYER3_ID_MPEG, align 4
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @MPEGLAYER3_FLAG_PADDING_ON, align 4
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  store i32 1393, i32* %267, align 4
  br label %337

268:                                              ; preds = %242
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %270 = bitcast %struct.TYPE_19__* %269 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %270, %struct.TYPE_23__** %21, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 4
  store i32 22, i32* %272, align 8
  %273 = load i32, i32* %18, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @ACM_MPEG_LAYER1, align 4
  br label %286

277:                                              ; preds = %268
  %278 = load i32, i32* %18, align 4
  %279 = icmp eq i32 %278, 2
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = load i32, i32* @ACM_MPEG_LAYER2, align 4
  br label %284

282:                                              ; preds = %277
  %283 = load i32, i32* @ACM_MPEG_LAYER3, align 4
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi i32 [ %281, %280 ], [ %283, %282 ]
  br label %286

286:                                              ; preds = %284, %275
  %287 = phi i32 [ %276, %275 ], [ %285, %284 ]
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 5
  store i32 %287, i32* %289, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %292, 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* %19, align 4
  %297 = icmp eq i32 %296, 3
  br i1 %297, label %298, label %300

298:                                              ; preds = %286
  %299 = load i32, i32* @ACM_MPEG_SINGLECHANNEL, align 4
  br label %316

300:                                              ; preds = %286
  %301 = load i32, i32* %19, align 4
  %302 = icmp eq i32 %301, 2
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32, i32* @ACM_MPEG_DUALCHANNEL, align 4
  br label %314

305:                                              ; preds = %300
  %306 = load i32, i32* %19, align 4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32, i32* @ACM_MPEG_JOINTSTEREO, align 4
  br label %312

310:                                              ; preds = %305
  %311 = load i32, i32* @ACM_MPEG_STEREO, align 4
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi i32 [ %309, %308 ], [ %311, %310 ]
  br label %314

314:                                              ; preds = %312, %303
  %315 = phi i32 [ %304, %303 ], [ %313, %312 ]
  br label %316

316:                                              ; preds = %314, %298
  %317 = phi i32 [ %299, %298 ], [ %315, %314 ]
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %326

323:                                              ; preds = %316
  %324 = load i32, i32* %13, align 4
  %325 = shl i32 1, %324
  br label %326

326:                                              ; preds = %323, %322
  %327 = phi i32 [ 15, %322 ], [ %325, %323 ]
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %14, align 4
  %331 = add nsw i32 %330, 1
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 2
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* @ACM_MPEG_ID_MPEG1, align 4
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 3
  store i32 %334, i32* %336, align 4
  br label %337

337:                                              ; preds = %326, %247
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  store i32 %340, i32* %343, align 4
  %344 = load i32, i32* %18, align 4
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %19, align 4
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @TRACE(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %344, i32 %347, i32 %350, i32 %353, i32 %354, i32 %357)
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %360 = call i32 @dump_AM_MEDIA_TYPE(%struct.TYPE_24__* %359)
  %361 = load i32, i32* @S_OK, align 4
  store i32 %361, i32* %5, align 4
  br label %362

362:                                              ; preds = %337, %136
  %363 = load i32, i32* %5, align 4
  ret i32 %363
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @wsprintfW(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.TYPE_24__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dump_AM_MEDIA_TYPE(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
