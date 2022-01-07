; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__parse_signature.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__parse_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32, i8* }

@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"_parse_signature with NULL signature\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"expect '->'\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"expect '('\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unexpected end of signature string\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"expect dimension name or non-zero frozen size\00", align 1
@UFUNC_CORE_DIM_SIZE_INFERRED = common dso_local global i32 0, align 4
@UFUNC_CORE_DIM_CAN_IGNORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"? cannot be used, name already seen without ?\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"? must be used, name already seen with ?\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"expect ',' or ')'\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"',' must not be followed by ')'\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"expect ','\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"incomplete signature: not all arguments found\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"%s at position %d in \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @_parse_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_signature(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @PyExc_RuntimeError, align 4
  %22 = call i32 @PyErr_SetString(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %537

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 1, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @PyArray_malloc(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 9
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %23
  %44 = load i64, i64* %6, align 8
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @PyArray_malloc(i32 %46)
  %48 = bitcast i8* %47 to i8**
  store i8** %48, i8*** %7, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = icmp eq i8** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 (...) @PyErr_NoMemory()
  store i32 -1, i32* %3, align 4
  br label %537

53:                                               ; preds = %43
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @PyArray_malloc(i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8* @PyArray_malloc(i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load i64, i64* %6, align 8
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @PyArray_malloc(i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  store i32* %82, i32** %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i8* @PyArray_malloc(i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  store i32* %89, i32** %91, align 8
  %92 = load i64, i64* %6, align 8
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @PyArray_malloc(i32 %94)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 7
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %123, label %103

103:                                              ; preds = %53
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118, %113, %108, %103, %53
  %124 = call i32 (...) @PyErr_NoMemory()
  br label %524

125:                                              ; preds = %118
  store i64 0, i64* %13, align 8
  br label %126

126:                                              ; preds = %136, %125
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %13, align 8
  br label %126

139:                                              ; preds = %126
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @_next_non_white_space(i8* %140, i32 0)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %469, %139
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %470

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 45
  br i1 %163, label %173, label %164

164:                                              ; preds = %156
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 62
  br i1 %172, label %173, label %174

173:                                              ; preds = %164, %156
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %524

174:                                              ; preds = %164
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 2
  %178 = call i32 @_next_non_white_space(i8* %175, i32 %177)
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %174, %150
  %180 = load i8*, i8** %5, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 40
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %524

188:                                              ; preds = %179
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 @_next_non_white_space(i8* %189, i32 %191)
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %420, %188
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 41
  br i1 %200, label %201, label %421

201:                                              ; preds = %193
  %202 = load i8*, i8** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %524

210:                                              ; preds = %201
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = call i64 @_is_alpha_underscore(i8 signext %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  store i32 -1, i32* %16, align 4
  br label %230

219:                                              ; preds = %210
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = call i64 @_get_size(i8* %223)
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %16, align 4
  %227 = icmp sle i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %524

229:                                              ; preds = %219
  br label %230

230:                                              ; preds = %229, %218
  %231 = load i8*, i8** %5, align 8
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @_get_end_of_name(i8* %231, i32 %232)
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %230
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 63
  br label %245

245:                                              ; preds = %236, %230
  %246 = phi i1 [ false, %230 ], [ %244, %236 ]
  %247 = zext i1 %246 to i32
  store i32 %247, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %281, %245
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %284

254:                                              ; preds = %248
  %255 = load i32, i32* %16, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %254
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 6
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %258, %265
  br i1 %266, label %279, label %280

267:                                              ; preds = %254
  %268 = load i8*, i8** %5, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8**, i8*** %7, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @_is_same_name(i8* %271, i8* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %267, %257
  br label %284

280:                                              ; preds = %267, %257
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %248

284:                                              ; preds = %279, %248
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %336

290:                                              ; preds = %284
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %292, align 4
  %295 = load i8*, i8** %5, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i8**, i8*** %7, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8*, i8** %299, i64 %301
  store i8* %298, i8** %302, align 8
  %303 = load i32, i32* %16, align 4
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %303, i32* %309, align 4
  %310 = load i32, i32* %16, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %290
  %313 = load i32, i32* @UFUNC_CORE_DIM_SIZE_INFERRED, align 4
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 7
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %313
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %312, %290
  %323 = load i32, i32* %17, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %322
  %326 = load i32, i32* @UFUNC_CORE_DIM_CAN_IGNORE, align 4
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 7
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %326
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %325, %322
  br label %367

336:                                              ; preds = %284
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %351

339:                                              ; preds = %336
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 7
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @UFUNC_CORE_DIM_CAN_IGNORE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %339
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %524

351:                                              ; preds = %339, %336
  %352 = load i32, i32* %17, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %366, label %354

354:                                              ; preds = %351
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 7
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @UFUNC_CORE_DIM_CAN_IGNORE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %354
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %524

366:                                              ; preds = %354, %351
  br label %367

367:                                              ; preds = %366, %335
  %368 = load i32, i32* %14, align 4
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 5
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %10, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %368, i32* %374, align 4
  %375 = load i32, i32* %10, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %10, align 4
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %8, align 4
  %379 = load i8*, i8** %5, align 8
  %380 = load i32, i32* %15, align 4
  %381 = call i32 @_next_non_white_space(i8* %379, i32 %380)
  store i32 %381, i32* %11, align 4
  %382 = load i8*, i8** %5, align 8
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %382, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %387, 44
  br i1 %388, label %389, label %398

389:                                              ; preds = %367
  %390 = load i8*, i8** %5, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp ne i32 %395, 41
  br i1 %396, label %397, label %398

397:                                              ; preds = %389
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %524

398:                                              ; preds = %389, %367
  %399 = load i8*, i8** %5, align 8
  %400 = load i32, i32* %11, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 44
  br i1 %405, label %406, label %420

406:                                              ; preds = %398
  %407 = load i8*, i8** %5, align 8
  %408 = load i32, i32* %11, align 4
  %409 = add nsw i32 %408, 1
  %410 = call i32 @_next_non_white_space(i8* %407, i32 %409)
  store i32 %410, i32* %11, align 4
  %411 = load i8*, i8** %5, align 8
  %412 = load i32, i32* %11, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 41
  br i1 %417, label %418, label %419

418:                                              ; preds = %406
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %524

419:                                              ; preds = %406
  br label %420

420:                                              ; preds = %419, %398
  br label %193

421:                                              ; preds = %193
  %422 = load i32, i32* %8, align 4
  %423 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 2
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %422, i32* %428, align 4
  %429 = load i32, i32* %10, align 4
  %430 = load i32, i32* %8, align 4
  %431 = sub nsw i32 %429, %430
  %432 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 4
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %9, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  store i32 %431, i32* %437, align 4
  %438 = load i32, i32* %9, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %440 = load i8*, i8** %5, align 8
  %441 = load i32, i32* %11, align 4
  %442 = add nsw i32 %441, 1
  %443 = call i32 @_next_non_white_space(i8* %440, i32 %442)
  store i32 %443, i32* %11, align 4
  %444 = load i32, i32* %9, align 4
  %445 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 8
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %444, %447
  br i1 %448, label %449, label %469

449:                                              ; preds = %421
  %450 = load i32, i32* %9, align 4
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = icmp ne i32 %450, %453
  br i1 %454, label %455, label %469

455:                                              ; preds = %449
  %456 = load i8*, i8** %5, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %456, i64 %458
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = icmp ne i32 %461, 44
  br i1 %462, label %463, label %464

463:                                              ; preds = %455
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %524

464:                                              ; preds = %455
  %465 = load i8*, i8** %5, align 8
  %466 = load i32, i32* %11, align 4
  %467 = add nsw i32 %466, 1
  %468 = call i32 @_next_non_white_space(i8* %465, i32 %467)
  store i32 %468, i32* %11, align 4
  br label %469

469:                                              ; preds = %464, %449, %421
  br label %142

470:                                              ; preds = %142
  %471 = load i32, i32* %9, align 4
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = icmp ne i32 %471, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %470
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %524

477:                                              ; preds = %470
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 5
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %10, align 4
  %482 = sext i32 %481 to i64
  %483 = mul i64 4, %482
  %484 = trunc i64 %483 to i32
  %485 = call i8* @PyArray_realloc(i32* %480, i32 %484)
  %486 = bitcast i8* %485 to i32*
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 5
  store i32* %486, i32** %488, align 8
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 6
  %491 = load i32*, i32** %490, align 8
  %492 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  %496 = mul i64 4, %495
  %497 = trunc i64 %496 to i32
  %498 = call i8* @PyArray_realloc(i32* %491, i32 %497)
  %499 = bitcast i8* %498 to i32*
  %500 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 6
  store i32* %499, i32** %501, align 8
  %502 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 7
  %504 = load i32*, i32** %503, align 8
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = sext i32 %507 to i64
  %509 = mul i64 4, %508
  %510 = trunc i64 %509 to i32
  %511 = call i8* @PyArray_realloc(i32* %504, i32 %510)
  %512 = bitcast i8* %511 to i32*
  %513 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i32 0, i32 7
  store i32* %512, i32** %514, align 8
  %515 = load i32, i32* %10, align 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %477
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 0
  store i32 0, i32* %519, align 8
  br label %520

520:                                              ; preds = %517, %477
  %521 = load i8**, i8*** %7, align 8
  %522 = bitcast i8** %521 to i8*
  %523 = call i32 @PyArray_free(i8* %522)
  store i32 0, i32* %3, align 4
  br label %537

524:                                              ; preds = %476, %463, %418, %397, %365, %350, %228, %209, %187, %173, %123
  %525 = load i8**, i8*** %7, align 8
  %526 = bitcast i8** %525 to i8*
  %527 = call i32 @PyArray_free(i8* %526)
  %528 = load i8*, i8** %12, align 8
  %529 = icmp ne i8* %528, null
  br i1 %529, label %530, label %536

530:                                              ; preds = %524
  %531 = load i32, i32* @PyExc_ValueError, align 4
  %532 = load i8*, i8** %12, align 8
  %533 = load i32, i32* %11, align 4
  %534 = load i8*, i8** %5, align 8
  %535 = call i32 @PyErr_Format(i32 %531, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %532, i32 %533, i8* %534)
  br label %536

536:                                              ; preds = %530, %524
  store i32 -1, i32* %3, align 4
  br label %537

537:                                              ; preds = %536, %520, %51, %20
  %538 = load i32, i32* %3, align 4
  ret i32 %538
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @PyArray_malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @_next_non_white_space(i8*, i32) #1

declare dso_local i64 @_is_alpha_underscore(i8 signext) #1

declare dso_local i64 @_get_size(i8*) #1

declare dso_local i32 @_get_end_of_name(i8*, i32) #1

declare dso_local i32 @_is_same_name(i8*, i8*) #1

declare dso_local i8* @PyArray_realloc(i32*, i32) #1

declare dso_local i32 @PyArray_free(i8*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
