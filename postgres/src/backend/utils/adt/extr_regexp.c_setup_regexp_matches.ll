; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_setup_regexp_matches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_setup_regexp_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32, i32*, %struct.TYPE_15__*, i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@MaxAllocSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"too many regular expression matches\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, i32*, %struct.TYPE_18__*, i32, i32, i32, i32)* @setup_regexp_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @setup_regexp_matches(i32* %0, i32* %1, %struct.TYPE_18__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %36 = call %struct.TYPE_16__* @palloc0(i32 56)
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %15, align 8
  %37 = call i32 (...) @pg_database_encoding_max_length()
  store i32 %37, i32* %16, align 4
  store i32 0, i32* %28, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @VARSIZE_ANY_EXHDR(i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @palloc(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %18, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @VARDATA_ANY(i32* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @pg_mb2wchar_with_len(i32 %51, %struct.TYPE_15__* %52, i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.TYPE_17__* @RE_compile_and_cache(i32* %55, i32 %58, i32 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %20, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %7
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %22, align 4
  br label %81

78:                                               ; preds = %63, %7
  store i32 0, i32* %12, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 1, i32* %22, align 4
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @palloc(i32 %85)
  %87 = bitcast i8* %86 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %21, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 255, i32 31
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %23, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @palloc(i32 %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %102

102:                                              ; preds = %331, %81
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %109 = call i64 @RE_wchar_execute(%struct.TYPE_17__* %103, %struct.TYPE_15__* %104, i32 %105, i32 %106, i32 %107, %struct.TYPE_15__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %332

111:                                              ; preds = %102
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %302

121:                                              ; preds = %114
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %302

128:                                              ; preds = %121, %111
  br label %129

129:                                              ; preds = %156, %128
  %130 = load i32, i32* %24, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %133, 2
  %135 = add nsw i32 %130, %134
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %23, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %129
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* @MaxAllocSize, align 4
  %147 = sext i32 %146 to i64
  %148 = udiv i64 %147, 4
  %149 = icmp ugt i64 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load i32, i32* @ERROR, align 4
  %152 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %153 = call i32 @errcode(i32 %152)
  %154 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %155 = call i32 @ereport(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %139
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 4, %161
  %163 = trunc i64 %162 to i32
  %164 = call i64 @repalloc(i32* %159, i32 %163)
  %165 = inttoptr i64 %164 to i32*
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32* %165, i32** %167, align 8
  br label %129

168:                                              ; preds = %129
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %227

171:                                              ; preds = %168
  store i32 1, i32* %29, align 4
  br label %172

172:                                              ; preds = %223, %171
  %173 = load i32, i32* %29, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sle i32 %173, %176
  br i1 %177, label %178, label %226

178:                                              ; preds = %172
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %180 = load i32, i32* %29, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %30, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %186 = load i32, i32* %29, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %31, align 4
  %191 = load i32, i32* %30, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %24, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %24, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %191, i32* %198, align 4
  %199 = load i32, i32* %31, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %24, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %24, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %199, i32* %206, align 4
  %207 = load i32, i32* %30, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %178
  %210 = load i32, i32* %31, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i32, i32* %31, align 4
  %214 = load i32, i32* %30, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %28, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* %31, align 4
  %220 = load i32, i32* %30, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %28, align 4
  br label %222

222:                                              ; preds = %218, %212, %209, %178
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %29, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %29, align 4
  br label %172

226:                                              ; preds = %172
  br label %268

227:                                              ; preds = %168
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %32, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %33, align 4
  %236 = load i32, i32* %32, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %24, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %24, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %236, i32* %243, align 4
  %244 = load i32, i32* %33, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %24, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %24, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %244, i32* %251, align 4
  %252 = load i32, i32* %32, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %227
  %255 = load i32, i32* %33, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %254
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %32, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* %28, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i32, i32* %33, align 4
  %265 = load i32, i32* %32, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %28, align 4
  br label %267

267:                                              ; preds = %263, %257, %254, %227
  br label %268

268:                                              ; preds = %267, %226
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %297

275:                                              ; preds = %268
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp sge i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %275
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %26, align 4
  %287 = sub nsw i32 %285, %286
  %288 = load i32, i32* %28, align 4
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %281
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %26, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %28, align 4
  br label %297

297:                                              ; preds = %290, %281, %275, %268
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %26, align 4
  br label %302

302:                                              ; preds = %297, %121, %114
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %25, align 4
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %302
  br label %332

312:                                              ; preds = %302
  %313 = load i32, i32* %25, align 4
  store i32 %313, i32* %27, align 4
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 0
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %317, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %312
  %324 = load i32, i32* %27, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %27, align 4
  br label %326

326:                                              ; preds = %323, %312
  %327 = load i32, i32* %27, align 4
  %328 = load i32, i32* %19, align 4
  %329 = icmp sgt i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %332

331:                                              ; preds = %326
  br label %102

332:                                              ; preds = %330, %311, %102
  %333 = load i32, i32* %14, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %332
  %336 = load i32, i32* %19, align 4
  %337 = load i32, i32* %26, align 4
  %338 = sub nsw i32 %336, %337
  %339 = load i32, i32* %28, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %26, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %28, align 4
  br label %345

345:                                              ; preds = %341, %335, %332
  %346 = load i32, i32* %19, align 4
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %24, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 %346, i32* %352, align 4
  %353 = load i32, i32* %16, align 4
  %354 = icmp sgt i32 %353, 1
  br i1 %354, label %355, label %380

355:                                              ; preds = %345
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* %28, align 4
  %358 = mul nsw i32 %356, %357
  store i32 %358, i32* %34, align 4
  %359 = load i32, i32* %34, align 4
  %360 = load i32, i32* %17, align 4
  %361 = icmp sgt i32 %359, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load i32, i32* %17, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %35, align 4
  br label %368

365:                                              ; preds = %355
  %366 = load i32, i32* %34, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %35, align 4
  br label %368

368:                                              ; preds = %365, %362
  %369 = load i32, i32* %35, align 4
  %370 = call i8* @palloc(i32 %369)
  %371 = bitcast i8* %370 to i32*
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 3
  store i32* %371, i32** %373, align 8
  %374 = load i32, i32* %35, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 2
  store i32 %374, i32* %376, align 8
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 4
  store %struct.TYPE_15__* %377, %struct.TYPE_15__** %379, align 8
  br label %389

380:                                              ; preds = %345
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %382 = call i32 @pfree(%struct.TYPE_15__* %381)
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %384, align 8
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 3
  store i32* null, i32** %386, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 2
  store i32 0, i32* %388, align 8
  br label %389

389:                                              ; preds = %380, %368
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %391 = call i32 @pfree(%struct.TYPE_15__* %390)
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  ret %struct.TYPE_16__* %392
}

declare dso_local %struct.TYPE_16__* @palloc0(i32) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @pg_mb2wchar_with_len(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local %struct.TYPE_17__* @RE_compile_and_cache(i32*, i32, i32) #1

declare dso_local i64 @RE_wchar_execute(%struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
