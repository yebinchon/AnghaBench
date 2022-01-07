; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_accumArrayResultArr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_accumArrayResultArr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i8*, i32*, i32, i8*, i32, i8*, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot accumulate null arrays\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot accumulate empty arrays\00", align 1
@MAXDIM = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"cannot accumulate arrays of different dimensionality\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @accumArrayResultArr(%struct.TYPE_5__* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %5
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @DatumGetArrayTypeP(i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @InvalidOid, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.TYPE_5__* @initArrayResultArr(i64 %35, i32 %36, i32 %37, i32 1)
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %6, align 8
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ARR_NDIM(i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @ARR_DIMS(i32* %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* @ARR_LBOUND(i32* %56)
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i8* @ARR_DATA_PTR(i32* %58)
  store i8* %59, i8** %18, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @ArrayGetNItems(i32 %60, i32* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @ARR_SIZE(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @ARR_DATA_OFFSET(i32* %65)
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %17, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %148

72:                                               ; preds = %47
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @ereport(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* @MAXDIM, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @MAXDIM, align 4
  %93 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = call i32 @ereport(i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %86, %81
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 0, i8* %103, align 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = call i32 (i8*, ...) @memcpy(i8* %107, i32* %108, i64 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = bitcast i32* %120 to i8*
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = call i32 (i8*, ...) @memcpy(i8* %121, i32* %122, i64 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  store i32 1024, i32* %128, align 8
  br label %129

129:                                              ; preds = %135, %95
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %17, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %138, 2
  store i32 %139, i32* %137, align 8
  br label %129

140:                                              ; preds = %129
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @palloc(i32 %143)
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  br label %242

148:                                              ; preds = %47
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i32, i32* @ERROR, align 4
  %157 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %158 = call i32 @errcode(i32 %157)
  %159 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %160 = call i32 @ereport(i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %148
  store i32 0, i32* %19, align 4
  br label %162

162:                                              ; preds = %204, %161
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %207

166:                                              ; preds = %162
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %175, %180
  br i1 %181, label %197, label %182

182:                                              ; preds = %166
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %14, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %190, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %182, %166
  %198 = load i32, i32* @ERROR, align 4
  %199 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %200 = call i32 @errcode(i32 %199)
  %201 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %202 = call i32 @ereport(i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %197, %182
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %162

207:                                              ; preds = %162
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %210, %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %241

217:                                              ; preds = %207
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %220, 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i8* @Max(i32 %221, i32 %226)
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 5
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @repalloc(i8* %233, i32 %236)
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  store i8* %238, i8** %240, align 8
  br label %241

241:                                              ; preds = %217, %207
  br label %242

242:                                              ; preds = %241, %140
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 5
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %245, i64 %249
  %251 = load i8*, i8** %18, align 8
  %252 = load i32, i32* %17, align 4
  %253 = call i32 (i8*, ...) @memcpy(i8* %250, i8* %251, i32 %252)
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 7
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %267, label %263

263:                                              ; preds = %242
  %264 = load i32*, i32** %11, align 8
  %265 = call i64 @ARR_HASNULL(i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %348

267:                                              ; preds = %263, %242
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %270, %271
  store i32 %272, i32* %20, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 7
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %308

277:                                              ; preds = %267
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 9
  store i32 256, i32* %279, align 4
  br label %280

280:                                              ; preds = %286, %277
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %20, align 4
  %285 = icmp sle i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %280
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %289, 2
  store i32 %290, i32* %288, align 4
  br label %280

291:                                              ; preds = %280
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, 7
  %296 = sdiv i32 %295, 8
  %297 = call i64 @palloc(i32 %296)
  %298 = inttoptr i64 %297 to i8*
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 7
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 7
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @array_bitmap_copy(i8* %303, i32 0, i32* null, i32 0, i32 %306)
  br label %337

308:                                              ; preds = %267
  %309 = load i32, i32* %20, align 4
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  %313 = icmp sgt i32 %309, %312
  br i1 %313, label %314, label %336

314:                                              ; preds = %308
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 9
  %317 = load i32, i32* %316, align 4
  %318 = mul nsw i32 %317, 2
  %319 = load i32, i32* %20, align 4
  %320 = call i8* @Max(i32 %318, i32 %319)
  %321 = ptrtoint i8* %320 to i32
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 9
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 7
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 7
  %331 = sdiv i32 %330, 8
  %332 = call i64 @repalloc(i8* %326, i32 %331)
  %333 = inttoptr i64 %332 to i8*
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 7
  store i8* %333, i8** %335, align 8
  br label %336

336:                                              ; preds = %314, %308
  br label %337

337:                                              ; preds = %336, %291
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 7
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 8
  %344 = load i32*, i32** %11, align 8
  %345 = call i32* @ARR_NULLBITMAP(i32* %344)
  %346 = load i32, i32* %16, align 4
  %347 = call i32 @array_bitmap_copy(i8* %340, i32 %343, i32* %345, i32 0, i32 %346)
  br label %348

348:                                              ; preds = %337, %263
  %349 = load i32, i32* %16, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %352, %349
  store i32 %353, i32* %351, align 8
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 2
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 0
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = add nsw i32 %359, 1
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %357, align 1
  %362 = load i32, i32* %12, align 4
  %363 = call i32 @MemoryContextSwitchTo(i32 %362)
  %364 = load i32*, i32** %11, align 8
  %365 = ptrtoint i32* %364 to i64
  %366 = load i32, i32* %7, align 4
  %367 = call i64 @DatumGetPointer(i32 %366)
  %368 = icmp ne i64 %365, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %348
  %370 = load i32*, i32** %11, align 8
  %371 = call i32 @pfree(i32* %370)
  br label %372

372:                                              ; preds = %369, %348
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %373
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local %struct.TYPE_5__* @initArrayResultArr(i64, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32* @ARR_LBOUND(i32*) #1

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i32 @ARR_SIZE(i32*) #1

declare dso_local i32 @ARR_DATA_OFFSET(i32*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @Max(i32, i32) #1

declare dso_local i64 @repalloc(i8*, i32) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i32 @array_bitmap_copy(i8*, i32, i32*, i32, i32) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
