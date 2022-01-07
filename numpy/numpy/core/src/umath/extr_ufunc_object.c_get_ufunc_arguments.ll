; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_get_ufunc_arguments.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_get_ufunc_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid number of arguments\00", align 1
@Generic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OOi\00", align 1
@get_ufunc_arguments.kwnames = internal global [13 x i32*] zeroinitializer, align 16
@npy_um_str_out = common dso_local global i32* null, align 8
@npy_um_str_where = common dso_local global i32* null, align 8
@npy_um_str_axes = common dso_local global i32* null, align 8
@npy_um_str_axis = common dso_local global i32* null, align 8
@npy_um_str_keepdims = common dso_local global i32* null, align 8
@npy_um_str_casting = common dso_local global i32* null, align 8
@npy_um_str_order = common dso_local global i32* null, align 8
@npy_um_str_dtype = common dso_local global i32* null, align 8
@npy_um_str_subok = common dso_local global i32* null, align 8
@npy_um_str_signature = common dso_local global i32* null, align 8
@npy_um_str_sig = common dso_local global i32* null, align 8
@npy_um_str_extobj = common dso_local global i32* null, align 8
@_borrowed_reference = common dso_local global i32 0, align 4
@_wheremask_converter = common dso_local global i32 0, align 4
@_new_reference = common dso_local global i32 0, align 4
@_keepdims_converter = common dso_local global i32 0, align 4
@PyArray_CastingConverter = common dso_local global i32 0, align 4
@PyArray_OrderConverter = common dso_local global i32 0, align 4
@PyArray_DescrConverter2 = common dso_local global i32 0, align 4
@_subok_converter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"cannot specify 'out' as both a positional and keyword argument\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"The 'out' tuple must have exactly one entry per ufunc output\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"'out' must be a tuple of arrays\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"'out' must be an array or a tuple with a single array\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot specify both 'axis' and 'axes'\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"cannot specify both 'sig' and 'signature'\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"cannot specify both 'signature' and 'dtype'\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"(N)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32**, i32*, i32*, i32**, i32**, i32*, i32**, i32**, i32**, i32*)* @get_ufunc_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ufunc_arguments(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32** %3, i32* %4, i32* %5, i32** %6, i32** %7, i32* %8, i32** %9, i32** %10, i32** %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32** %3, i32*** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32** %6, i32*** %21, align 8
  store i32** %7, i32*** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32** %9, i32*** %24, align 8
  store i32** %10, i32*** %25, align 8
  store i32** %11, i32*** %26, align 8
  store i32* %12, i32** %27, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %30, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %31, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %32, align 4
  store i32* null, i32** %35, align 8
  store i32 0, i32* %28, align 4
  br label %49

49:                                               ; preds = %58, %13
  %50 = load i32, i32* %28, align 4
  %51 = load i32, i32* %32, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32**, i32*** %18, align 8
  %55 = load i32, i32* %28, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %28, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %28, align 4
  br label %49

61:                                               ; preds = %49
  %62 = load i32**, i32*** %21, align 8
  store i32* null, i32** %62, align 8
  %63 = load i32**, i32*** %22, align 8
  store i32* null, i32** %63, align 8
  %64 = load i32**, i32*** %25, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32**, i32*** %25, align 8
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32**, i32*** %26, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32**, i32*** %26, align 8
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32**, i32*** %24, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32**, i32*** %24, align 8
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @PyTuple_Size(i32* %79)
  store i32 %80, i32* %29, align 4
  %81 = load i32, i32* %29, align 4
  %82 = load i32, i32* %30, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %29, align 4
  %86 = load i32, i32* %32, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %78
  %89 = load i32, i32* @PyExc_ValueError, align 4
  %90 = call i32 @PyErr_SetString(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %381

91:                                               ; preds = %84
  store i32 0, i32* %28, align 4
  br label %92

92:                                               ; preds = %147, %91
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* %30, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %92
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* %28, align 4
  %99 = call i32* @PyTuple_GET_ITEM(i32* %97, i32 %98)
  store i32* %99, i32** %33, align 8
  %100 = load i32*, i32** %33, align 8
  %101 = call i64 @PyArray_Check(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32*, i32** %33, align 8
  store i32* %104, i32** %36, align 8
  %105 = load i32*, i32** %36, align 8
  %106 = call i64 @PyArray_FromArray(i32* %105, i32* null, i32 0)
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32**, i32*** %18, align 8
  %109 = load i32, i32* %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %107, i32** %111, align 8
  br label %138

112:                                              ; preds = %96
  %113 = load i32*, i32** %33, align 8
  %114 = load i32, i32* @Generic, align 4
  %115 = call i32 @PyArray_IsScalar(i32* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %28, align 4
  %121 = call i32* (i8*, %struct.TYPE_5__*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %118, i32* %119, i32 %120)
  store i32* %121, i32** %34, align 8
  %122 = load i32*, i32** %34, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %336

125:                                              ; preds = %117
  br label %127

126:                                              ; preds = %112
  store i32* null, i32** %34, align 8
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32*, i32** %33, align 8
  %129 = load i32*, i32** %34, align 8
  %130 = call i64 @PyArray_FromAny(i32* %128, i32* null, i32 0, i32 0, i32 0, i32* %129)
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32**, i32*** %18, align 8
  %133 = load i32, i32* %28, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  store i32* %131, i32** %135, align 8
  %136 = load i32*, i32** %34, align 8
  %137 = call i32 @Py_XDECREF(i32* %136)
  br label %138

138:                                              ; preds = %127, %103
  %139 = load i32**, i32*** %18, align 8
  %140 = load i32, i32* %28, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %336

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %28, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %28, align 4
  br label %92

150:                                              ; preds = %92
  %151 = load i32, i32* %30, align 4
  store i32 %151, i32* %28, align 4
  br label %152

152:                                              ; preds = %169, %150
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %29, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i32*, i32** %16, align 8
  %158 = load i32, i32* %28, align 4
  %159 = call i32* @PyTuple_GET_ITEM(i32* %157, i32 %158)
  store i32* %159, i32** %33, align 8
  %160 = load i32*, i32** %33, align 8
  %161 = load i32**, i32*** %18, align 8
  %162 = load i32, i32* %28, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = call i64 @_set_out_array(i32* %160, i32** %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %336

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %28, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %28, align 4
  br label %152

172:                                              ; preds = %152
  %173 = load i32*, i32** %17, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %335

175:                                              ; preds = %172
  store i32* null, i32** %37, align 8
  store i32* null, i32** %38, align 8
  %176 = load i32*, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 0), align 16
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = load i32*, i32** @npy_um_str_out, align 8
  store i32* %179, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 0), align 16
  %180 = load i32*, i32** @npy_um_str_where, align 8
  store i32* %180, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 1), align 8
  %181 = load i32*, i32** @npy_um_str_axes, align 8
  store i32* %181, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 2), align 16
  %182 = load i32*, i32** @npy_um_str_axis, align 8
  store i32* %182, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 3), align 8
  %183 = load i32*, i32** @npy_um_str_keepdims, align 8
  store i32* %183, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 4), align 16
  %184 = load i32*, i32** @npy_um_str_casting, align 8
  store i32* %184, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 5), align 8
  %185 = load i32*, i32** @npy_um_str_order, align 8
  store i32* %185, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 6), align 16
  %186 = load i32*, i32** @npy_um_str_dtype, align 8
  store i32* %186, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 7), align 8
  %187 = load i32*, i32** @npy_um_str_subok, align 8
  store i32* %187, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 8), align 16
  %188 = load i32*, i32** @npy_um_str_signature, align 8
  store i32* %188, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 9), align 8
  %189 = load i32*, i32** @npy_um_str_sig, align 8
  store i32* %189, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 10), align 16
  %190 = load i32*, i32** @npy_um_str_extobj, align 8
  store i32* %190, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 11), align 8
  store i32* null, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 12), align 16
  br label %191

191:                                              ; preds = %178, %175
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* @_borrowed_reference, align 4
  %195 = load i32, i32* @_wheremask_converter, align 4
  %196 = load i32**, i32*** %24, align 8
  %197 = load i32, i32* @_new_reference, align 4
  %198 = load i32**, i32*** %25, align 8
  %199 = load i32, i32* @_new_reference, align 4
  %200 = load i32**, i32*** %26, align 8
  %201 = load i32, i32* @_keepdims_converter, align 4
  %202 = load i32*, i32** %27, align 8
  %203 = load i32, i32* @PyArray_CastingConverter, align 4
  %204 = load i32*, i32** %20, align 8
  %205 = load i32, i32* @PyArray_OrderConverter, align 4
  %206 = load i32*, i32** %19, align 8
  %207 = load i32, i32* @PyArray_DescrConverter2, align 4
  %208 = load i32, i32* @_subok_converter, align 4
  %209 = load i32*, i32** %23, align 8
  %210 = load i32, i32* @_new_reference, align 4
  %211 = load i32**, i32*** %22, align 8
  %212 = load i32, i32* @_borrowed_reference, align 4
  %213 = load i32, i32* @_new_reference, align 4
  %214 = load i32**, i32*** %21, align 8
  %215 = call i64 @parse_ufunc_keywords(%struct.TYPE_5__* %192, i32* %193, i32** getelementptr inbounds ([13 x i32*], [13 x i32*]* @get_ufunc_arguments.kwnames, i64 0, i64 0), i32 %194, i32** %37, i32 %195, i32** %196, i32 %197, i32** %198, i32 %199, i32** %200, i32 %201, i32* %202, i32 %203, i32* %204, i32 %205, i32* %206, i32 %207, i32** %35, i32 %208, i32* %209, i32 %210, i32** %211, i32 %212, i32** %38, i32 %213, i32** %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %191
  br label %336

218:                                              ; preds = %191
  %219 = load i32*, i32** %37, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %287

221:                                              ; preds = %218
  %222 = load i32, i32* %29, align 4
  %223 = load i32, i32* %30, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* @PyExc_ValueError, align 4
  %227 = call i32 @PyErr_SetString(i32 %226, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %336

228:                                              ; preds = %221
  %229 = load i32*, i32** %37, align 8
  %230 = call i64 @PyTuple_CheckExact(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %265

232:                                              ; preds = %228
  %233 = load i32*, i32** %37, align 8
  %234 = call i32 @PyTuple_GET_SIZE(i32* %233)
  %235 = load i32, i32* %31, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32, i32* @PyExc_ValueError, align 4
  %239 = call i32 @PyErr_SetString(i32 %238, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %336

240:                                              ; preds = %232
  store i32 0, i32* %28, align 4
  br label %241

241:                                              ; preds = %261, %240
  %242 = load i32, i32* %28, align 4
  %243 = load i32, i32* %31, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %241
  %246 = load i32*, i32** %37, align 8
  %247 = load i32, i32* %28, align 4
  %248 = call i32* @PyTuple_GET_ITEM(i32* %246, i32 %247)
  store i32* %248, i32** %39, align 8
  %249 = load i32*, i32** %39, align 8
  %250 = load i32**, i32*** %18, align 8
  %251 = load i32, i32* %30, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32, i32* %28, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = call i64 @_set_out_array(i32* %249, i32** %256)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %245
  br label %336

260:                                              ; preds = %245
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %28, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %28, align 4
  br label %241

264:                                              ; preds = %241
  br label %286

265:                                              ; preds = %228
  %266 = load i32, i32* %31, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = load i32*, i32** %37, align 8
  %270 = load i32**, i32*** %18, align 8
  %271 = load i32, i32* %30, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32*, i32** %270, i64 %272
  %274 = call i64 @_set_out_array(i32* %269, i32** %273)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  br label %336

277:                                              ; preds = %268
  br label %285

278:                                              ; preds = %265
  %279 = load i32, i32* @PyExc_TypeError, align 4
  %280 = load i32, i32* %31, align 4
  %281 = icmp sgt i32 %280, 1
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0)
  %284 = call i32 @PyErr_SetString(i32 %279, i8* %283)
  br label %336

285:                                              ; preds = %277
  br label %286

286:                                              ; preds = %285, %264
  br label %287

287:                                              ; preds = %286, %218
  %288 = load i32**, i32*** %25, align 8
  %289 = icmp ne i32** %288, null
  br i1 %289, label %290, label %304

290:                                              ; preds = %287
  %291 = load i32**, i32*** %26, align 8
  %292 = icmp ne i32** %291, null
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load i32**, i32*** %25, align 8
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load i32**, i32*** %26, align 8
  %299 = load i32*, i32** %298, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load i32, i32* @PyExc_TypeError, align 4
  %303 = call i32 @PyErr_SetString(i32 %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %336

304:                                              ; preds = %297, %293, %290, %287
  %305 = load i32*, i32** %38, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %319

307:                                              ; preds = %304
  %308 = load i32**, i32*** %22, align 8
  %309 = load i32*, i32** %308, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i32, i32* @PyExc_ValueError, align 4
  %313 = call i32 @PyErr_SetString(i32 %312, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %336

314:                                              ; preds = %307
  %315 = load i32*, i32** %38, align 8
  %316 = call i32 @Py_INCREF(i32* %315)
  %317 = load i32*, i32** %38, align 8
  %318 = load i32**, i32*** %22, align 8
  store i32* %317, i32** %318, align 8
  br label %319

319:                                              ; preds = %314, %304
  %320 = load i32*, i32** %35, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %334

322:                                              ; preds = %319
  %323 = load i32**, i32*** %22, align 8
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i32, i32* @PyExc_RuntimeError, align 4
  %328 = call i32 @PyErr_SetString(i32 %327, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %336

329:                                              ; preds = %322
  %330 = load i32*, i32** %35, align 8
  %331 = bitcast i32* %330 to %struct.TYPE_5__*
  %332 = call i32* (i8*, %struct.TYPE_5__*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_5__* %331)
  %333 = load i32**, i32*** %22, align 8
  store i32* %332, i32** %333, align 8
  br label %334

334:                                              ; preds = %329, %319
  br label %335

335:                                              ; preds = %334, %172
  store i32 0, i32* %14, align 4
  br label %381

336:                                              ; preds = %326, %311, %301, %278, %276, %259, %237, %225, %217, %167, %145, %124
  %337 = load i32*, i32** %35, align 8
  %338 = call i32 @Py_XDECREF(i32* %337)
  %339 = load i32**, i32*** %22, align 8
  %340 = load i32*, i32** %339, align 8
  %341 = call i32 @Py_XDECREF(i32* %340)
  %342 = load i32**, i32*** %21, align 8
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @Py_XDECREF(i32* %343)
  %345 = load i32**, i32*** %24, align 8
  %346 = icmp ne i32** %345, null
  br i1 %346, label %347, label %351

347:                                              ; preds = %336
  %348 = load i32**, i32*** %24, align 8
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @Py_XDECREF(i32* %349)
  br label %351

351:                                              ; preds = %347, %336
  %352 = load i32**, i32*** %25, align 8
  %353 = icmp ne i32** %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load i32**, i32*** %25, align 8
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @Py_XDECREF(i32* %356)
  br label %358

358:                                              ; preds = %354, %351
  %359 = load i32**, i32*** %26, align 8
  %360 = icmp ne i32** %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = load i32**, i32*** %26, align 8
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @Py_XDECREF(i32* %363)
  br label %365

365:                                              ; preds = %361, %358
  store i32 0, i32* %28, align 4
  br label %366

366:                                              ; preds = %377, %365
  %367 = load i32, i32* %28, align 4
  %368 = load i32, i32* %32, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = load i32**, i32*** %18, align 8
  %372 = load i32, i32* %28, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %371, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = call i32 @Py_XDECREF(i32* %375)
  br label %377

377:                                              ; preds = %370
  %378 = load i32, i32* %28, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %28, align 4
  br label %366

380:                                              ; preds = %366
  store i32 -1, i32* %14, align 4
  br label %381

381:                                              ; preds = %380, %335, %88
  %382 = load i32, i32* %14, align 4
  ret i32 %382
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i64 @PyArray_FromArray(i32*, i32*, i32) #1

declare dso_local i32 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32* @Py_BuildValue(i8*, %struct.TYPE_5__*, ...) #1

declare dso_local i64 @PyArray_FromAny(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @_set_out_array(i32*, i32**) #1

declare dso_local i64 @parse_ufunc_keywords(%struct.TYPE_5__*, i32*, i32**, i32, i32**, i32, i32**, i32, i32**, i32, i32**, i32, i32*, i32, i32*, i32, i32*, i32, i32**, i32, i32*, i32, i32**, i32, i32**, i32, i32**) #1

declare dso_local i64 @PyTuple_CheckExact(i32*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
