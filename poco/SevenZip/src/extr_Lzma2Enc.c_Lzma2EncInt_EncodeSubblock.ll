; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Enc.c_Lzma2EncInt_EncodeSubblock.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Enc.c_Lzma2EncInt_EncodeSubblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8*, i64, i32 }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, i64*, i64)* }

@LZMA2_UNPACK_SIZE_MAX = common dso_local global i32 0, align 4
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8
@LZMA2_PACK_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0ApackSize = %7d unpackSize = %7d  \00", align 1
@SZ_OK = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"################# COPY           \00", align 1
@LZMA2_COPY_CHUNK_SIZE = common dso_local global i32 0, align 4
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_NO_RESET = common dso_local global i64 0, align 8
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"               \00", align 1
@LZMA2_CONTROL_LZMA = common dso_local global i32 0, align 4
@False = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64*, i64*, %struct.TYPE_7__*)* @Lzma2EncInt_EncodeSubblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_8__* %0, i64* %1, i64* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @LZMA2_UNPACK_SIZE_MAX, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = add nsw i32 5, %31
  store i32 %32, i32* %13, align 4
  %33 = load i64*, i64** %8, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %39, i64* %5, align 8
  br label %322

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @LzmaEnc_SaveState(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i32, i32* @LZMA2_PACK_SIZE_MAX, align 4
  %60 = call i64 @LzmaEnc_CodeOneMemBlock(i32 %51, i8* %54, i64* %58, i64* %11, i32 %59, i32* %12)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  %64 = call i32 @PRF(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %40
  %68 = load i64, i64* %15, align 8
  store i64 %68, i64* %5, align 8
  br label %322

69:                                               ; preds = %40
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @SZ_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 2
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %75, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 65536
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i1 [ true, %73 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  br label %94

85:                                               ; preds = %69
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* %15, align 8
  store i64 %90, i64* %5, align 8
  br label %322

91:                                               ; preds = %85
  %92 = load i64, i64* @SZ_OK, align 8
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* @True, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %206

97:                                               ; preds = %94
  store i64 0, i64* %16, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @PRF(i32 %98)
  br label %100

100:                                              ; preds = %199, %97
  %101 = load i32, i32* %12, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %200

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @LZMA2_COPY_CHUNK_SIZE, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @LZMA2_COPY_CHUNK_SIZE, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %17, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %16, align 8
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %121, i64* %5, align 8
  br label %322

122:                                              ; preds = %111
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i64, i64* @LZMA2_CONTROL_COPY_RESET_DIC, align 8
  br label %131

129:                                              ; preds = %122
  %130 = load i64, i64* @LZMA2_CONTROL_COPY_NO_RESET, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i64 [ %128, %127 ], [ %130, %129 ]
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %16, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %16, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %136, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sub nsw i32 %137, 1
  %139 = ashr i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %7, align 8
  %142 = load i64, i64* %16, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %16, align 8
  %144 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %140, i64* %144, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %7, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %16, align 8
  %151 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %151, align 8
  %152 = load i64*, i64** %7, align 8
  %153 = load i64, i64* %16, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @LzmaEnc_GetCurBuf(i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %158, %160
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @memcpy(i64* %154, i64 %161, i32 %162)
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %16, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %16, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %178 = icmp ne %struct.TYPE_7__* %177, null
  br i1 %178, label %179, label %196

179:                                              ; preds = %131
  %180 = load i64, i64* %16, align 8
  %181 = load i64*, i64** %8, align 8
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %180
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64 (%struct.TYPE_7__*, i64*, i64)*, i64 (%struct.TYPE_7__*, i64*, i64)** %185, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %188 = load i64*, i64** %7, align 8
  %189 = load i64, i64* %16, align 8
  %190 = call i64 %186(%struct.TYPE_7__* %187, i64* %188, i64 %189)
  %191 = load i64, i64* %16, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %179
  %194 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %194, i64* %5, align 8
  br label %322

195:                                              ; preds = %179
  store i64 0, i64* %16, align 8
  br label %199

196:                                              ; preds = %131
  %197 = load i64, i64* %16, align 8
  %198 = load i64*, i64** %8, align 8
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %196, %195
  br label %100

200:                                              ; preds = %100
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @LzmaEnc_RestoreState(i32 %203)
  %205 = load i64, i64* @SZ_OK, align 8
  store i64 %205, i64* %5, align 8
  br label %322

206:                                              ; preds = %94
  store i64 0, i64* %18, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %19, align 4
  %209 = load i64, i64* %11, align 8
  %210 = sub i64 %209, 1
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %20, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  br label %232

217:                                              ; preds = %206
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 2, i32 1
  br label %230

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229, %222
  %231 = phi i32 [ %228, %222 ], [ 0, %229 ]
  br label %232

232:                                              ; preds = %230, %216
  %233 = phi i32 [ 3, %216 ], [ %231, %230 ]
  store i32 %233, i32* %21, align 4
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %235 = call i32 @PRF(i32 %234)
  %236 = load i32, i32* @LZMA2_CONTROL_LZMA, align 4
  %237 = load i32, i32* %21, align 4
  %238 = shl i32 %237, 5
  %239 = or i32 %236, %238
  %240 = load i32, i32* %19, align 4
  %241 = ashr i32 %240, 16
  %242 = and i32 %241, 31
  %243 = or i32 %239, %242
  %244 = zext i32 %243 to i64
  %245 = load i64*, i64** %7, align 8
  %246 = load i64, i64* %18, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %18, align 8
  %248 = getelementptr inbounds i64, i64* %245, i64 %246
  store i64 %244, i64* %248, align 8
  %249 = load i32, i32* %19, align 4
  %250 = ashr i32 %249, 8
  %251 = sext i32 %250 to i64
  %252 = load i64*, i64** %7, align 8
  %253 = load i64, i64* %18, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %18, align 8
  %255 = getelementptr inbounds i64, i64* %252, i64 %253
  store i64 %251, i64* %255, align 8
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = load i64*, i64** %7, align 8
  %259 = load i64, i64* %18, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %18, align 8
  %261 = getelementptr inbounds i64, i64* %258, i64 %259
  store i64 %257, i64* %261, align 8
  %262 = load i32, i32* %20, align 4
  %263 = ashr i32 %262, 8
  %264 = sext i32 %263 to i64
  %265 = load i64*, i64** %7, align 8
  %266 = load i64, i64* %18, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %18, align 8
  %268 = getelementptr inbounds i64, i64* %265, i64 %266
  store i64 %264, i64* %268, align 8
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64*, i64** %7, align 8
  %272 = load i64, i64* %18, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %18, align 8
  %274 = getelementptr inbounds i64, i64* %271, i64 %272
  store i64 %270, i64* %274, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %287

279:                                              ; preds = %232
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %7, align 8
  %284 = load i64, i64* %18, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %18, align 8
  %286 = getelementptr inbounds i64, i64* %283, i64 %284
  store i64 %282, i64* %286, align 8
  br label %287

287:                                              ; preds = %279, %232
  %288 = load i8*, i8** @False, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 2
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** @False, align 8
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i8* %291, i8** %293, align 8
  %294 = load i64, i64* %11, align 8
  %295 = load i64, i64* %18, align 8
  %296 = add i64 %295, %294
  store i64 %296, i64* %18, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, %298
  store i64 %302, i64* %300, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %304 = icmp ne %struct.TYPE_7__* %303, null
  br i1 %304, label %305, label %318

305:                                              ; preds = %287
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i64 (%struct.TYPE_7__*, i64*, i64)*, i64 (%struct.TYPE_7__*, i64*, i64)** %307, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %310 = load i64*, i64** %7, align 8
  %311 = load i64, i64* %18, align 8
  %312 = call i64 %308(%struct.TYPE_7__* %309, i64* %310, i64 %311)
  %313 = load i64, i64* %18, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %305
  %316 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %316, i64* %5, align 8
  br label %322

317:                                              ; preds = %305
  br label %318

318:                                              ; preds = %317, %287
  %319 = load i64, i64* %18, align 8
  %320 = load i64*, i64** %8, align 8
  store i64 %319, i64* %320, align 8
  %321 = load i64, i64* @SZ_OK, align 8
  store i64 %321, i64* %5, align 8
  br label %322

322:                                              ; preds = %318, %315, %200, %193, %120, %89, %67, %38
  %323 = load i64, i64* %5, align 8
  ret i64 %323
}

declare dso_local i32 @LzmaEnc_SaveState(i32) #1

declare dso_local i64 @LzmaEnc_CodeOneMemBlock(i32, i8*, i64*, i64*, i32, i32*) #1

declare dso_local i32 @PRF(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @LzmaEnc_GetCurBuf(i32) #1

declare dso_local i32 @LzmaEnc_RestoreState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
