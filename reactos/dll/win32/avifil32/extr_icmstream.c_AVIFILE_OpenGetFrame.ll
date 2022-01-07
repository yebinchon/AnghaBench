; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_OpenGetFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_OpenGetFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i8*, %struct.TYPE_22__*, i8*, i64, %struct.TYPE_20__, i32*, i32* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }

@AVIERR_ERROR = common dso_local global i32 0, align 4
@comptypeDIB = common dso_local global i64 0, align 8
@AVIERR_OK = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@AVIERR_COMPRESSOR = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@AVIERR_BADFORMAT = common dso_local global i32 0, align 4
@VIDCF_FASTTEMPORALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @AVIFILE_OpenGetFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_OpenGetFrame(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = icmp ne %struct.TYPE_21__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 11
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 10
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 11
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @AVIStreamGetFrameOpen(i32* %24, i32* null)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 10
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @AVIERR_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %315

34:                                               ; preds = %1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @comptypeDIB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AVIERR_OK, align 4
  store i32 %42, i32* %2, align 4
  br label %315

43:                                               ; preds = %34
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = icmp eq %struct.TYPE_23__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 10
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @AVIStreamGetFrame(i32* %58, i32 %62)
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %67, i32* %2, align 4
  br label %315

68:                                               ; preds = %43
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @ICCompressGetFormatSize(i32* %71, i32* %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp slt i64 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @AVIERR_COMPRESSOR, align 4
  store i32 %77, i32* %2, align 4
  br label %315

78:                                               ; preds = %68
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load i64, i64* %5, align 8
  %81 = call i8* @HeapAlloc(i32 %79, i32 0, i64 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_23__*
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %84, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = icmp eq %struct.TYPE_23__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %90, i32* %2, align 4
  br label %315

91:                                               ; preds = %78
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 8
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = call i64 @ICCompressGetFormat(i32* %97, i32* %98, %struct.TYPE_23__* %101)
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* @AVIERR_BADFORMAT, align 4
  store i32 %106, i32* %2, align 4
  br label %315

107:                                              ; preds = %91
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i64 %133, i64* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = call i32 @ICCompressGetSize(i32* %140, i32* %141, %struct.TYPE_23__* %144)
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = call i64 @ICCompressBegin(i32* %151, i32* %152, %struct.TYPE_23__* %155)
  %157 = load i64, i64* @S_OK, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %107
  %160 = load i32, i32* @AVIERR_COMPRESSOR, align 4
  store i32 %160, i32* %2, align 4
  br label %315

161:                                              ; preds = %107
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %5, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* %5, align 8
  %169 = call i32 (...) @GetProcessHeap()
  %170 = load i64, i64* %5, align 8
  %171 = call i8* @HeapAlloc(i32 %169, i32 0, i64 %170)
  %172 = bitcast i8* %171 to %struct.TYPE_22__*
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 6
  store %struct.TYPE_22__* %172, %struct.TYPE_22__** %174, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 6
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = icmp eq %struct.TYPE_22__* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %161
  %180 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %180, i32* %2, align 4
  br label %315

181:                                              ; preds = %161
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @memcpy(%struct.TYPE_22__* %184, %struct.TYPE_23__* %187, i64 %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = call i8* @DIBPTR(%struct.TYPE_22__* %194)
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 7
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 1
  br i1 %201, label %202, label %313

202:                                              ; preds = %181
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @VIDCF_FASTTEMPORALC, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %313

209:                                              ; preds = %202
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %214, align 8
  %216 = call i64 @ICDecompressGetFormatSize(i32* %212, %struct.TYPE_23__* %215)
  store i64 %216, i64* %5, align 8
  %217 = call i32 (...) @GetProcessHeap()
  %218 = load i64, i64* %5, align 8
  %219 = call i8* @HeapAlloc(i32 %217, i32 0, i64 %218)
  %220 = bitcast i8* %219 to %struct.TYPE_22__*
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 2
  store %struct.TYPE_22__* %220, %struct.TYPE_22__** %222, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = icmp eq %struct.TYPE_22__* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %209
  %228 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %228, i32* %2, align 4
  br label %315

229:                                              ; preds = %209
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %234, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  %239 = call i64 @ICDecompressGetFormat(i32* %232, %struct.TYPE_23__* %235, %struct.TYPE_22__* %238)
  %240 = load i64, i64* @S_OK, align 8
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %229
  %243 = load i32, i32* @AVIERR_COMPRESSOR, align 4
  store i32 %243, i32* %2, align 4
  br label %315

244:                                              ; preds = %229
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %244
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = bitcast %struct.TYPE_22__* %254 to i64*
  %256 = load i64, i64* %255, align 4
  %257 = call i32 @DIBWIDTHBYTES(i64 %256)
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %257, %262
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 4
  br label %268

268:                                              ; preds = %251, %244
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %5, align 8
  %276 = add nsw i64 %275, %274
  store i64 %276, i64* %5, align 8
  %277 = call i32 (...) @GetProcessHeap()
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %279, align 8
  %281 = load i64, i64* %5, align 8
  %282 = call %struct.TYPE_22__* @HeapReAlloc(i32 %277, i32 0, %struct.TYPE_22__* %280, i64 %281)
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 2
  store %struct.TYPE_22__* %282, %struct.TYPE_22__** %284, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %286, align 8
  %288 = icmp eq %struct.TYPE_22__* %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %268
  %290 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %290, i32* %2, align 4
  br label %315

291:                                              ; preds = %268
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %293, align 8
  %295 = call i8* @DIBPTR(%struct.TYPE_22__* %294)
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 5
  store i8* %295, i8** %297, align 8
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %302, align 8
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = call i64 @ICDecompressBegin(i32* %300, %struct.TYPE_23__* %303, %struct.TYPE_22__* %306)
  %308 = load i64, i64* @S_OK, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %291
  %311 = load i32, i32* @AVIERR_COMPRESSOR, align 4
  store i32 %311, i32* %2, align 4
  br label %315

312:                                              ; preds = %291
  br label %313

313:                                              ; preds = %312, %202, %181
  %314 = load i32, i32* @AVIERR_OK, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %310, %289, %242, %227, %179, %159, %105, %89, %76, %66, %41, %32
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @AVIStreamGetFrameOpen(i32*, i32*) #1

declare dso_local i32* @AVIStreamGetFrame(i32*, i32) #1

declare dso_local i64 @ICCompressGetFormatSize(i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @ICCompressGetFormat(i32*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @ICCompressGetSize(i32*, i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @ICCompressBegin(i32*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, %struct.TYPE_23__*, i64) #1

declare dso_local i8* @DIBPTR(%struct.TYPE_22__*) #1

declare dso_local i64 @ICDecompressGetFormatSize(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @ICDecompressGetFormat(i32*, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @DIBWIDTHBYTES(i64) #1

declare dso_local %struct.TYPE_22__* @HeapReAlloc(i32, i32, %struct.TYPE_22__*, i64) #1

declare dso_local i64 @ICDecompressBegin(i32*, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
