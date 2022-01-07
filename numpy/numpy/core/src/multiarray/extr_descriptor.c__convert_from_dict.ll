; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_dict.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32, i64, i8, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__* }

@NPY_NEEDS_PYAPI = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"titles\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [83 x i8] c"'names', 'formats', 'offsets', and 'titles' dict entries must have the same length\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@Py_True = common dso_local global %struct.TYPE_42__* null, align 8
@Py_False = common dso_local global %struct.TYPE_42__* null, align 8
@.str.6 = private unnamed_addr constant [89 x i8] c"NumPy dtype descriptor includes 'aligned' entry, but its value is neither True nor False\00", align 1
@Py_None = common dso_local global %struct.TYPE_42__* null, align 8
@NPY_FAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"offset %ld cannot be negative\00", align 1
@.str.8 = private unnamed_addr constant [98 x i8] c"offset %ld for NumPy dtype with fields is not divisible by the field alignment %d with align=True\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"field names must be strings\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"name already used as a name or title\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"title already used as a name or title.\00", align 1
@NPY_FROM_FIELDS = common dso_local global i8 0, align 1
@NPY_VOID = common dso_local global i32 0, align 4
@NPY_ALIGNED_STRUCT = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@.str.13 = private unnamed_addr constant [84 x i8] c"NumPy dtype descriptor requires %d bytes, cannot override to smaller itemsize of %d\00", align 1
@.str.14 = private unnamed_addr constant [109 x i8] c"NumPy dtype descriptor requires alignment of %d bytes, which is not divisible into the specified itemsize %d\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_42__* (%struct.TYPE_42__*, i32)* @_convert_from_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_42__* @_convert_from_dict(%struct.TYPE_42__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_42__*, align 8
  %22 = alloca %struct.TYPE_42__*, align 8
  %23 = alloca %struct.TYPE_42__*, align 8
  %24 = alloca %struct.TYPE_42__*, align 8
  %25 = alloca %struct.TYPE_42__*, align 8
  %26 = alloca %struct.TYPE_42__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_42__*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %7, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %8, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %9, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %11, align 8
  store i32 0, i32* %18, align 4
  %33 = load i8, i8* @NPY_NEEDS_PYAPI, align 1
  store i8 %33, i8* %19, align 1
  store i32 0, i32* %20, align 4
  %34 = call %struct.TYPE_42__* (...) @PyDict_New()
  store %struct.TYPE_42__* %34, %struct.TYPE_42__** %7, align 8
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %36 = icmp eq %struct.TYPE_42__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = call i64 (...) @PyErr_NoMemory()
  %39 = inttoptr i64 %38 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %39, %struct.TYPE_42__** %3, align 8
  br label %600

40:                                               ; preds = %2
  %41 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %42 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_42__* %42, %struct.TYPE_42__** %8, align 8
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %44 = icmp eq %struct.TYPE_42__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %47 = call i32 @Py_DECREF(%struct.TYPE_42__* %46)
  %48 = call i32 (...) @PyErr_Clear()
  %49 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.TYPE_42__* @_use_fields_dict(%struct.TYPE_42__* %49, i32 %50)
  store %struct.TYPE_42__* %51, %struct.TYPE_42__** %3, align 8
  br label %600

52:                                               ; preds = %40
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %54 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_42__* %54, %struct.TYPE_42__** %10, align 8
  %55 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %56 = icmp eq %struct.TYPE_42__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %59 = call i32 @Py_DECREF(%struct.TYPE_42__* %58)
  %60 = call i32 (...) @PyErr_Clear()
  %61 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %62 = call i32 @Py_DECREF(%struct.TYPE_42__* %61)
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.TYPE_42__* @_use_fields_dict(%struct.TYPE_42__* %63, i32 %64)
  store %struct.TYPE_42__* %65, %struct.TYPE_42__** %3, align 8
  br label %600

66:                                               ; preds = %52
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %68 = call i32 @PyObject_Length(%struct.TYPE_42__* %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %70 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_42__* %70, %struct.TYPE_42__** %9, align 8
  %71 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %72 = icmp ne %struct.TYPE_42__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = call i32 (...) @PyErr_Clear()
  br label %75

75:                                               ; preds = %73, %66
  %76 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %77 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_42__* %77, %struct.TYPE_42__** %11, align 8
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %79 = icmp ne %struct.TYPE_42__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 (...) @PyErr_Clear()
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %85 = call i32 @PyObject_Length(%struct.TYPE_42__* %84)
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %89 = icmp ne %struct.TYPE_42__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %93 = call i32 @PyObject_Length(%struct.TYPE_42__* %92)
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %90, %87
  %96 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %97 = icmp ne %struct.TYPE_42__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %101 = call i32 @PyObject_Length(%struct.TYPE_42__* %100)
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %90, %82
  %104 = load i32, i32* @PyExc_ValueError, align 4
  %105 = call i32 @PyErr_SetString(i32 %104, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  br label %589

106:                                              ; preds = %98, %95
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %108 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_42__* %108, %struct.TYPE_42__** %13, align 8
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %110 = icmp eq %struct.TYPE_42__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (...) @PyErr_Clear()
  br label %131

113:                                              ; preds = %106
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** @Py_True, align 8
  %116 = icmp eq %struct.TYPE_42__* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %5, align 4
  br label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %120 = load %struct.TYPE_42__*, %struct.TYPE_42__** @Py_False, align 8
  %121 = icmp ne %struct.TYPE_42__* %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %124 = call i32 @Py_DECREF(%struct.TYPE_42__* %123)
  %125 = load i32, i32* @PyExc_ValueError, align 4
  %126 = call i32 @PyErr_SetString(i32 %125, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0))
  br label %589

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %117
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %130 = call i32 @Py_DECREF(%struct.TYPE_42__* %129)
  br label %131

131:                                              ; preds = %128, %111
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %408, %131
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %411

136:                                              ; preds = %132
  store i32 1, i32* %29, align 4
  store i32 2, i32* %27, align 4
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %24, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call %struct.TYPE_42__* @PyInt_FromLong(i32 %137)
  store %struct.TYPE_42__* %138, %struct.TYPE_42__** %23, align 8
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %140 = icmp ne %struct.TYPE_42__* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %144 = call %struct.TYPE_42__* @PyObject_GetItem(%struct.TYPE_42__* %142, %struct.TYPE_42__* %143)
  store %struct.TYPE_42__* %144, %struct.TYPE_42__** %24, align 8
  %145 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %146 = icmp ne %struct.TYPE_42__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %149 = load %struct.TYPE_42__*, %struct.TYPE_42__** @Py_None, align 8
  %150 = icmp ne %struct.TYPE_42__* %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 3, i32* %27, align 4
  br label %155

152:                                              ; preds = %147, %141
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %154 = call i32 @Py_XDECREF(%struct.TYPE_42__* %153)
  br label %155

155:                                              ; preds = %152, %151
  %156 = call i32 (...) @PyErr_Clear()
  br label %157

157:                                              ; preds = %155, %136
  %158 = load i32, i32* %27, align 4
  %159 = call %struct.TYPE_42__* @PyTuple_New(i32 %158)
  store %struct.TYPE_42__* %159, %struct.TYPE_42__** %21, align 8
  %160 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %161 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %162 = call %struct.TYPE_42__* @PyObject_GetItem(%struct.TYPE_42__* %160, %struct.TYPE_42__* %161)
  store %struct.TYPE_42__* %162, %struct.TYPE_42__** %22, align 8
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %164 = icmp ne %struct.TYPE_42__* %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %157
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %167 = call i32 @Py_DECREF(%struct.TYPE_42__* %166)
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %169 = call i32 @Py_DECREF(%struct.TYPE_42__* %168)
  br label %589

170:                                              ; preds = %157
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %175 = call i32 @PyArray_DescrAlignConverter(%struct.TYPE_42__* %174, %struct.TYPE_42__** %30)
  store i32 %175, i32* %28, align 4
  br label %179

176:                                              ; preds = %170
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %178 = call i32 @PyArray_DescrConverter(%struct.TYPE_42__* %177, %struct.TYPE_42__** %30)
  store i32 %178, i32* %28, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %181 = call i32 @Py_DECREF(%struct.TYPE_42__* %180)
  %182 = load i32, i32* %28, align 4
  %183 = load i32, i32* @NPY_FAIL, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %187 = call i32 @Py_DECREF(%struct.TYPE_42__* %186)
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %189 = call i32 @Py_DECREF(%struct.TYPE_42__* %188)
  br label %589

190:                                              ; preds = %179
  %191 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %193 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %191, i32 0, %struct.TYPE_42__* %192)
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %29, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %29, align 4
  %202 = call i32 @PyArray_MAX(i32 %200, i32 %201)
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %196, %190
  %204 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %205 = icmp ne %struct.TYPE_42__* %204, null
  br i1 %205, label %206, label %292

206:                                              ; preds = %203
  %207 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %208 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %209 = call %struct.TYPE_42__* @PyObject_GetItem(%struct.TYPE_42__* %207, %struct.TYPE_42__* %208)
  store %struct.TYPE_42__* %209, %struct.TYPE_42__** %26, align 8
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %211 = icmp ne %struct.TYPE_42__* %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %214 = call i32 @Py_DECREF(%struct.TYPE_42__* %213)
  %215 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %216 = call i32 @Py_DECREF(%struct.TYPE_42__* %215)
  br label %589

217:                                              ; preds = %206
  %218 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %219 = call i64 @PyArray_PyIntAsInt(%struct.TYPE_42__* %218)
  store i64 %219, i64* %31, align 8
  %220 = load i64, i64* %31, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i64 @error_converting(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %217
  %225 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %226 = call i32 @Py_DECREF(%struct.TYPE_42__* %225)
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %228 = call i32 @Py_DECREF(%struct.TYPE_42__* %227)
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %230 = call i32 @Py_DECREF(%struct.TYPE_42__* %229)
  br label %589

231:                                              ; preds = %217
  %232 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %233 = call i32 @Py_DECREF(%struct.TYPE_42__* %232)
  %234 = load i64, i64* %31, align 8
  %235 = icmp slt i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i32, i32* @PyExc_ValueError, align 4
  %238 = load i64, i64* %31, align 8
  %239 = call i32 (i32, i8*, i64, ...) @PyErr_Format(i32 %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %238)
  %240 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %241 = call i32 @Py_DECREF(%struct.TYPE_42__* %240)
  %242 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %243 = call i32 @Py_DECREF(%struct.TYPE_42__* %242)
  br label %589

244:                                              ; preds = %231
  %245 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %246 = load i64, i64* %31, align 8
  %247 = trunc i64 %246 to i32
  %248 = call %struct.TYPE_42__* @PyInt_FromLong(i32 %247)
  %249 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %245, i32 1, %struct.TYPE_42__* %248)
  %250 = load i64, i64* %31, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  store i32 1, i32* %20, align 4
  br label %255

255:                                              ; preds = %254, %244
  %256 = load i32, i32* %5, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %274

258:                                              ; preds = %255
  %259 = load i64, i64* %31, align 8
  %260 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %261 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = srem i64 %259, %263
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load i32, i32* @PyExc_ValueError, align 4
  %268 = load i64, i64* %31, align 8
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i32, i8*, i64, ...) @PyErr_Format(i32 %267, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.8, i64 0, i64 0), i64 %268, i32 %271)
  %273 = load i32, i32* @NPY_FAIL, align 4
  store i32 %273, i32* %28, align 4
  br label %291

274:                                              ; preds = %258, %255
  %275 = load i64, i64* %31, align 8
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %275, %278
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = icmp sgt i64 %279, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %274
  %284 = load i64, i64* %31, align 8
  %285 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %286 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %284, %287
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %16, align 4
  br label %290

290:                                              ; preds = %283, %274
  br label %291

291:                                              ; preds = %290, %266
  br label %314

292:                                              ; preds = %203
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load i32, i32* %29, align 4
  %297 = icmp sgt i32 %296, 1
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %29, align 4
  %301 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %299, i32 %300)
  store i32 %301, i32* %16, align 4
  br label %302

302:                                              ; preds = %298, %295, %292
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %304 = load i32, i32* %16, align 4
  %305 = call %struct.TYPE_42__* @PyInt_FromLong(i32 %304)
  %306 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %303, i32 1, %struct.TYPE_42__* %305)
  %307 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %308 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %309
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %16, align 4
  br label %314

314:                                              ; preds = %302, %291
  %315 = load i32, i32* %28, align 4
  %316 = load i32, i32* @NPY_FAIL, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %320 = call i32 @Py_DECREF(%struct.TYPE_42__* %319)
  %321 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %322 = call i32 @Py_DECREF(%struct.TYPE_42__* %321)
  br label %589

323:                                              ; preds = %314
  %324 = load i32, i32* %27, align 4
  %325 = icmp eq i32 %324, 3
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %328 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %329 = call i32 @PyTuple_SET_ITEM(%struct.TYPE_42__* %327, i32 2, %struct.TYPE_42__* %328)
  br label %330

330:                                              ; preds = %326, %323
  %331 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %332 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %333 = call %struct.TYPE_42__* @PyObject_GetItem(%struct.TYPE_42__* %331, %struct.TYPE_42__* %332)
  store %struct.TYPE_42__* %333, %struct.TYPE_42__** %25, align 8
  %334 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %335 = call i32 @Py_DECREF(%struct.TYPE_42__* %334)
  %336 = load %struct.TYPE_42__*, %struct.TYPE_42__** %25, align 8
  %337 = icmp ne %struct.TYPE_42__* %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %330
  %339 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %340 = call i32 @Py_DECREF(%struct.TYPE_42__* %339)
  br label %589

341:                                              ; preds = %330
  %342 = load %struct.TYPE_42__*, %struct.TYPE_42__** %25, align 8
  %343 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %350, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* @PyExc_ValueError, align 4
  %347 = call i32 @PyErr_SetString(i32 %346, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %348 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %349 = call i32 @Py_DECREF(%struct.TYPE_42__* %348)
  br label %589

350:                                              ; preds = %341
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %352 = load %struct.TYPE_42__*, %struct.TYPE_42__** %25, align 8
  %353 = call i32* @PyDict_GetItem(%struct.TYPE_42__* %351, %struct.TYPE_42__* %352)
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = load i32, i32* @PyExc_ValueError, align 4
  %357 = call i32 @PyErr_SetString(i32 %356, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %358 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %359 = call i32 @Py_DECREF(%struct.TYPE_42__* %358)
  br label %589

360:                                              ; preds = %350
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %362 = load %struct.TYPE_42__*, %struct.TYPE_42__** %25, align 8
  %363 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %364 = call i32 @PyDict_SetItem(%struct.TYPE_42__* %361, %struct.TYPE_42__* %362, %struct.TYPE_42__* %363)
  %365 = load %struct.TYPE_42__*, %struct.TYPE_42__** %25, align 8
  %366 = call i32 @Py_DECREF(%struct.TYPE_42__* %365)
  %367 = load i32, i32* %27, align 4
  %368 = icmp eq i32 %367, 3
  br i1 %368, label %369, label %389

369:                                              ; preds = %360
  %370 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %371 = call i64 @PyBaseString_Check(%struct.TYPE_42__* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %388

373:                                              ; preds = %369
  %374 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %375 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %376 = call i32* @PyDict_GetItem(%struct.TYPE_42__* %374, %struct.TYPE_42__* %375)
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %373
  %379 = load i32, i32* @PyExc_ValueError, align 4
  %380 = call i32 @PyErr_SetString(i32 %379, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %381 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %382 = call i32 @Py_DECREF(%struct.TYPE_42__* %381)
  br label %589

383:                                              ; preds = %373
  %384 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %385 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %386 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %387 = call i32 @PyDict_SetItem(%struct.TYPE_42__* %384, %struct.TYPE_42__* %385, %struct.TYPE_42__* %386)
  br label %388

388:                                              ; preds = %383, %369
  br label %389

389:                                              ; preds = %388, %360
  %390 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %391 = call i32 @Py_DECREF(%struct.TYPE_42__* %390)
  %392 = load i32, i32* %28, align 4
  %393 = load i32, i32* @NPY_FAIL, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %389
  br label %589

396:                                              ; preds = %389
  %397 = load %struct.TYPE_42__*, %struct.TYPE_42__** %30, align 8
  %398 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %397, i32 0, i32 2
  %399 = load i8, i8* %398, align 8
  %400 = sext i8 %399 to i32
  %401 = load i8, i8* @NPY_FROM_FIELDS, align 1
  %402 = sext i8 %401 to i32
  %403 = and i32 %400, %402
  %404 = load i8, i8* %19, align 1
  %405 = sext i8 %404 to i32
  %406 = or i32 %405, %403
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %19, align 1
  br label %408

408:                                              ; preds = %396
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %15, align 4
  br label %132

411:                                              ; preds = %132
  %412 = load i32, i32* @NPY_VOID, align 4
  %413 = call %struct.TYPE_42__* @PyArray_DescrNewFromType(i32 %412)
  store %struct.TYPE_42__* %413, %struct.TYPE_42__** %6, align 8
  %414 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %415 = icmp eq %struct.TYPE_42__* %414, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %411
  br label %589

417:                                              ; preds = %411
  %418 = load i32, i32* %18, align 4
  %419 = icmp sgt i32 %418, 1
  br i1 %419, label %420, label %424

420:                                              ; preds = %417
  %421 = load i32, i32* %16, align 4
  %422 = load i32, i32* %18, align 4
  %423 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %421, i32 %422)
  store i32 %423, i32* %16, align 4
  br label %424

424:                                              ; preds = %420, %417
  %425 = load i32, i32* %5, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i32, i32* %18, align 4
  %429 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %429, i32 0, i32 0
  store i32 %428, i32* %430, align 8
  br label %431

431:                                              ; preds = %427, %424
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %434, i32 0, i32 1
  store i64 %433, i64* %435, align 8
  %436 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %437 = call i32 @PyTuple_Check(%struct.TYPE_42__* %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %450, label %439

439:                                              ; preds = %431
  %440 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %441 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %442 = call i32 @PySequence_Tuple(%struct.TYPE_42__* %441)
  %443 = call i32 @Py_SETREF(%struct.TYPE_42__* %440, i32 %442)
  %444 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %445 = icmp eq %struct.TYPE_42__* %444, null
  br i1 %445, label %446, label %449

446:                                              ; preds = %439
  %447 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %448 = call i32 @Py_DECREF(%struct.TYPE_42__* %447)
  br label %589

449:                                              ; preds = %439
  br label %450

450:                                              ; preds = %449, %431
  %451 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 5
  store %struct.TYPE_42__* %451, %struct.TYPE_42__** %453, align 8
  %454 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %455 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %455, i32 0, i32 4
  store %struct.TYPE_42__* %454, %struct.TYPE_42__** %456, align 8
  %457 = load i8, i8* %19, align 1
  %458 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %458, i32 0, i32 2
  store i8 %457, i8* %459, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %8, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %7, align 8
  %460 = load i32, i32* %20, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %450
  %463 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %464 = call i64 @PyDataType_REFCHK(%struct.TYPE_42__* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %462
  %467 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %468 = call i64 @validate_object_field_overlap(%struct.TYPE_42__* %467)
  %469 = icmp slt i64 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %466
  %471 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %472 = call i32 @Py_DECREF(%struct.TYPE_42__* %471)
  br label %589

473:                                              ; preds = %466
  br label %474

474:                                              ; preds = %473, %462, %450
  %475 = load i32, i32* %5, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %486

477:                                              ; preds = %474
  %478 = load i8, i8* @NPY_ALIGNED_STRUCT, align 1
  %479 = sext i8 %478 to i32
  %480 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %480, i32 0, i32 2
  %482 = load i8, i8* %481, align 8
  %483 = sext i8 %482 to i32
  %484 = or i32 %483, %479
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %481, align 8
  br label %486

486:                                              ; preds = %477, %474
  %487 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %488 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %487, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_42__* %488, %struct.TYPE_42__** %13, align 8
  %489 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %490 = icmp eq %struct.TYPE_42__* %489, null
  br i1 %490, label %491, label %493

491:                                              ; preds = %486
  %492 = call i32 (...) @PyErr_Clear()
  br label %546

493:                                              ; preds = %486
  %494 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %495 = call i64 @PyArray_PyIntAsInt(%struct.TYPE_42__* %494)
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %17, align 4
  %497 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %498 = call i32 @Py_DECREF(%struct.TYPE_42__* %497)
  %499 = load i32, i32* %17, align 4
  %500 = call i64 @error_converting(i32 %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %493
  %503 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %504 = call i32 @Py_DECREF(%struct.TYPE_42__* %503)
  br label %589

505:                                              ; preds = %493
  %506 = load i32, i32* %17, align 4
  %507 = sext i32 %506 to i64
  %508 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp slt i64 %507, %510
  br i1 %511, label %512, label %521

512:                                              ; preds = %505
  %513 = load i32, i32* @PyExc_ValueError, align 4
  %514 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %514, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = load i32, i32* %17, align 4
  %518 = call i32 (i32, i8*, i64, ...) @PyErr_Format(i32 %513, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.13, i64 0, i64 0), i64 %516, i32 %517)
  %519 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %520 = call i32 @Py_DECREF(%struct.TYPE_42__* %519)
  br label %589

521:                                              ; preds = %505
  %522 = load i32, i32* %5, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %541

524:                                              ; preds = %521
  %525 = load i32, i32* %17, align 4
  %526 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = srem i32 %525, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %541

531:                                              ; preds = %524
  %532 = load i32, i32* @PyExc_ValueError, align 4
  %533 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = sext i32 %535 to i64
  %537 = load i32, i32* %17, align 4
  %538 = call i32 (i32, i8*, i64, ...) @PyErr_Format(i32 %532, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.14, i64 0, i64 0), i64 %536, i32 %537)
  %539 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %540 = call i32 @Py_DECREF(%struct.TYPE_42__* %539)
  br label %589

541:                                              ; preds = %524, %521
  %542 = load i32, i32* %17, align 4
  %543 = sext i32 %542 to i64
  %544 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %544, i32 0, i32 1
  store i64 %543, i64* %545, align 8
  br label %546

546:                                              ; preds = %541, %491
  %547 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %548 = call %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__* %547, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_42__* %548, %struct.TYPE_42__** %12, align 8
  %549 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %550 = icmp eq %struct.TYPE_42__* %549, null
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = call i32 (...) @PyErr_Clear()
  br label %577

553:                                              ; preds = %546
  %554 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %554, i32 0, i32 3
  %556 = load %struct.TYPE_42__*, %struct.TYPE_42__** %555, align 8
  %557 = icmp eq %struct.TYPE_42__* %556, null
  br i1 %557, label %558, label %562

558:                                              ; preds = %553
  %559 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %560 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %561 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %560, i32 0, i32 3
  store %struct.TYPE_42__* %559, %struct.TYPE_42__** %561, align 8
  br label %576

562:                                              ; preds = %553
  %563 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %563, i32 0, i32 3
  %565 = load %struct.TYPE_42__*, %struct.TYPE_42__** %564, align 8
  %566 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %567 = call i32 @PyDict_Merge(%struct.TYPE_42__* %565, %struct.TYPE_42__* %566, i32 0)
  store i32 %567, i32* %32, align 4
  %568 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %569 = call i32 @Py_DECREF(%struct.TYPE_42__* %568)
  %570 = load i32, i32* %32, align 4
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %562
  %573 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %574 = call i32 @Py_DECREF(%struct.TYPE_42__* %573)
  br label %589

575:                                              ; preds = %562
  br label %576

576:                                              ; preds = %575, %558
  br label %577

577:                                              ; preds = %576, %551
  %578 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %579 = call i32 @Py_XDECREF(%struct.TYPE_42__* %578)
  %580 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %581 = call i32 @Py_XDECREF(%struct.TYPE_42__* %580)
  %582 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %583 = call i32 @Py_XDECREF(%struct.TYPE_42__* %582)
  %584 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %585 = call i32 @Py_XDECREF(%struct.TYPE_42__* %584)
  %586 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %587 = call i32 @Py_XDECREF(%struct.TYPE_42__* %586)
  %588 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  store %struct.TYPE_42__* %588, %struct.TYPE_42__** %3, align 8
  br label %600

589:                                              ; preds = %572, %531, %512, %502, %470, %446, %416, %395, %378, %355, %345, %338, %318, %236, %224, %212, %185, %165, %122, %103
  %590 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %591 = call i32 @Py_XDECREF(%struct.TYPE_42__* %590)
  %592 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %593 = call i32 @Py_XDECREF(%struct.TYPE_42__* %592)
  %594 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %595 = call i32 @Py_XDECREF(%struct.TYPE_42__* %594)
  %596 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %597 = call i32 @Py_XDECREF(%struct.TYPE_42__* %596)
  %598 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %599 = call i32 @Py_XDECREF(%struct.TYPE_42__* %598)
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %3, align 8
  br label %600

600:                                              ; preds = %589, %577, %57, %45, %37
  %601 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  ret %struct.TYPE_42__* %601
}

declare dso_local %struct.TYPE_42__* @PyDict_New(...) #1

declare dso_local i64 @PyErr_NoMemory(...) #1

declare dso_local %struct.TYPE_42__* @PyMapping_GetItemString(%struct.TYPE_42__*, i8*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_42__*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local %struct.TYPE_42__* @_use_fields_dict(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @PyObject_Length(%struct.TYPE_42__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local %struct.TYPE_42__* @PyInt_FromLong(i32) #1

declare dso_local %struct.TYPE_42__* @PyObject_GetItem(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyTuple_New(i32) #1

declare dso_local i32 @PyArray_DescrAlignConverter(%struct.TYPE_42__*, %struct.TYPE_42__**) #1

declare dso_local i32 @PyArray_DescrConverter(%struct.TYPE_42__*, %struct.TYPE_42__**) #1

declare dso_local i32 @PyTuple_SET_ITEM(%struct.TYPE_42__*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @PyArray_MAX(i32, i32) #1

declare dso_local i64 @PyArray_PyIntAsInt(%struct.TYPE_42__*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i64, ...) #1

declare dso_local i32 @NPY_NEXT_ALIGNED_OFFSET(i32, i32) #1

declare dso_local i64 @PyBaseString_Check(%struct.TYPE_42__*) #1

declare dso_local i32* @PyDict_GetItem(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @PyDict_SetItem(%struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyArray_DescrNewFromType(i32) #1

declare dso_local i32 @PyTuple_Check(%struct.TYPE_42__*) #1

declare dso_local i32 @Py_SETREF(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @PySequence_Tuple(%struct.TYPE_42__*) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_42__*) #1

declare dso_local i64 @validate_object_field_overlap(%struct.TYPE_42__*) #1

declare dso_local i32 @PyDict_Merge(%struct.TYPE_42__*, %struct.TYPE_42__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
