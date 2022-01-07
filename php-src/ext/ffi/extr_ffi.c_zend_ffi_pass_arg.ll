; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_pass_arg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_pass_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@ffi_type_float = common dso_local global i32 0, align 4
@ffi_type_double = common dso_local global i32 0, align 4
@ffi_type_uint8 = common dso_local global i32 0, align 4
@ffi_type_sint8 = common dso_local global i32 0, align 4
@ffi_type_uint16 = common dso_local global i32 0, align 4
@ffi_type_sint16 = common dso_local global i32 0, align 4
@ffi_type_uint32 = common dso_local global i32 0, align 4
@ffi_type_sint32 = common dso_local global i32 0, align 4
@ffi_type_uint64 = common dso_local global i32 0, align 4
@ffi_type_sint64 = common dso_local global i32 0, align 4
@ffi_type_pointer = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@ZEND_FFI_TYPE_VOID = common dso_local global i32 0, align 4
@IS_OBJECT = common dso_local global i32 0, align 4
@zend_ffi_cdata_ce = common dso_local global i32 0, align 4
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_UNION = common dso_local global i32 0, align 4
@ZEND_FFI_TYPE_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32**, i8**, i64, i32*)* @zend_ffi_pass_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_pass_arg(i32* %0, %struct.TYPE_16__* %1, i32** %2, i8** %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @ZVAL_DEREF(i32* %25)
  br label %27

27:                                               ; preds = %280, %6
  %28 = load i32, i32* %18, align 4
  switch i32 %28, label %336 [
    i32 139, label %29
    i32 141, label %40
    i32 128, label %50
    i32 133, label %60
    i32 131, label %70
    i32 136, label %80
    i32 130, label %90
    i32 135, label %101
    i32 129, label %111
    i32 134, label %121
    i32 137, label %131
    i32 143, label %247
    i32 142, label %256
    i32 140, label %280
    i32 132, label %285
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %8, align 8
  %31 = call double @zval_get_double(i32* %30)
  store double %31, double* %15, align 8
  %32 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_float, i32** %32, align 8
  %33 = load double, double* %15, align 8
  %34 = fptrunc double %33 to float
  %35 = load i8**, i8*** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to float*
  store float %34, float* %39, align 4
  br label %340

40:                                               ; preds = %27
  %41 = load i32*, i32** %8, align 8
  %42 = call double @zval_get_double(i32* %41)
  store double %42, double* %15, align 8
  %43 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_double, i32** %43, align 8
  %44 = load double, double* %15, align 8
  %45 = load i8**, i8*** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to double*
  store double %44, double* %49, align 8
  br label %340

50:                                               ; preds = %27
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @zval_get_long(i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_uint8, i32** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8**, i8*** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  store i32 %54, i32* %59, align 4
  br label %340

60:                                               ; preds = %27
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @zval_get_long(i32* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_sint8, i32** %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i8**, i8*** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %64, i32* %69, align 4
  br label %340

70:                                               ; preds = %27
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @zval_get_long(i32* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_uint16, i32** %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i8**, i8*** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i32*
  store i32 %74, i32* %79, align 4
  br label %340

80:                                               ; preds = %27
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @zval_get_long(i32* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_sint16, i32** %83, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i8**, i8*** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to i32*
  store i32 %84, i32* %89, align 4
  br label %340

90:                                               ; preds = %27
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @zval_get_long(i32* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_uint32, i32** %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = load i8**, i8*** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast i8* %99 to i64*
  store i64 %95, i64* %100, align 8
  br label %340

101:                                              ; preds = %27
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @zval_get_long(i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_sint32, i32** %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i8**, i8*** %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to i32*
  store i32 %105, i32* %110, align 4
  br label %340

111:                                              ; preds = %27
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @zval_get_long(i32* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_uint64, i32** %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i8**, i8*** %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to i32*
  store i32 %115, i32* %120, align 4
  br label %340

121:                                              ; preds = %27
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @zval_get_long(i32* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_sint64, i32** %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i8**, i8*** %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds i8*, i8** %126, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = bitcast i8* %129 to i32*
  store i32 %125, i32* %130, align 4
  br label %340

131:                                              ; preds = %27
  %132 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_pointer, i32** %132, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @Z_TYPE_P(i32* %133)
  %135 = load i32, i32* @IS_NULL, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i8**, i8*** %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = bitcast i8* %141 to i8**
  store i8* null, i8** %142, align 8
  %143 = load i32, i32* @SUCCESS, align 4
  store i32 %143, i32* %7, align 4
  br label %342

144:                                              ; preds = %131
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @Z_TYPE_P(i32* %145)
  %147 = load i32, i32* @IS_STRING, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %144
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.TYPE_13__* @ZEND_FFI_TYPE(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 142
  br i1 %157, label %168, label %158

158:                                              ; preds = %149
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.TYPE_13__* @ZEND_FFI_TYPE(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ZEND_FFI_TYPE_VOID, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %158, %149
  %169 = load i32*, i32** %8, align 8
  %170 = call i8* @Z_STRVAL_P(i32* %169)
  %171 = load i8**, i8*** %11, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = bitcast i8* %174 to i8**
  store i8* %170, i8** %175, align 8
  %176 = load i32, i32* @SUCCESS, align 4
  store i32 %176, i32* %7, align 4
  br label %342

177:                                              ; preds = %158, %144
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @Z_TYPE_P(i32* %178)
  %180 = load i32, i32* @IS_OBJECT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %238

182:                                              ; preds = %177
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 @Z_OBJCE_P(i32* %183)
  %185 = load i32, i32* @zend_ffi_cdata_ce, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %238

187:                                              ; preds = %182
  %188 = load i32*, i32** %8, align 8
  %189 = call i64 @Z_OBJ_P(i32* %188)
  %190 = inttoptr i64 %189 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %19, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.TYPE_13__* @ZEND_FFI_TYPE(i32 %194)
  %196 = call i32 @zend_ffi_is_compatible_type(%struct.TYPE_16__* %191, %struct.TYPE_13__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %237

198:                                              ; preds = %187
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call %struct.TYPE_13__* @ZEND_FFI_TYPE(i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 137
  br i1 %205, label %206, label %226

206:                                              ; preds = %198
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @zend_ffi_exception_ce, align 4
  %213 = call i32 @zend_throw_error(i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %214 = load i32, i32* @FAILURE, align 4
  store i32 %214, i32* %7, align 4
  br label %342

215:                                              ; preds = %206
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = bitcast i8* %218 to i8**
  %220 = load i8*, i8** %219, align 8
  %221 = load i8**, i8*** %11, align 8
  %222 = load i64, i64* %12, align 8
  %223 = getelementptr inbounds i8*, i8** %221, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = bitcast i8* %224 to i8**
  store i8* %220, i8** %225, align 8
  br label %235

226:                                              ; preds = %198
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load i8**, i8*** %11, align 8
  %231 = load i64, i64* %12, align 8
  %232 = getelementptr inbounds i8*, i8** %230, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = bitcast i8* %233 to i8**
  store i8* %229, i8** %234, align 8
  br label %235

235:                                              ; preds = %226, %215
  %236 = load i32, i32* @SUCCESS, align 4
  store i32 %236, i32* %7, align 4
  br label %342

237:                                              ; preds = %187
  br label %238

238:                                              ; preds = %237, %182, %177
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  %241 = load i32*, i32** %8, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = call i32 @zend_ffi_pass_incompatible(i32* %241, %struct.TYPE_16__* %242, i64 %243, i32* %244)
  %246 = load i32, i32* @FAILURE, align 4
  store i32 %246, i32* %7, align 4
  br label %342

247:                                              ; preds = %27
  %248 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_uint8, i32** %248, align 8
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 @zend_is_true(i32* %249)
  %251 = load i8**, i8*** %11, align 8
  %252 = load i64, i64* %12, align 8
  %253 = getelementptr inbounds i8*, i8** %251, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = bitcast i8* %254 to i32*
  store i32 %250, i32* %255, align 4
  br label %340

256:                                              ; preds = %27
  %257 = load i32*, i32** %8, align 8
  %258 = call i32* @zval_get_tmp_string(i32* %257, i32** %17)
  store i32* %258, i32** %16, align 8
  %259 = load i32**, i32*** %10, align 8
  store i32* @ffi_type_sint8, i32** %259, align 8
  %260 = load i32*, i32** %16, align 8
  %261 = call i8* @ZSTR_VAL(i32* %260)
  %262 = getelementptr inbounds i8, i8* %261, i64 0
  %263 = load i8, i8* %262, align 1
  %264 = load i8**, i8*** %11, align 8
  %265 = load i64, i64* %12, align 8
  %266 = getelementptr inbounds i8*, i8** %264, i64 %265
  %267 = load i8*, i8** %266, align 8
  store i8 %263, i8* %267, align 1
  %268 = load i32*, i32** %16, align 8
  %269 = call i32 @ZSTR_LEN(i32* %268)
  %270 = icmp ne i32 %269, 1
  br i1 %270, label %271, label %277

271:                                              ; preds = %256
  %272 = load i32*, i32** %8, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %274 = load i64, i64* %12, align 8
  %275 = load i32*, i32** %13, align 8
  %276 = call i32 @zend_ffi_pass_incompatible(i32* %272, %struct.TYPE_16__* %273, i64 %274, i32* %275)
  br label %277

277:                                              ; preds = %271, %256
  %278 = load i32*, i32** %17, align 8
  %279 = call i32 @zend_tmp_string_release(i32* %278)
  br label %340

280:                                              ; preds = %27
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %18, align 4
  br label %27

285:                                              ; preds = %27
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ZEND_FFI_ATTR_UNION, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %329, label %292

292:                                              ; preds = %285
  %293 = load i32*, i32** %8, align 8
  %294 = call i32 @Z_TYPE_P(i32* %293)
  %295 = load i32, i32* @IS_OBJECT, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %329

297:                                              ; preds = %292
  %298 = load i32*, i32** %8, align 8
  %299 = call i32 @Z_OBJCE_P(i32* %298)
  %300 = load i32, i32* @zend_ffi_cdata_ce, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %329

302:                                              ; preds = %297
  %303 = load i32*, i32** %8, align 8
  %304 = call i64 @Z_OBJ_P(i32* %303)
  %305 = inttoptr i64 %304 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %305, %struct.TYPE_17__** %20, align 8
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = call %struct.TYPE_13__* @ZEND_FFI_TYPE(i32 %309)
  %311 = call i32 @zend_ffi_is_compatible_type(%struct.TYPE_16__* %306, %struct.TYPE_13__* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %302
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %315 = call i32* @zend_ffi_make_fake_struct_type(%struct.TYPE_16__* %314)
  store i32* %315, i32** %21, align 8
  %316 = load i32*, i32** %21, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %327

318:                                              ; preds = %313
  %319 = load i32*, i32** %21, align 8
  %320 = load i32**, i32*** %10, align 8
  store i32* %319, i32** %320, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = load i8**, i8*** %11, align 8
  %325 = load i64, i64* %12, align 8
  %326 = getelementptr inbounds i8*, i8** %324, i64 %325
  store i8* %323, i8** %326, align 8
  br label %340

327:                                              ; preds = %313
  br label %328

328:                                              ; preds = %327, %302
  br label %329

329:                                              ; preds = %328, %297, %292, %285
  %330 = load i32*, i32** %8, align 8
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %332 = load i64, i64* %12, align 8
  %333 = load i32*, i32** %13, align 8
  %334 = call i32 @zend_ffi_pass_incompatible(i32* %330, %struct.TYPE_16__* %331, i64 %332, i32* %333)
  %335 = load i32, i32* @FAILURE, align 4
  store i32 %335, i32* %7, align 4
  br label %342

336:                                              ; preds = %27
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %338 = call i32 @zend_ffi_pass_unsupported(%struct.TYPE_16__* %337)
  %339 = load i32, i32* @FAILURE, align 4
  store i32 %339, i32* %7, align 4
  br label %342

340:                                              ; preds = %318, %277, %247, %121, %111, %101, %90, %80, %70, %60, %50, %40, %29
  %341 = load i32, i32* @SUCCESS, align 4
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %340, %336, %329, %240, %235, %211, %168, %137
  %343 = load i32, i32* %7, align 4
  ret i32 %343
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local double @zval_get_double(i32*) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local %struct.TYPE_13__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local i32 @zend_ffi_is_compatible_type(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @zend_throw_error(i32, i8*) #1

declare dso_local i32 @zend_ffi_pass_incompatible(i32*, %struct.TYPE_16__*, i64, i32*) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

declare dso_local i32* @zend_ffi_make_fake_struct_type(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ffi_pass_unsupported(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
