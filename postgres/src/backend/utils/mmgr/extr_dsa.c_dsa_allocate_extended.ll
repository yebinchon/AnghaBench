; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_allocate_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_allocate_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32*, i32 }

@DSA_ALLOC_HUGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid DSA memory alloc request size %zu\00", align 1
@dsa_size_classes = common dso_local global i64* null, align 8
@DSA_SCLASS_SPAN_LARGE = common dso_local global i64 0, align 8
@DSA_SCLASS_BLOCK_OF_SPANS = common dso_local global i32 0, align 4
@DSA_ALLOC_NO_OOM = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed on DSA request of size %zu.\00", align 1
@InvalidDsaPointer = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"dsa_allocate could not find %zu free pages\00", align 1
@FPM_PAGE_SIZE = common dso_local global i64 0, align 8
@DSA_ALLOC_ZERO = common dso_local global i32 0, align 4
@dsa_size_class_map = common dso_local global i64* null, align 8
@DSA_SIZE_CLASS_MAP_QUANTUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_allocate_extended(%struct.TYPE_19__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DSA_ALLOC_HUGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @AllocHugeSizeIsValid(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DSA_ALLOC_HUGE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @AllocSizeIsValid(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %42, %38, %33
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** @dsa_size_classes, align 8
  %49 = load i64*, i64** @dsa_size_classes, align 8
  %50 = call i32 @lengthof(i64* %49)
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %47, %54
  br i1 %55, label %56, label %181

56:                                               ; preds = %46
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @fpm_size_to_pages(i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @DSA_SCLASS_SPAN_LARGE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %15, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %68 = call i32 @alloc_object(%struct.TYPE_19__* %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @DsaPointerIsValid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @DSA_ALLOC_NO_OOM, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = call i32 @ereport(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load i32, i32* @InvalidDsaPointer, align 4
  store i32 %86, i32* %4, align 4
  br label %302

87:                                               ; preds = %56
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = call i32 @DSA_AREA_LOCK(%struct.TYPE_19__* %88)
  %90 = load i32, i32* @LW_EXCLUSIVE, align 4
  %91 = call i32 @LWLockAcquire(i32 %89, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call %struct.TYPE_18__* @get_best_segment(%struct.TYPE_19__* %92, i64 %93)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %10, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = icmp eq %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call %struct.TYPE_18__* @make_new_segment(%struct.TYPE_19__* %98, i64 %99)
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %10, align 8
  br label %101

101:                                              ; preds = %97, %87
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = icmp eq %struct.TYPE_18__* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = call i32 @DSA_AREA_LOCK(%struct.TYPE_19__* %105)
  %107 = call i32 @LWLockRelease(i32 %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @dsa_free(%struct.TYPE_19__* %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @DSA_ALLOC_NO_OOM, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %104
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %118 = call i32 @errcode(i32 %117)
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  %122 = call i32 @ereport(i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %115, %104
  %124 = load i32, i32* @InvalidDsaPointer, align 4
  store i32 %124, i32* %4, align 4
  br label %302

125:                                              ; preds = %101
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @FreePageManagerGet(i32 %128, i64 %129, i64* %13)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @FATAL, align 4
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @elog(i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = call i32 @DSA_AREA_LOCK(%struct.TYPE_19__* %137)
  %139 = call i32 @LWLockRelease(i32 %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = call i32 @get_segment_index(%struct.TYPE_19__* %140, %struct.TYPE_18__* %141)
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %145 = mul i64 %143, %144
  %146 = call i32 @DSA_MAKE_POINTER(i32 %142, i64 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = load i64, i64* @DSA_SCLASS_SPAN_LARGE, align 8
  %149 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_19__* %147, i64 %148)
  %150 = load i32, i32* @LW_EXCLUSIVE, align 4
  %151 = call i32 @LWLockAcquire(i32 %149, i32 %150)
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @DSA_SCLASS_SPAN_LARGE, align 8
  %158 = call i32 @init_span(%struct.TYPE_19__* %152, i32 %153, i32* %154, i32 %155, i64 %156, i64 %157)
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %166 = load i64, i64* @DSA_SCLASS_SPAN_LARGE, align 8
  %167 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_19__* %165, i64 %166)
  %168 = call i32 @LWLockRelease(i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @DSA_ALLOC_ZERO, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %136
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @dsa_get_address(%struct.TYPE_19__* %174, i32 %175)
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @memset(i32 %176, i32 0, i64 %177)
  br label %179

179:                                              ; preds = %173, %136
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %302

181:                                              ; preds = %46
  %182 = load i64, i64* %6, align 8
  %183 = load i64*, i64** @dsa_size_class_map, align 8
  %184 = call i32 @lengthof(i64* %183)
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* @DSA_SIZE_CLASS_MAP_QUANTUM, align 8
  %187 = mul i64 %185, %186
  %188 = icmp ult i64 %182, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %181
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @DSA_SIZE_CLASS_MAP_QUANTUM, align 8
  %192 = add i64 %190, %191
  %193 = sub i64 %192, 1
  %194 = load i64, i64* @DSA_SIZE_CLASS_MAP_QUANTUM, align 8
  %195 = udiv i64 %193, %194
  %196 = sub i64 %195, 1
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %16, align 4
  %198 = load i64*, i64** @dsa_size_class_map, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %8, align 4
  br label %243

204:                                              ; preds = %181
  %205 = load i64*, i64** @dsa_size_class_map, align 8
  %206 = load i64*, i64** @dsa_size_class_map, align 8
  %207 = call i32 @lengthof(i64* %206)
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %205, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %17, align 4
  %213 = load i64*, i64** @dsa_size_classes, align 8
  %214 = call i32 @lengthof(i64* %213)
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  br label %216

216:                                              ; preds = %240, %204
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %18, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %241

220:                                              ; preds = %216
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %221, %222
  %224 = sdiv i32 %223, 2
  store i32 %224, i32* %19, align 4
  %225 = load i64*, i64** @dsa_size_classes, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %6, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %220
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %240

238:                                              ; preds = %220
  %239 = load i32, i32* %19, align 4
  store i32 %239, i32* %18, align 4
  br label %240

240:                                              ; preds = %238, %235
  br label %216

241:                                              ; preds = %216
  %242 = load i32, i32* %17, align 4
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %241, %189
  %244 = load i64, i64* %6, align 8
  %245 = load i64*, i64** @dsa_size_classes, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp ule i64 %244, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @Assert(i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %243
  %256 = load i64, i64* %6, align 8
  %257 = load i64*, i64** @dsa_size_classes, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %257, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp ugt i64 %256, %262
  br label %264

264:                                              ; preds = %255, %243
  %265 = phi i1 [ true, %243 ], [ %263, %255 ]
  %266 = zext i1 %265 to i32
  %267 = call i32 @Assert(i32 %266)
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @alloc_object(%struct.TYPE_19__* %268, i32 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @DsaPointerIsValid(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %289, label %274

274:                                              ; preds = %264
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @DSA_ALLOC_NO_OOM, align 4
  %277 = and i32 %275, %276
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load i32, i32* @ERROR, align 4
  %281 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %282 = call i32 @errcode(i32 %281)
  %283 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %284 = load i64, i64* %6, align 8
  %285 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %284)
  %286 = call i32 @ereport(i32 %280, i32 %285)
  br label %287

287:                                              ; preds = %279, %274
  %288 = load i32, i32* @InvalidDsaPointer, align 4
  store i32 %288, i32* %4, align 4
  br label %302

289:                                              ; preds = %264
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @DSA_ALLOC_ZERO, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %296 = load i32, i32* %11, align 4
  %297 = call i32 @dsa_get_address(%struct.TYPE_19__* %295, i32 %296)
  %298 = load i64, i64* %6, align 8
  %299 = call i32 @memset(i32 %297, i32 0, i64 %298)
  br label %300

300:                                              ; preds = %294, %289
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %300, %287, %179, %123, %85
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AllocHugeSizeIsValid(i64) #1

declare dso_local i32 @AllocSizeIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @lengthof(i64*) #1

declare dso_local i64 @fpm_size_to_pages(i64) #1

declare dso_local i32 @alloc_object(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @DsaPointerIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DSA_AREA_LOCK(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @get_best_segment(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @make_new_segment(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @dsa_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @FreePageManagerGet(i32, i64, i64*) #1

declare dso_local i32 @DSA_MAKE_POINTER(i32, i64) #1

declare dso_local i32 @get_segment_index(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DSA_SCLASS_LOCK(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @init_span(%struct.TYPE_19__*, i32, i32*, i32, i64, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @dsa_get_address(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
