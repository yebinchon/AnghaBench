; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_format_string.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_format_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i8, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [113 x i8] c"dtypes with overlapping or out-of-order fields are not representable as buffers. Consider reordering the fields.\00", align 1
@Generic = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"cannot expose native-only dtype '%c' in non-native byte order '%c' via buffer interface\00", align 1
@NPY_SIZEOF_LONG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"Zf\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"Zd\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Zg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%dw\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%dx\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"cannot include dtype '%c' in a buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i64*, i8*)* @_buffer_format_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_buffer_format_string(%struct.TYPE_7__* %0, i32* %1, i32* %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [128 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [128 x i8], align 16
  %33 = alloca [128 x i8], align 16
  %34 = alloca [128 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8 64, i8* %13, align 1
  store i64 0, i64* %14, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i8* %13, i8** %11, align 8
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i64*, i64** %10, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64* %14, i64** %10, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %143

47:                                               ; preds = %42
  store i64 1, i64* %17, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @PyTuple_Check(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @Py_INCREF(i32* %61)
  br label %70

63:                                               ; preds = %47
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %68)
  store i32* %69, i32** %16, align 8
  br label %70

70:                                               ; preds = %63, %55
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @_append_char(i32* %71, i8 signext 40)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %21, align 4
  br label %139

75:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %109, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @PyTuple_GET_SIZE(i32* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @_append_char(i32* %85, i8 signext 44)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 -1, i32* %21, align 4
  br label %139

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32* @PyTuple_GET_ITEM(i32* %91, i32 %92)
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i64 @PyNumber_AsSsize_t(i32* %94, i32* null)
  store i64 %95, i64* %18, align 8
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %97 = load i64, i64* %18, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @PyOS_snprintf(i8* %96, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %102 = call i64 @_append_str(i32* %100, i8* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  store i32 -1, i32* %21, align 4
  br label %139

105:                                              ; preds = %90
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %17, align 8
  %108 = mul nsw i64 %107, %106
  store i64 %108, i64* %17, align 8
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %76

112:                                              ; preds = %76
  %113 = load i32*, i32** %8, align 8
  %114 = call i64 @_append_char(i32* %113, i8 signext 41)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -1, i32* %21, align 4
  br label %139

117:                                              ; preds = %112
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %19, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @_buffer_format_string(%struct.TYPE_7__* %124, i32* %125, i32* %126, i64* %127, i8* %128)
  store i32 %129, i32* %21, align 4
  %130 = load i64, i64* %19, align 8
  %131 = load i64*, i64** %10, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %19, align 8
  %134 = sub nsw i64 %132, %133
  %135 = load i64, i64* %17, align 8
  %136 = mul nsw i64 %134, %135
  %137 = add nsw i64 %130, %136
  %138 = load i64*, i64** %10, align 8
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %117, %116, %104, %88, %74
  %140 = load i32*, i32** %16, align 8
  %141 = call i32 @Py_DECREF(i32* %140)
  %142 = load i32, i32* %21, align 4
  store i32 %142, i32* %6, align 4
  br label %583

143:                                              ; preds = %42
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = call i64 @PyDataType_HASFIELDS(%struct.TYPE_7__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %236

147:                                              ; preds = %143
  %148 = load i64*, i64** %10, align 8
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %22, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i64 @_append_str(i32* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 -1, i32* %6, align 4
  br label %583

154:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %227, %154
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @PyTuple_GET_SIZE(i32* %159)
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %162, label %230

162:                                              ; preds = %155
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32* @PyTuple_GET_ITEM(i32* %165, i32 %166)
  store i32* %167, i32** %23, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %23, align 8
  %172 = call i32* @PyDict_GetItem(i32 %170, i32* %171)
  store i32* %172, i32** %24, align 8
  %173 = load i32*, i32** %24, align 8
  %174 = call i32* @PyTuple_GetItem(i32* %173, i32 0)
  %175 = bitcast i32* %174 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %175, %struct.TYPE_7__** %26, align 8
  %176 = load i32*, i32** %24, align 8
  %177 = call i32* @PyTuple_GetItem(i32* %176, i32 1)
  store i32* %177, i32** %25, align 8
  %178 = load i32*, i32** %25, align 8
  %179 = call i64 @PyInt_AsLong(i32* %178)
  store i64 %179, i64* %27, align 8
  %180 = load i64, i64* %27, align 8
  %181 = call i64 @error_converting(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %162
  store i32 -1, i32* %6, align 4
  br label %583

184:                                              ; preds = %162
  %185 = load i64, i64* %22, align 8
  %186 = load i64, i64* %27, align 8
  %187 = add nsw i64 %186, %185
  store i64 %187, i64* %27, align 8
  %188 = load i64*, i64** %10, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %27, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32, i32* @PyExc_ValueError, align 4
  %194 = call i32 @PyErr_SetString(i32 %193, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %583

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %206, %195
  %197 = load i64*, i64** %10, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %27, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i32*, i32** %8, align 8
  %203 = call i64 @_append_char(i32* %202, i8 signext 120)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 -1, i32* %6, align 4
  br label %583

206:                                              ; preds = %201
  %207 = load i64*, i64** %10, align 8
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %207, align 8
  br label %196

210:                                              ; preds = %196
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load i64*, i64** %10, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @_buffer_format_string(%struct.TYPE_7__* %211, i32* %212, i32* %213, i64* %214, i8* %215)
  store i32 %216, i32* %28, align 4
  %217 = load i32, i32* %28, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i32 -1, i32* %6, align 4
  br label %583

220:                                              ; preds = %210
  %221 = load i32*, i32** %8, align 8
  %222 = load i32*, i32** %23, align 8
  %223 = call i64 @_append_field_name(i32* %221, i32* %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 -1, i32* %6, align 4
  br label %583

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %155

230:                                              ; preds = %155
  %231 = load i32*, i32** %8, align 8
  %232 = call i64 @_append_char(i32* %231, i8 signext 125)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 -1, i32* %6, align 4
  br label %583

235:                                              ; preds = %230
  br label %581

236:                                              ; preds = %143
  store i32 1, i32* %29, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 139
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 145
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i1 [ true, %236 ], [ %245, %241 ]
  %248 = zext i1 %247 to i32
  store i32 %248, i32* %31, align 4
  %249 = load i32, i32* %31, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 138
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 131
  br label %261

261:                                              ; preds = %256, %251
  %262 = phi i1 [ true, %251 ], [ %260, %256 ]
  br label %263

263:                                              ; preds = %261, %246
  %264 = phi i1 [ true, %246 ], [ %262, %261 ]
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %31, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %10, align 8
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, %268
  store i64 %271, i64* %269, align 8
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* @Generic, align 4
  %274 = call i64 @PyArray_IsScalar(i32* %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %263
  store i32 1, i32* %30, align 4
  br label %283

277:                                              ; preds = %263
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %279 = load i32*, i32** %9, align 8
  %280 = load i64*, i64** %10, align 8
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @_is_natively_aligned_at(%struct.TYPE_7__* %278, i32* %279, i64 %281)
  store i32 %282, i32* %30, align 4
  br label %283

283:                                              ; preds = %277, %276
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  %286 = load i8, i8* %285, align 8
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 61
  br i1 %288, label %289, label %305

289:                                              ; preds = %283
  %290 = load i32, i32* %30, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %289
  store i32 0, i32* %29, align 4
  %293 = load i8*, i8** %11, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp ne i32 %295, 64
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load i32*, i32** %8, align 8
  %299 = call i64 @_append_char(i32* %298, i8 signext 64)
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store i32 -1, i32* %6, align 4
  br label %583

302:                                              ; preds = %297
  %303 = load i8*, i8** %11, align 8
  store i8 64, i8* %303, align 1
  br label %304

304:                                              ; preds = %302, %292
  br label %383

305:                                              ; preds = %289, %283
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  %308 = load i8, i8* %307, align 8
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 61
  br i1 %310, label %311, label %327

311:                                              ; preds = %305
  %312 = load i32, i32* %31, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  store i32 0, i32* %29, align 4
  %315 = load i8*, i8** %11, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp ne i32 %317, 94
  br i1 %318, label %319, label %326

319:                                              ; preds = %314
  %320 = load i32*, i32** %8, align 8
  %321 = call i64 @_append_char(i32* %320, i8 signext 94)
  %322 = icmp slt i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store i32 -1, i32* %6, align 4
  br label %583

324:                                              ; preds = %319
  %325 = load i8*, i8** %11, align 8
  store i8 94, i8* %325, align 1
  br label %326

326:                                              ; preds = %324, %314
  br label %382

327:                                              ; preds = %311, %305
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 2
  %330 = load i8, i8* %329, align 8
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 60
  br i1 %332, label %345, label %333

333:                                              ; preds = %327
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 2
  %336 = load i8, i8* %335, align 8
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 62
  br i1 %338, label %345, label %339

339:                                              ; preds = %333
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 2
  %342 = load i8, i8* %341, align 8
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 61
  br i1 %344, label %345, label %381

345:                                              ; preds = %339, %333, %327
  store i32 1, i32* %29, align 4
  %346 = load i8*, i8** %11, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 2
  %351 = load i8, i8* %350, align 8
  %352 = sext i8 %351 to i32
  %353 = icmp ne i32 %348, %352
  br i1 %353, label %354, label %367

354:                                              ; preds = %345
  %355 = load i32*, i32** %8, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  %358 = load i8, i8* %357, align 8
  %359 = call i64 @_append_char(i32* %355, i8 signext %358)
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  store i32 -1, i32* %6, align 4
  br label %583

362:                                              ; preds = %354
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 2
  %365 = load i8, i8* %364, align 8
  %366 = load i8*, i8** %11, align 8
  store i8 %365, i8* %366, align 1
  br label %367

367:                                              ; preds = %362, %345
  %368 = load i32, i32* %31, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %367
  %371 = load i32, i32* @PyExc_ValueError, align 4
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 2
  %377 = load i8, i8* %376, align 8
  %378 = sext i8 %377 to i32
  %379 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %371, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i32 %374, i32 %378)
  store i32 -1, i32* %6, align 4
  br label %583

380:                                              ; preds = %367
  br label %381

381:                                              ; preds = %380, %339
  br label %382

382:                                              ; preds = %381, %326
  br label %383

383:                                              ; preds = %382, %304
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  switch i32 %386, label %574 [
    i32 149, label %387
    i32 148, label %393
    i32 134, label %399
    i32 136, label %405
    i32 129, label %411
    i32 141, label %417
    i32 133, label %423
    i32 140, label %429
    i32 132, label %448
    i32 138, label %467
    i32 131, label %473
    i32 142, label %479
    i32 143, label %485
    i32 144, label %491
    i32 139, label %497
    i32 146, label %503
    i32 147, label %509
    i32 145, label %515
    i32 137, label %521
    i32 135, label %527
    i32 130, label %540
    i32 128, label %561
  ]

387:                                              ; preds = %383
  %388 = load i32*, i32** %8, align 8
  %389 = call i64 @_append_char(i32* %388, i8 signext 63)
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  store i32 -1, i32* %6, align 4
  br label %583

392:                                              ; preds = %387
  br label %580

393:                                              ; preds = %383
  %394 = load i32*, i32** %8, align 8
  %395 = call i64 @_append_char(i32* %394, i8 signext 98)
  %396 = icmp slt i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  store i32 -1, i32* %6, align 4
  br label %583

398:                                              ; preds = %393
  br label %580

399:                                              ; preds = %383
  %400 = load i32*, i32** %8, align 8
  %401 = call i64 @_append_char(i32* %400, i8 signext 66)
  %402 = icmp slt i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %399
  store i32 -1, i32* %6, align 4
  br label %583

404:                                              ; preds = %399
  br label %580

405:                                              ; preds = %383
  %406 = load i32*, i32** %8, align 8
  %407 = call i64 @_append_char(i32* %406, i8 signext 104)
  %408 = icmp slt i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %405
  store i32 -1, i32* %6, align 4
  br label %583

410:                                              ; preds = %405
  br label %580

411:                                              ; preds = %383
  %412 = load i32*, i32** %8, align 8
  %413 = call i64 @_append_char(i32* %412, i8 signext 72)
  %414 = icmp slt i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store i32 -1, i32* %6, align 4
  br label %583

416:                                              ; preds = %411
  br label %580

417:                                              ; preds = %383
  %418 = load i32*, i32** %8, align 8
  %419 = call i64 @_append_char(i32* %418, i8 signext 105)
  %420 = icmp slt i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 -1, i32* %6, align 4
  br label %583

422:                                              ; preds = %417
  br label %580

423:                                              ; preds = %383
  %424 = load i32*, i32** %8, align 8
  %425 = call i64 @_append_char(i32* %424, i8 signext 73)
  %426 = icmp slt i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  store i32 -1, i32* %6, align 4
  br label %583

428:                                              ; preds = %423
  br label %580

429:                                              ; preds = %383
  %430 = load i32, i32* %29, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %441

432:                                              ; preds = %429
  %433 = load i32, i32* @NPY_SIZEOF_LONG, align 4
  %434 = icmp eq i32 %433, 8
  br i1 %434, label %435, label %441

435:                                              ; preds = %432
  %436 = load i32*, i32** %8, align 8
  %437 = call i64 @_append_char(i32* %436, i8 signext 113)
  %438 = icmp slt i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %435
  store i32 -1, i32* %6, align 4
  br label %583

440:                                              ; preds = %435
  br label %447

441:                                              ; preds = %432, %429
  %442 = load i32*, i32** %8, align 8
  %443 = call i64 @_append_char(i32* %442, i8 signext 108)
  %444 = icmp slt i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  store i32 -1, i32* %6, align 4
  br label %583

446:                                              ; preds = %441
  br label %447

447:                                              ; preds = %446, %440
  br label %580

448:                                              ; preds = %383
  %449 = load i32, i32* %29, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %460

451:                                              ; preds = %448
  %452 = load i32, i32* @NPY_SIZEOF_LONG, align 4
  %453 = icmp eq i32 %452, 8
  br i1 %453, label %454, label %460

454:                                              ; preds = %451
  %455 = load i32*, i32** %8, align 8
  %456 = call i64 @_append_char(i32* %455, i8 signext 81)
  %457 = icmp slt i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  store i32 -1, i32* %6, align 4
  br label %583

459:                                              ; preds = %454
  br label %466

460:                                              ; preds = %451, %448
  %461 = load i32*, i32** %8, align 8
  %462 = call i64 @_append_char(i32* %461, i8 signext 76)
  %463 = icmp slt i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %460
  store i32 -1, i32* %6, align 4
  br label %583

465:                                              ; preds = %460
  br label %466

466:                                              ; preds = %465, %459
  br label %580

467:                                              ; preds = %383
  %468 = load i32*, i32** %8, align 8
  %469 = call i64 @_append_char(i32* %468, i8 signext 113)
  %470 = icmp slt i64 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %467
  store i32 -1, i32* %6, align 4
  br label %583

472:                                              ; preds = %467
  br label %580

473:                                              ; preds = %383
  %474 = load i32*, i32** %8, align 8
  %475 = call i64 @_append_char(i32* %474, i8 signext 81)
  %476 = icmp slt i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  store i32 -1, i32* %6, align 4
  br label %583

478:                                              ; preds = %473
  br label %580

479:                                              ; preds = %383
  %480 = load i32*, i32** %8, align 8
  %481 = call i64 @_append_char(i32* %480, i8 signext 101)
  %482 = icmp slt i64 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %479
  store i32 -1, i32* %6, align 4
  br label %583

484:                                              ; preds = %479
  br label %580

485:                                              ; preds = %383
  %486 = load i32*, i32** %8, align 8
  %487 = call i64 @_append_char(i32* %486, i8 signext 102)
  %488 = icmp slt i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %485
  store i32 -1, i32* %6, align 4
  br label %583

490:                                              ; preds = %485
  br label %580

491:                                              ; preds = %383
  %492 = load i32*, i32** %8, align 8
  %493 = call i64 @_append_char(i32* %492, i8 signext 100)
  %494 = icmp slt i64 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %491
  store i32 -1, i32* %6, align 4
  br label %583

496:                                              ; preds = %491
  br label %580

497:                                              ; preds = %383
  %498 = load i32*, i32** %8, align 8
  %499 = call i64 @_append_char(i32* %498, i8 signext 103)
  %500 = icmp slt i64 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %497
  store i32 -1, i32* %6, align 4
  br label %583

502:                                              ; preds = %497
  br label %580

503:                                              ; preds = %383
  %504 = load i32*, i32** %8, align 8
  %505 = call i64 @_append_str(i32* %504, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %506 = icmp slt i64 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  store i32 -1, i32* %6, align 4
  br label %583

508:                                              ; preds = %503
  br label %580

509:                                              ; preds = %383
  %510 = load i32*, i32** %8, align 8
  %511 = call i64 @_append_str(i32* %510, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %512 = icmp slt i64 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %509
  store i32 -1, i32* %6, align 4
  br label %583

514:                                              ; preds = %509
  br label %580

515:                                              ; preds = %383
  %516 = load i32*, i32** %8, align 8
  %517 = call i64 @_append_str(i32* %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %518 = icmp slt i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  store i32 -1, i32* %6, align 4
  br label %583

520:                                              ; preds = %515
  br label %580

521:                                              ; preds = %383
  %522 = load i32*, i32** %8, align 8
  %523 = call i64 @_append_char(i32* %522, i8 signext 79)
  %524 = icmp slt i64 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  store i32 -1, i32* %6, align 4
  br label %583

526:                                              ; preds = %521
  br label %580

527:                                              ; preds = %383
  %528 = getelementptr inbounds [128 x i8], [128 x i8]* %32, i64 0, i64 0
  %529 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = trunc i64 %531 to i32
  %533 = call i32 @PyOS_snprintf(i8* %528, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %532)
  %534 = load i32*, i32** %8, align 8
  %535 = getelementptr inbounds [128 x i8], [128 x i8]* %32, i64 0, i64 0
  %536 = call i64 @_append_str(i32* %534, i8* %535)
  %537 = icmp slt i64 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %527
  store i32 -1, i32* %6, align 4
  br label %583

539:                                              ; preds = %527
  br label %580

540:                                              ; preds = %383
  %541 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %541, i32 0, i32 1
  %543 = load i64, i64* %542, align 8
  %544 = srem i64 %543, 4
  %545 = icmp eq i64 %544, 0
  %546 = zext i1 %545 to i32
  %547 = call i32 @assert(i32 %546)
  %548 = getelementptr inbounds [128 x i8], [128 x i8]* %33, i64 0, i64 0
  %549 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = sdiv i64 %551, 4
  %553 = trunc i64 %552 to i32
  %554 = call i32 @PyOS_snprintf(i8* %548, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %553)
  %555 = load i32*, i32** %8, align 8
  %556 = getelementptr inbounds [128 x i8], [128 x i8]* %33, i64 0, i64 0
  %557 = call i64 @_append_str(i32* %555, i8* %556)
  %558 = icmp slt i64 %557, 0
  br i1 %558, label %559, label %560

559:                                              ; preds = %540
  store i32 -1, i32* %6, align 4
  br label %583

560:                                              ; preds = %540
  br label %580

561:                                              ; preds = %383
  %562 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %563 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %563, i32 0, i32 1
  %565 = load i64, i64* %564, align 8
  %566 = trunc i64 %565 to i32
  %567 = call i32 @PyOS_snprintf(i8* %562, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %566)
  %568 = load i32*, i32** %8, align 8
  %569 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %570 = call i64 @_append_str(i32* %568, i8* %569)
  %571 = icmp slt i64 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %561
  store i32 -1, i32* %6, align 4
  br label %583

573:                                              ; preds = %561
  br label %580

574:                                              ; preds = %383
  %575 = load i32, i32* @PyExc_ValueError, align 4
  %576 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 4
  %579 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %575, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %578)
  store i32 -1, i32* %6, align 4
  br label %583

580:                                              ; preds = %573, %560, %539, %526, %520, %514, %508, %502, %496, %490, %484, %478, %472, %466, %447, %428, %422, %416, %410, %404, %398, %392
  br label %581

581:                                              ; preds = %580, %235
  br label %582

582:                                              ; preds = %581
  store i32 0, i32* %6, align 4
  br label %583

583:                                              ; preds = %582, %574, %572, %559, %538, %525, %519, %513, %507, %501, %495, %489, %483, %477, %471, %464, %458, %445, %439, %427, %421, %415, %409, %403, %397, %391, %370, %361, %323, %301, %234, %225, %219, %205, %192, %183, %153, %139
  %584 = load i32, i32* %6, align 4
  ret i32 %584
}

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*) #1

declare dso_local i64 @_append_char(i32*, i8 signext) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyNumber_AsSsize_t(i32*, i32*) #1

declare dso_local i32 @PyOS_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @_append_str(i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyDataType_HASFIELDS(%struct.TYPE_7__*) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32* @PyTuple_GetItem(i32*, i32) #1

declare dso_local i64 @PyInt_AsLong(i32*) #1

declare dso_local i64 @error_converting(i64) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @_append_field_name(i32*, i32*) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32 @_is_natively_aligned_at(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
