; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_SaveFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_SaveFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@formtypeWAVE = common dso_local global i32 0, align 4
@MMIO_CREATERIFF = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@AVIERR_FILEWRITE = common dso_local global i32 0, align 4
@ckidWAVEFORMAT = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@ACM_FORMATSUGGESTF_WFORMATTAG = common dso_local global i32 0, align 4
@ACM_STREAMOPENF_NONREALTIME = common dso_local global i32 0, align 4
@ACM_STREAMSIZEF_SOURCE = common dso_local global i32 0, align 4
@ckidWAVEFACT = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c": fact chunk is needed for non-pcm files -- currently no codec found, so skipped!\0A\00", align 1
@ckidAVIPADDING = common dso_local global i32 0, align 4
@ckidWAVEDATA = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @AVIFILE_SaveFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_SaveFile(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = call i32 @mmioSeek(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @formtypeWAVE, align 4
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MMIO_CREATERIFF, align 4
  %21 = call i64 @mmioCreateChunk(i32 %19, %struct.TYPE_16__* %4, i32 %20)
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %25, i32* %2, align 4
  br label %327

26:                                               ; preds = %1
  %27 = load i32, i32* @ckidWAVEFORMAT, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @mmioCreateChunk(i32 %35, %struct.TYPE_16__* %5, i32 0)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %40, i32* %2, align 4
  br label %327

41:                                               ; preds = %26
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = bitcast %struct.TYPE_18__* %57 to i32*
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @mmioWrite(i32 %54, i32* %58, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %67, i32* %2, align 4
  br label %327

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %46, %41
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @mmioAscend(i32 %72, %struct.TYPE_16__* %5, i32 0)
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %77, i32* %2, align 4
  br label %327

78:                                               ; preds = %69
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = icmp ne %struct.TYPE_18__* %81, null
  br i1 %82, label %83, label %181

83:                                               ; preds = %78
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %87, 4
  br i1 %88, label %89, label %181

89:                                               ; preds = %83
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %181

97:                                               ; preds = %89
  %98 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i64 %98, i64* %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = load i32, i32* @ACM_FORMATSUGGESTF_WFORMATTAG, align 4
  %104 = call i64 @acmFormatSuggest(i32* null, %struct.TYPE_18__* %102, %struct.TYPE_15__* %6, i32 16, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %178

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load i32, i32* @ACM_STREAMOPENF_NONREALTIME, align 4
  %111 = call i32 @acmStreamOpen(i32* %8, i32* null, %struct.TYPE_18__* %109, %struct.TYPE_15__* %6, i32* null, i32 0, i32 0, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @ACM_STREAMSIZEF_SOURCE, align 4
  %118 = call i32 @acmStreamSize(i32 %112, i64 %116, i32* %7, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sdiv i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @acmStreamClose(i32 %123, i32 0)
  %125 = load i32, i32* @ckidWAVEFACT, align 4
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 4, i32* %127, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SEEK_CUR, align 4
  %132 = call i32 @mmioSeek(i32 %130, i32 0, i32 %131)
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %137, %139
  %141 = sext i32 %140 to i64
  %142 = sub i64 %141, 16
  %143 = icmp ugt i64 %133, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %106
  %145 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %145, i32* %2, align 4
  br label %327

146:                                              ; preds = %106
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @mmioCreateChunk(i32 %149, %struct.TYPE_16__* %5, i32 0)
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %154, i32* %2, align 4
  br label %327

155:                                              ; preds = %146
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @mmioWrite(i32 %158, i32* %7, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %167, i32* %2, align 4
  br label %327

168:                                              ; preds = %155
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @mmioAscend(i32 %171, %struct.TYPE_16__* %5, i32 0)
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %176, i32* %2, align 4
  br label %327

177:                                              ; preds = %168
  br label %180

178:                                              ; preds = %97
  %179 = call i32 @ERR(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %177
  br label %181

181:                                              ; preds = %180, %89, %83, %78
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @SEEK_CUR, align 4
  %186 = call i32 @mmioSeek(i32 %184, i32 0, i32 %185)
  %187 = sext i32 %186 to i64
  %188 = add i64 %187, 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %188, %193
  br i1 %194, label %195, label %233

195:                                              ; preds = %181
  %196 = load i32, i32* @ckidAVIPADDING, align 4
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 0, i32* %198, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @mmioCreateChunk(i32 %201, %struct.TYPE_16__* %5, i32 0)
  %203 = load i64, i64* @S_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %195
  %206 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %206, i32* %2, align 4
  br label %327

207:                                              ; preds = %195
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = sub i64 %215, 8
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* @SEEK_SET, align 4
  %219 = call i32 @mmioSeek(i32 %210, i32 %217, i32 %218)
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %223

221:                                              ; preds = %207
  %222 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %222, i32* %2, align 4
  br label %327

223:                                              ; preds = %207
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @mmioAscend(i32 %226, %struct.TYPE_16__* %5, i32 0)
  %228 = load i64, i64* @S_OK, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %223
  %231 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %231, i32* %2, align 4
  br label %327

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232, %181
  %234 = load i32, i32* @ckidWAVEDATA, align 4
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %234, i32* %235, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %240, i32* %241, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @mmioCreateChunk(i32 %244, %struct.TYPE_16__* %5, i32 0)
  %246 = load i64, i64* @S_OK, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %233
  %249 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %249, i32* %2, align 4
  br label %327

250:                                              ; preds = %233
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* @SEEK_CUR, align 4
  %260 = call i32 @mmioSeek(i32 %253, i32 %258, i32 %259)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %263, i32* %2, align 4
  br label %327

264:                                              ; preds = %250
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @mmioAscend(i32 %267, %struct.TYPE_16__* %5, i32 0)
  %269 = load i64, i64* @S_OK, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %272, i32* %2, align 4
  br label %327

273:                                              ; preds = %264
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %307

279:                                              ; preds = %273
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %307

285:                                              ; preds = %279
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = call i64 @mmioWrite(i32 %288, i32* %292, i32 %297)
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %298, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %285
  %305 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %305, i32* %2, align 4
  br label %327

306:                                              ; preds = %285
  br label %307

307:                                              ; preds = %306, %279, %273
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i64 @mmioAscend(i32 %310, %struct.TYPE_16__* %4, i32 0)
  %312 = load i64, i64* @S_OK, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %315, i32* %2, align 4
  br label %327

316:                                              ; preds = %307
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @mmioFlush(i32 %319, i32 0)
  %321 = load i64, i64* @S_OK, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %324, i32* %2, align 4
  br label %327

325:                                              ; preds = %316
  %326 = load i32, i32* @AVIERR_OK, align 4
  store i32 %326, i32* %2, align 4
  br label %327

327:                                              ; preds = %325, %323, %314, %304, %271, %262, %248, %230, %221, %205, %175, %166, %153, %144, %76, %66, %39, %24
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32 @mmioSeek(i32, i32, i32) #1

declare dso_local i64 @mmioCreateChunk(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @mmioWrite(i32, i32*, i32) #1

declare dso_local i64 @mmioAscend(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @acmFormatSuggest(i32*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @acmStreamOpen(i32*, i32*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32*, i32, i32, i32) #1

declare dso_local i32 @acmStreamSize(i32, i64, i32*, i32) #1

declare dso_local i32 @acmStreamClose(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @mmioFlush(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
