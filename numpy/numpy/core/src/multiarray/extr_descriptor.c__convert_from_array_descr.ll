; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_array_descr.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_array_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i8, i32, i32, %struct.TYPE_42__*, %struct.TYPE_42__* }

@NPY_NEEDS_PYAPI = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"f%d\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"field '%s' occurs more than once\00", align 1
@NPY_FROM_FIELDS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"title already used as a name or title.\00", align 1
@NPY_VOID = common dso_local global i32 0, align 4
@NPY_ALIGNED_STRUCT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_42__* (%struct.TYPE_42__*, i32)* @_convert_from_array_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_42__* @_convert_from_array_descr(%struct.TYPE_42__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca %struct.TYPE_42__*, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca %struct.TYPE_42__*, align 8
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_42__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load i8, i8* @NPY_NEEDS_PYAPI, align 1
  store i8 %23, i8* %19, align 1
  store i32 0, i32* %20, align 4
  %24 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %25 = call i32 @PyList_GET_SIZE(%struct.TYPE_42__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_42__* @PyTuple_New(i32 %26)
  store %struct.TYPE_42__* %27, %struct.TYPE_42__** %16, align 8
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %29 = icmp ne %struct.TYPE_42__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %3, align 8
  br label %319

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %32 = call %struct.TYPE_42__* (...) @PyDict_New()
  store %struct.TYPE_42__* %32, %struct.TYPE_42__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %265, %31
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %268

37:                                               ; preds = %33
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.TYPE_42__* @PyList_GET_ITEM(%struct.TYPE_42__* %38, i32 %39)
  store %struct.TYPE_42__* %40, %struct.TYPE_42__** %11, align 8
  %41 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %42 = call i64 @PyTuple_Check(%struct.TYPE_42__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %46 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_42__* %45)
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %37
  br label %314

49:                                               ; preds = %44
  %50 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %51 = call %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__* %50, i32 0)
  store %struct.TYPE_42__* %51, %struct.TYPE_42__** %13, align 8
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %53 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %15, align 8
  br label %77

56:                                               ; preds = %49
  %57 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %58 = call i64 @PyTuple_Check(%struct.TYPE_42__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %62 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_42__* %61)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %314

65:                                               ; preds = %60
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %67 = call %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__* %66, i32 0)
  store %struct.TYPE_42__* %67, %struct.TYPE_42__** %15, align 8
  %68 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %69 = call %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__* %68, i32 1)
  store %struct.TYPE_42__* %69, %struct.TYPE_42__** %13, align 8
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %71 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %314

74:                                               ; preds = %65
  br label %76

75:                                               ; preds = %56
  br label %314

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %79 = call i32 @Py_INCREF(%struct.TYPE_42__* %78)
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %81 = call i64 @PyUnicode_Check(%struct.TYPE_42__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %85 = call %struct.TYPE_42__* @PyUnicode_AsASCIIString(%struct.TYPE_42__* %84)
  store %struct.TYPE_42__* %85, %struct.TYPE_42__** %21, align 8
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %87 = call i32 @Py_DECREF(%struct.TYPE_42__* %86)
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %89 = icmp eq %struct.TYPE_42__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %314

91:                                               ; preds = %83
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  store %struct.TYPE_42__* %92, %struct.TYPE_42__** %13, align 8
  br label %93

93:                                               ; preds = %91, %77
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %95 = call i64 @PyUString_GET_SIZE(%struct.TYPE_42__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %99 = call i32 @Py_DECREF(%struct.TYPE_42__* %98)
  %100 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %101 = icmp eq %struct.TYPE_42__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_42__* @PyUString_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %103)
  store %struct.TYPE_42__* %104, %struct.TYPE_42__** %13, align 8
  br label %109

105:                                              ; preds = %97
  %106 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  store %struct.TYPE_42__* %106, %struct.TYPE_42__** %13, align 8
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %108 = call i32 @Py_INCREF(%struct.TYPE_42__* %107)
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %93
  %111 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %114 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %111, i32 %112, %struct.TYPE_42__* %113)
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %116 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_42__* %115)
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %123 = call %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__* %122, i32 1)
  %124 = call i32 @PyArray_DescrAlignConverter(%struct.TYPE_42__* %123, %struct.TYPE_42__** %18)
  store i32 %124, i32* %9, align 4
  br label %129

125:                                              ; preds = %118
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %127 = call %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__* %126, i32 1)
  %128 = call i32 @PyArray_DescrConverter(%struct.TYPE_42__* %127, %struct.TYPE_42__** %18)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %150

130:                                              ; preds = %110
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %132 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_42__* %131)
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %136 = call %struct.TYPE_42__* @PyTuple_GetSlice(%struct.TYPE_42__* %135, i32 1, i32 3)
  store %struct.TYPE_42__* %136, %struct.TYPE_42__** %12, align 8
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %141 = call i32 @PyArray_DescrAlignConverter(%struct.TYPE_42__* %140, %struct.TYPE_42__** %18)
  store i32 %141, i32* %9, align 4
  br label %145

142:                                              ; preds = %134
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %144 = call i32 @PyArray_DescrConverter(%struct.TYPE_42__* %143, %struct.TYPE_42__** %18)
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %147 = call i32 @Py_DECREF(%struct.TYPE_42__* %146)
  br label %149

148:                                              ; preds = %130
  br label %314

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @NPY_FAIL, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %314

155:                                              ; preds = %150
  %156 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %157 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %158 = call i32* @PyDict_GetItem(%struct.TYPE_42__* %156, %struct.TYPE_42__* %157)
  %159 = icmp ne i32* %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %162 = icmp ne %struct.TYPE_42__* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %165 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %169 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %170 = call i32* @PyDict_GetItem(%struct.TYPE_42__* %168, %struct.TYPE_42__* %169)
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %167, %155
  %173 = load i32, i32* @PyExc_ValueError, align 4
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %175 = call i32 @PyString_AsString(%struct.TYPE_42__* %174)
  %176 = call i32 @PyErr_Format(i32 %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %178 = call i32 @Py_DECREF(%struct.TYPE_42__* %177)
  br label %314

179:                                              ; preds = %167, %163, %160
  %180 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 8
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* @NPY_FROM_FIELDS, align 1
  %185 = sext i8 %184 to i32
  %186 = and i32 %183, %185
  %187 = load i8, i8* %19, align 1
  %188 = sext i8 %187 to i32
  %189 = or i32 %188, %186
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %19, align 1
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %179
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %22, align 4
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %200, i32 %201)
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %199, %193
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %22, align 4
  %206 = call i32 @PyArray_MAX(i32 %204, i32 %205)
  store i32 %206, i32* %20, align 4
  br label %207

207:                                              ; preds = %203, %179
  %208 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %209 = icmp eq %struct.TYPE_42__* %208, null
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 2, i32 3
  %212 = call %struct.TYPE_42__* @PyTuple_New(i32 %211)
  store %struct.TYPE_42__* %212, %struct.TYPE_42__** %14, align 8
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %214 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %215 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %213, i32 0, %struct.TYPE_42__* %214)
  %216 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = call %struct.TYPE_42__* @PyInt_FromLong(i64 %218)
  %220 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %216, i32 1, %struct.TYPE_42__* %219)
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %222 = icmp ne %struct.TYPE_42__* %221, null
  br i1 %222, label %223, label %252

223:                                              ; preds = %207
  %224 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %225 = call i32 @Py_INCREF(%struct.TYPE_42__* %224)
  %226 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %228 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %226, i32 2, %struct.TYPE_42__* %227)
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %230 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %231 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %232 = call i32 @PyDict_SetItem(%struct.TYPE_42__* %229, %struct.TYPE_42__* %230, %struct.TYPE_42__* %231)
  %233 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %234 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %223
  %237 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %239 = call i32* @PyDict_GetItem(%struct.TYPE_42__* %237, %struct.TYPE_42__* %238)
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i32, i32* @PyExc_ValueError, align 4
  %243 = call i32 @PyErr_SetString(i32 %242, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %244 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %245 = call i32 @Py_DECREF(%struct.TYPE_42__* %244)
  br label %314

246:                                              ; preds = %236
  %247 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %248 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %249 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %250 = call i32 @PyDict_SetItem(%struct.TYPE_42__* %247, %struct.TYPE_42__* %248, %struct.TYPE_42__* %249)
  br label %251

251:                                              ; preds = %246, %223
  br label %257

252:                                              ; preds = %207
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %254 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %255 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %256 = call i32 @PyDict_SetItem(%struct.TYPE_42__* %253, %struct.TYPE_42__* %254, %struct.TYPE_42__* %255)
  br label %257

257:                                              ; preds = %252, %251
  %258 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %8, align 4
  %263 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %264 = call i32 @Py_DECREF(%struct.TYPE_42__* %263)
  br label %265

265:                                              ; preds = %257
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %7, align 4
  br label %33

268:                                              ; preds = %33
  %269 = load i32, i32* %20, align 4
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %20, align 4
  %274 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %272, i32 %273)
  store i32 %274, i32* %8, align 4
  br label %275

275:                                              ; preds = %271, %268
  %276 = load i32, i32* @NPY_VOID, align 4
  %277 = call %struct.TYPE_42__* @PyArray_DescrNewFromType(i32 %276)
  store %struct.TYPE_42__* %277, %struct.TYPE_42__** %17, align 8
  %278 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %279 = icmp eq %struct.TYPE_42__* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %282 = call i32 @Py_XDECREF(%struct.TYPE_42__* %281)
  %283 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %284 = call i32 @Py_XDECREF(%struct.TYPE_42__* %283)
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %3, align 8
  br label %319

285:                                              ; preds = %275
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %287 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %287, i32 0, i32 4
  store %struct.TYPE_42__* %286, %struct.TYPE_42__** %288, align 8
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %290 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %290, i32 0, i32 3
  store %struct.TYPE_42__* %289, %struct.TYPE_42__** %291, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i8, i8* %19, align 1
  %296 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %296, i32 0, i32 0
  store i8 %295, i8* %297, align 8
  %298 = load i32, i32* %5, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %285
  %301 = load i8, i8* @NPY_ALIGNED_STRUCT, align 1
  %302 = sext i8 %301 to i32
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 0
  %305 = load i8, i8* %304, align 8
  %306 = sext i8 %305 to i32
  %307 = or i32 %306, %302
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %304, align 8
  %309 = load i32, i32* %20, align 4
  %310 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %300, %285
  %313 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  store %struct.TYPE_42__* %313, %struct.TYPE_42__** %3, align 8
  br label %319

314:                                              ; preds = %241, %172, %154, %148, %90, %75, %73, %64, %48
  %315 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %316 = call i32 @Py_DECREF(%struct.TYPE_42__* %315)
  %317 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %318 = call i32 @Py_DECREF(%struct.TYPE_42__* %317)
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %3, align 8
  br label %319

319:                                              ; preds = %314, %312, %280, %30
  %320 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  ret %struct.TYPE_42__* %320
}

declare dso_local i32 @PyList_GET_SIZE(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyTuple_New(i32) #1

declare dso_local %struct.TYPE_42__* @PyDict_New(...) #1

declare dso_local %struct.TYPE_42__* @PyList_GET_ITEM(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @PyTuple_Check(%struct.TYPE_42__*) #1

declare dso_local i32 @PyTuple_GET_SIZE(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyTuple_GET_ITEM(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @PyBaseString_Check(%struct.TYPE_42__*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_42__*) #1

declare dso_local i64 @PyUnicode_Check(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyUnicode_AsASCIIString(%struct.TYPE_42__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_42__*) #1

declare dso_local i64 @PyUString_GET_SIZE(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyUString_FromFormat(i8*, i32) #1

declare dso_local i32 @PyTuple_SET_ITEM(%struct.TYPE_42__*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @PyArray_DescrAlignConverter(%struct.TYPE_42__*, %struct.TYPE_42__**) #1

declare dso_local i32 @PyArray_DescrConverter(%struct.TYPE_42__*, %struct.TYPE_42__**) #1

declare dso_local %struct.TYPE_42__* @PyTuple_GetSlice(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32* @PyDict_GetItem(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @PyString_AsString(%struct.TYPE_42__*) #1

declare dso_local i32 @NPY_NEXT_ALIGNED_OFFSET(i32, i32) #1

declare dso_local i32 @PyArray_MAX(i32, i32) #1

declare dso_local %struct.TYPE_42__* @PyInt_FromLong(i64) #1

declare dso_local i32 @PyDict_SetItem(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local %struct.TYPE_42__* @PyArray_DescrNewFromType(i32) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
