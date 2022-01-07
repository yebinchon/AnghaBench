; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_ADPCM_StreamOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_ADPCM_StreamOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@ACM_STREAMOPENF_ASYNC = common dso_local global i32 0, align 4
@ACMERR_NOTPOSSIBLE = common dso_local global i32 0, align 4
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@WAVE_FORMAT_IMA_ADPCM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"spb=%u\0A\00", align 1
@cvtSSima16K = common dso_local global i8* null, align 8
@cvtMMimaK = common dso_local global i8* null, align 8
@cvtSS16imaK = common dso_local global i8* null, align 8
@cvtMM16imaK = common dso_local global i8* null, align 8
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ADPCM_StreamOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ADPCM_StreamOpen(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ACM_STREAMOPENF_ASYNC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i32 @ADPCM_GetFormatIndex(%struct.TYPE_13__* %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = call i32 @ADPCM_GetFormatIndex(%struct.TYPE_13__* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %27, i32* %2, align 4
  br label %345

28:                                               ; preds = %20
  %29 = call i32 (...) @GetProcessHeap()
  %30 = call %struct.TYPE_12__* @HeapAlloc(i32 %29, i32 0, i32 8)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %4, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %345

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = ptrtoint %struct.TYPE_12__* %36 to i64
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %338

56:                                               ; preds = %47, %35
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WAVE_FORMAT_IMA_ADPCM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %213

64:                                               ; preds = %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %213

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %110, label %84

84:                                               ; preds = %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %89, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %84
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 16
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 8
  br i1 %109, label %110, label %111

110:                                              ; preds = %103, %84, %72
  br label %338

111:                                              ; preds = %103, %96
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = bitcast %struct.TYPE_13__* %114 to %struct.TYPE_11__*
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = sub i32 %120, 1
  %122 = and i32 %121, 3
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %338

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  %127 = sub i32 %126, 1
  %128 = udiv i32 %127, 2
  %129 = add i32 %128, 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = mul i32 %129, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %135, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %338

143:                                              ; preds = %125
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i8*, i8** @cvtSSima16K, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %150, %143
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 16
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i8*, i8** @cvtMMimaK, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %175, %168, %161
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 8
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i8*, i8** @cvtMMimaK, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %186, %179
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %338

212:                                              ; preds = %204, %197
  br label %332

213:                                              ; preds = %64, %56
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %330

221:                                              ; preds = %213
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @WAVE_FORMAT_IMA_ADPCM, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %330

229:                                              ; preds = %221
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %234, %239
  br i1 %240, label %260, label %241

241:                                              ; preds = %229
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %246, %251
  br i1 %252, label %260, label %253

253:                                              ; preds = %241
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 16
  br i1 %259, label %260, label %261

260:                                              ; preds = %253, %241, %229
  br label %338

261:                                              ; preds = %253
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = bitcast %struct.TYPE_13__* %264 to %struct.TYPE_11__*
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = sub i32 %270, 1
  %272 = and i32 %271, 3
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %261
  br label %338

275:                                              ; preds = %261
  %276 = load i32, i32* %5, align 4
  %277 = sub i32 %276, 1
  %278 = udiv i32 %277, 2
  %279 = add i32 %278, 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = mul i32 %279, %284
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = icmp ult i32 %285, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %275
  br label %338

293:                                              ; preds = %275
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 16
  br i1 %299, label %300, label %311

300:                                              ; preds = %293
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load i8*, i8** @cvtSS16imaK, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  br label %311

311:                                              ; preds = %307, %300, %293
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 16
  br i1 %317, label %318, label %329

318:                                              ; preds = %311
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = load i8*, i8** @cvtMM16imaK, align 8
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  store i8* %326, i8** %328, align 8
  br label %329

329:                                              ; preds = %325, %318, %311
  br label %331

330:                                              ; preds = %221, %213
  br label %338

331:                                              ; preds = %329
  br label %332

332:                                              ; preds = %331, %212
  br label %333

333:                                              ; preds = %332
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = call i32 @ADPCM_Reset(%struct.TYPE_10__* %334, %struct.TYPE_12__* %335)
  %337 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %337, i32* %2, align 4
  br label %345

338:                                              ; preds = %330, %292, %274, %260, %211, %142, %124, %110, %55
  %339 = call i32 (...) @GetProcessHeap()
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %341 = call i32 @HeapFree(i32 %339, i32 0, %struct.TYPE_12__* %340)
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  store i64 0, i64* %343, align 8
  %344 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %344, i32* %2, align 4
  br label %345

345:                                              ; preds = %338, %333, %33, %26
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ADPCM_GetFormatIndex(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @ADPCM_Reset(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
