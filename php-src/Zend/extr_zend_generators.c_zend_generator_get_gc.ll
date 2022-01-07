; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_zend_generator_get_gc.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_zend_generator_get_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, i32*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }

@func = common dso_local global i32 0, align 4
@ZEND_CALL_HAS_SYMBOL_TABLE = common dso_local global i32 0, align 4
@ZEND_CALL_FREE_EXTRA_ARGS = common dso_local global i32 0, align 4
@ZEND_CALL_RELEASE_THIS = common dso_local global i32 0, align 4
@ZEND_CALL_CLOSURE = common dso_local global i32 0, align 4
@ZEND_LIVE_MASK = common dso_local global i64 0, align 8
@ZEND_LIVE_TMPVAR = common dso_local global i64 0, align 8
@ZEND_LIVE_LOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32*)* @zend_generator_get_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_generator_get_gc(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 6
  %34 = load i32**, i32*** %6, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %7, align 8
  store i32 3, i32* %35, align 4
  store i32* null, i32** %4, align 8
  br label %289

36:                                               ; preds = %3
  %37 = load i32, i32* @func, align 4
  %38 = call %struct.TYPE_12__* @EX(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %10, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = call i64 @calc_gc_buffer_size(%struct.TYPE_16__* %40)
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32* @safe_erealloc(i32* %50, i32 4, i64 %51, i32 0)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 7
  store i32* %52, i32** %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %36
  %59 = load i64, i64* %12, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32**, i32*** %6, align 8
  store i32* %64, i32** %65, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  %68 = ptrtoint i32* %66 to i32
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 6
  %71 = call i32 @ZVAL_COPY_VALUE(i32 %68, i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  %74 = ptrtoint i32* %72 to i32
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = call i32 @ZVAL_COPY_VALUE(i32 %74, i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  %80 = ptrtoint i32* %78 to i32
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = call i32 @ZVAL_COPY_VALUE(i32 %80, i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  %86 = ptrtoint i32* %84 to i32
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = call i32 @ZVAL_COPY_VALUE(i32 %86, i32* %88)
  %90 = call i32 (...) @EX_CALL_INFO()
  %91 = load i32, i32* @ZEND_CALL_HAS_SYMBOL_TABLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %58
  %95 = load i32, i32* @func, align 4
  %96 = call %struct.TYPE_12__* @EX(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %100

100:                                              ; preds = %111, %94
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %11, align 8
  %107 = ptrtoint i32* %105 to i32
  %108 = load i64, i64* %13, align 8
  %109 = call i32* @EX_VAR_NUM(i64 %108)
  %110 = call i32 @ZVAL_COPY_VALUE(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %13, align 8
  br label %100

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %58
  %116 = call i32 (...) @EX_CALL_INFO()
  %117 = load i32, i32* @ZEND_CALL_FREE_EXTRA_ARGS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %115
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i32* @EX_VAR_NUM(i64 %127)
  store i32* %128, i32** %15, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 (...) @EX_NUM_ARGS()
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %129, i64 %135
  store i32* %136, i32** %16, align 8
  br label %137

137:                                              ; preds = %141, %120
  %138 = load i32*, i32** %15, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = icmp ne i32* %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %11, align 8
  %144 = ptrtoint i32* %142 to i32
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %15, align 8
  %147 = call i32 @ZVAL_COPY_VALUE(i32 %144, i32* %145)
  br label %137

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %115
  %150 = call i32 (...) @EX_CALL_INFO()
  %151 = load i32, i32* @ZEND_CALL_RELEASE_THIS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %11, align 8
  %157 = ptrtoint i32* %155 to i32
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32* @Z_OBJ(i32 %160)
  %162 = call i32 @ZVAL_OBJ(i32 %157, i32* %161)
  br label %163

163:                                              ; preds = %154, %149
  %164 = call i32 (...) @EX_CALL_INFO()
  %165 = load i32, i32* @ZEND_CALL_CLOSURE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32*, i32** %11, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %11, align 8
  %171 = ptrtoint i32* %169 to i32
  %172 = load i32, i32* @func, align 4
  %173 = call %struct.TYPE_12__* @EX(i32 %172)
  %174 = call i32* @ZEND_CLOSURE_OBJECT(%struct.TYPE_12__* %173)
  %175 = call i32 @ZVAL_OBJ(i32 %171, i32* %174)
  br label %176

176:                                              ; preds = %168, %163
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %251

184:                                              ; preds = %176
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = sub nsw i64 %191, 1
  store i64 %192, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %193

193:                                              ; preds = %247, %184
  %194 = load i64, i64* %17, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %194, %197
  br i1 %198, label %199, label %250

199:                                              ; preds = %193
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = load i64, i64* %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %203
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %19, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %18, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %250

211:                                              ; preds = %199
  %212 = load i64, i64* %18, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %211
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ZEND_LIVE_MASK, align 8
  %222 = and i64 %220, %221
  store i64 %222, i64* %20, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ZEND_LIVE_MASK, align 8
  %227 = xor i64 %226, -1
  %228 = and i64 %225, %227
  store i64 %228, i64* %21, align 8
  %229 = load i64, i64* %21, align 8
  %230 = call i32* @EX_VAR(i64 %229)
  store i32* %230, i32** %22, align 8
  %231 = load i64, i64* %20, align 8
  %232 = load i64, i64* @ZEND_LIVE_TMPVAR, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %217
  %235 = load i64, i64* %20, align 8
  %236 = load i64, i64* @ZEND_LIVE_LOOP, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234, %217
  %239 = load i32*, i32** %11, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %11, align 8
  %241 = ptrtoint i32* %239 to i32
  %242 = load i32*, i32** %22, align 8
  %243 = call i32 @ZVAL_COPY_VALUE(i32 %241, i32* %242)
  br label %244

244:                                              ; preds = %238, %234
  br label %245

245:                                              ; preds = %244, %211
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %17, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %17, align 8
  br label %193

250:                                              ; preds = %210, %193
  br label %251

251:                                              ; preds = %250, %176
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %279

257:                                              ; preds = %251
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  store %struct.TYPE_16__* %262, %struct.TYPE_16__** %23, align 8
  br label %263

263:                                              ; preds = %267, %257
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %266 = icmp ne %struct.TYPE_16__* %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %263
  %268 = load i32*, i32** %11, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %11, align 8
  %270 = ptrtoint i32* %268 to i32
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = call i32 @ZVAL_OBJ(i32 %270, i32* %272)
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %277 = call %struct.TYPE_16__* @zend_generator_get_child(%struct.TYPE_18__* %275, %struct.TYPE_16__* %276)
  store %struct.TYPE_16__* %277, %struct.TYPE_16__** %23, align 8
  br label %263

278:                                              ; preds = %263
  br label %279

279:                                              ; preds = %278, %251
  %280 = call i32 (...) @EX_CALL_INFO()
  %281 = load i32, i32* @ZEND_CALL_HAS_SYMBOL_TABLE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  store i32* %287, i32** %4, align 8
  br label %289

288:                                              ; preds = %279
  store i32* null, i32** %4, align 8
  br label %289

289:                                              ; preds = %288, %284, %31
  %290 = load i32*, i32** %4, align 8
  ret i32* %290
}

declare dso_local %struct.TYPE_12__* @EX(i32) #1

declare dso_local i64 @calc_gc_buffer_size(%struct.TYPE_16__*) #1

declare dso_local i32* @safe_erealloc(i32*, i32, i64, i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32, i32*) #1

declare dso_local i32 @EX_CALL_INFO(...) #1

declare dso_local i32* @EX_VAR_NUM(i64) #1

declare dso_local i32 @EX_NUM_ARGS(...) #1

declare dso_local i32 @ZVAL_OBJ(i32, i32*) #1

declare dso_local i32* @Z_OBJ(i32) #1

declare dso_local i32* @ZEND_CLOSURE_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32* @EX_VAR(i64) #1

declare dso_local %struct.TYPE_16__* @zend_generator_get_child(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
