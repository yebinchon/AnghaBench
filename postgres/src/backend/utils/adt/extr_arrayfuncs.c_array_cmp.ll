; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { i64, i32, i32, i8, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@locfcinfo = common dso_local global %struct.TYPE_17__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot compare arrays of different element types\00", align 1
@TYPECACHE_CMP_PROC_FINFO = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"could not identify a comparison function for type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @array_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_cmp(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %30 = call i32 @LOCAL_FCINFO(%struct.TYPE_17__* %29, i32 2)
  %31 = call i32* @PG_GETARG_ANY_ARRAY_P(i32 0)
  store i32* %31, i32** %3, align 8
  %32 = call i32* @PG_GETARG_ANY_ARRAY_P(i32 1)
  store i32* %32, i32** %4, align 8
  %33 = call i64 (...) @PG_GET_COLLATION()
  store i64 %33, i64* %5, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @AARR_NDIM(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @AARR_NDIM(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32* @AARR_DIMS(i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @AARR_DIMS(i32* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ArrayGetNItems(i32 %42, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @ArrayGetNItems(i32 %45, i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @AARR_ELEMTYPE(i32* %48)
  store i64 %49, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @AARR_ELEMTYPE(i32* %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %1
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %14, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %68 = icmp eq %struct.TYPE_15__* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %69, %60
  %76 = load i64, i64* %12, align 8
  %77 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %78 = call %struct.TYPE_15__* @lookup_type_cache(i64 %76, i32 %77)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %14, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @OidIsValid(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @format_type_be(i64 %89)
  %91 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = call i32 @ereport(i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %85, %75
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %95 = bitcast %struct.TYPE_15__* %94 to i8*
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %69
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %15, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  %109 = load i8, i8* %108, align 8
  store i8 %109, i8* %17, align 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = load i64, i64* %5, align 8
  %114 = bitcast %struct.TYPE_17__* %110 to { i32, %struct.TYPE_14__* }*
  %115 = getelementptr inbounds { i32, %struct.TYPE_14__* }, { i32, %struct.TYPE_14__* }* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds { i32, %struct.TYPE_14__* }, { i32, %struct.TYPE_14__* }* %114, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i32 @InitFunctionCallInfoData(i32 %116, %struct.TYPE_14__* %118, %struct.TYPE_12__* %112, i32 2, i64 %113, i32* null, i32* null)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @Min(i32 %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @array_iter_setup(i32* %19, i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @array_iter_setup(i32* %20, i32* %125)
  store i32 0, i32* %21, align 4
  br label %127

127:                                              ; preds = %192, %100
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %195

131:                                              ; preds = %127
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i8, i8* %17, align 1
  %136 = call i8* @array_iter_next(i32* %19, i32* %24, i32 %132, i32 %133, i32 %134, i8 signext %135)
  store i8* %136, i8** %22, align 8
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i8, i8* %17, align 1
  %141 = call i8* @array_iter_next(i32* %20, i32* %25, i32 %137, i32 %138, i32 %139, i8 signext %140)
  store i8* %141, i8** %23, align 8
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load i32, i32* %25, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %192

148:                                              ; preds = %144, %131
  %149 = load i32, i32* %24, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 1, i32* %13, align 4
  br label %195

152:                                              ; preds = %148
  %153 = load i32, i32* %25, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 -1, i32* %13, align 4
  br label %195

156:                                              ; preds = %152
  %157 = load i8*, i8** %22, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i8* %157, i8** %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load i8*, i8** %23, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  store i8* %168, i8** %173, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** @locfcinfo, align 8
  %182 = call i32 @FunctionCallInvoke(%struct.TYPE_17__* %181)
  %183 = call i64 @DatumGetInt32(i32 %182)
  store i64 %183, i64* %26, align 8
  %184 = load i64, i64* %26, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %156
  br label %192

187:                                              ; preds = %156
  %188 = load i64, i64* %26, align 8
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 -1, i32* %13, align 4
  br label %195

191:                                              ; preds = %187
  store i32 1, i32* %13, align 4
  br label %195

192:                                              ; preds = %186, %147
  %193 = load i32, i32* %21, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %21, align 4
  br label %127

195:                                              ; preds = %191, %190, %155, %151, %127
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %299

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %203, %204
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 -1, i32 1
  store i32 %207, i32* %13, align 4
  br label %298

208:                                              ; preds = %198
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp slt i32 %213, %214
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 -1, i32 1
  store i32 %217, i32* %13, align 4
  br label %297

218:                                              ; preds = %208
  store i32 0, i32* %21, align 4
  br label %219

219:                                              ; preds = %250, %218
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %219
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %223
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %240, %245
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 -1, i32 1
  store i32 %248, i32* %13, align 4
  br label %253

249:                                              ; preds = %223
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %21, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %21, align 4
  br label %219

253:                                              ; preds = %235, %219
  %254 = load i32, i32* %13, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %296

256:                                              ; preds = %253
  %257 = load i32*, i32** %3, align 8
  %258 = call i32* @AARR_LBOUND(i32* %257)
  store i32* %258, i32** %27, align 8
  %259 = load i32*, i32** %4, align 8
  %260 = call i32* @AARR_LBOUND(i32* %259)
  store i32* %260, i32** %28, align 8
  store i32 0, i32* %21, align 4
  br label %261

261:                                              ; preds = %292, %256
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %295

265:                                              ; preds = %261
  %266 = load i32*, i32** %27, align 8
  %267 = load i32, i32* %21, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %28, align 8
  %272 = load i32, i32* %21, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %270, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %265
  %278 = load i32*, i32** %27, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %28, align 8
  %284 = load i32, i32* %21, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %282, %287
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 -1, i32 1
  store i32 %290, i32* %13, align 4
  br label %295

291:                                              ; preds = %265
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %21, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %21, align 4
  br label %261

295:                                              ; preds = %277, %261
  br label %296

296:                                              ; preds = %295, %253
  br label %297

297:                                              ; preds = %296, %212
  br label %298

298:                                              ; preds = %297, %202
  br label %299

299:                                              ; preds = %298, %195
  %300 = load i32*, i32** %3, align 8
  %301 = call i32 @AARR_FREE_IF_COPY(i32* %300, i32 0)
  %302 = load i32*, i32** %4, align 8
  %303 = call i32 @AARR_FREE_IF_COPY(i32* %302, i32 1)
  %304 = load i32, i32* %13, align 4
  ret i32 %304
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @PG_GETARG_ANY_ARRAY_P(i32) #1

declare dso_local i64 @PG_GET_COLLATION(...) #1

declare dso_local i32 @AARR_NDIM(i32*) #1

declare dso_local i32* @AARR_DIMS(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i64 @AARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local %struct.TYPE_15__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @InitFunctionCallInfoData(i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @array_iter_setup(i32*, i32*) #1

declare dso_local i8* @array_iter_next(i32*, i32*, i32, i32, i32, i8 signext) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_17__*) #1

declare dso_local i32* @AARR_LBOUND(i32*) #1

declare dso_local i32 @AARR_FREE_IF_COPY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
