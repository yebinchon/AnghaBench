; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_init.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32* }

@npyiter_init.kwlist = internal global [10 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"op_flags\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"op_dtypes\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"casting\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"op_axes\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"itershape\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"buffersize\00", align 1
@NPY_MAXARGS = common dso_local global i32 0, align 4
@NPY_KEEPORDER = common dso_local global i32 0, align 4
@NPY_SAFE_CASTING = common dso_local global i32 0, align 4
@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Iterator was already initialized\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"O|O&OOO&O&OO&i:nditer\00", align 1
@NpyIter_GlobalFlagsConverter = common dso_local global i32 0, align 4
@npyiter_order_converter = common dso_local global i32 0, align 4
@PyArray_CastingConverter = common dso_local global i32 0, align 4
@PyArray_IntpConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [90 x i8] c"'op_axes' and 'itershape' must have the same number of entries equal to the iterator ndim\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*)* @npyiter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_init(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_7__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* @NPY_MAXARGS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i32*, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* @NPY_KEEPORDER, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* @NPY_SAFE_CASTING, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @NPY_MAXARGS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  %37 = load i32, i32* @NPY_MAXARGS, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32*, i64 %38, align 16
  store i64 %38, i64* %20, align 8
  store i32 -1, i32* %21, align 4
  %40 = load i32, i32* @NPY_MAXARGS, align 4
  %41 = zext i32 %40 to i64
  %42 = load i32, i32* @NPY_MAXDIMS, align 4
  %43 = zext i32 %42 to i64
  %44 = mul nuw i64 %41, %43
  %45 = alloca i32, i64 %44, align 16
  store i64 %41, i64* %22, align 8
  store i64 %43, i64* %23, align 8
  %46 = load i32, i32* @NPY_MAXARGS, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32*, i64 %47, align 16
  store i64 %47, i64* %24, align 8
  %49 = bitcast %struct.TYPE_7__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 32, i1 false)
  store i32 0, i32* %26, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %3
  %55 = load i32, i32* @PyExc_ValueError, align 4
  %56 = call i32 @PyErr_SetString(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %239

57:                                               ; preds = %3
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @NpyIter_GlobalFlagsConverter, align 4
  %61 = load i32, i32* @npyiter_order_converter, align 4
  %62 = load i32, i32* @PyArray_CastingConverter, align 4
  %63 = load i32, i32* @PyArray_IntpConverter, align 4
  %64 = call i32 @PyArg_ParseTupleAndKeywords(i32* %58, i32* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @npyiter_init.kwlist, i64 0, i64 0), i32** %8, i32 %60, i32* %16, i32** %9, i32** %10, i32 %61, i32* %17, i32 %62, i32* %18, i32** %11, i32 %63, %struct.TYPE_7__* %25, i32* %26)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %25)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %239

68:                                               ; preds = %57
  %69 = mul nuw i64 8, %38
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i32** %39, i32 0, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @npyiter_convert_ops(i32* %72, i32* %73, i32** %31, i32* %36, i32* %13)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %218

77:                                               ; preds = %68
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** @Py_None, align 8
  %83 = icmp ne i32* %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @npyiter_convert_dtypes(i32* %85, i32** %39, i32 %86)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %218

90:                                               ; preds = %84, %80, %77
  %91 = load i32*, i32** %11, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** @Py_None, align 8
  %96 = icmp ne i32* %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %110, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %43
  %106 = getelementptr inbounds i32, i32* %45, i64 %105
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %48, i64 %108
  store i32* %106, i32** %109, align 8
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %98

113:                                              ; preds = %98
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @npyiter_convert_op_axes(i32* %114, i32 %115, i32** %48, i32* %21)
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %218

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %93, %90
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i32, i32* %21, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 8, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(i32** %48, i32 0, i32 %133)
  br label %144

135:                                              ; preds = %124
  %136 = load i32, i32* %21, align 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @PyExc_ValueError, align 4
  %142 = call i32 @PyErr_SetString(i32 %141, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0))
  br label %218

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %127
  br label %153

145:                                              ; preds = %120
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %25)
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %149, %145
  br label %153

153:                                              ; preds = %152, %144
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %163

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %161
  %164 = phi i32** [ %48, %161 ], [ null, %162 ]
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %26, align 4
  %168 = call i32* @NpyIter_AdvancedNew(i32 %154, i32** %31, i32 %155, i32 %156, i32 %157, i32* %36, i32** %39, i32 %158, i32** %164, i32* %166, i32 %167)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i32* %168, i32** %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  br label %218

176:                                              ; preds = %163
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = call i64 @npyiter_cache_values(%struct.TYPE_8__* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %218

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i64 @NpyIter_GetIterSize(i32* %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  br label %197

192:                                              ; preds = %181
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %187
  %198 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %25)
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %214, %197
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %31, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @Py_XDECREF(i32* %207)
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %39, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @Py_XDECREF(i32* %212)
  br label %214

214:                                              ; preds = %203
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %199

217:                                              ; preds = %199
  store i32 0, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %239

218:                                              ; preds = %180, %175, %140, %118, %89, %76
  %219 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %25)
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %235, %218
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %31, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @Py_XDECREF(i32* %228)
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %39, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @Py_XDECREF(i32* %233)
  br label %235

235:                                              ; preds = %224
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %12, align 4
  br label %220

238:                                              ; preds = %220
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %239

239:                                              ; preds = %238, %217, %66, %54
  %240 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #3

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32, i32*, i32**, i32**, i32, i32*, i32, i32*, i32**, i32, %struct.TYPE_7__*, i32*) #3

declare dso_local i32 @npy_free_cache_dim_obj(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #3

declare dso_local i32 @memset(i32**, i32, i32) #3

declare dso_local i32 @npyiter_convert_ops(i32*, i32*, i32**, i32*, i32*) #3

declare dso_local i32 @npyiter_convert_dtypes(i32*, i32**, i32) #3

declare dso_local i32 @npyiter_convert_op_axes(i32*, i32, i32**, i32*) #3

declare dso_local i32* @NpyIter_AdvancedNew(i32, i32**, i32, i32, i32, i32*, i32**, i32, i32**, i32*, i32) #3

declare dso_local i64 @npyiter_cache_values(%struct.TYPE_8__*) #3

declare dso_local i64 @NpyIter_GetIterSize(i32*) #3

declare dso_local i32 @Py_XDECREF(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
