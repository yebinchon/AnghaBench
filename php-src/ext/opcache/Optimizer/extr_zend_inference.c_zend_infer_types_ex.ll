; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_infer_types_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_infer_types_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64*, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_infer_types_ex(i32* %0, i32* %1, %struct.TYPE_18__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %12, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %13, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %14, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @zend_bitset_len(i32 %41)
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %312, %5
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @zend_bitset_empty(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %313

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @zend_bitset_first(i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @zend_bitset_excl(i32 %53, i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %283

63:                                               ; preds = %49
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %20, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %179

74:                                               ; preds = %63
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %21, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %22, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @get_ssa_var_info(%struct.TYPE_18__* %93, i64 %98)
  store i32 %99, i32* %18, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %171, label %104

104:                                              ; preds = %74
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %23, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @MAY_BE_STRING, align 4
  %115 = load i32, i32* @MAY_BE_ARRAY, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @MAY_BE_OBJECT, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %113, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %104
  %124 = load i32, i32* @MAY_BE_RC1, align 4
  %125 = load i32, i32* @MAY_BE_RCN, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %18, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %123, %104
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @MAY_BE_OBJECT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %170

135:                                              ; preds = %130
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %170

140:                                              ; preds = %135
  %141 = load i32*, i32** %21, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %141, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %140
  %147 = load i32*, i32** %21, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %21, align 8
  store i32 1, i32* %22, align 4
  br label %169

153:                                              ; preds = %146
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = call i64 @instanceof_function(i32* %159, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %21, align 8
  br label %168

167:                                              ; preds = %156, %153
  br label %168

168:                                              ; preds = %167, %163
  br label %169

169:                                              ; preds = %168, %149
  br label %170

170:                                              ; preds = %169, %140, %135, %130
  br label %171

171:                                              ; preds = %170, %74
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @UPDATE_SSA_TYPE(i32 %172, i32 %173)
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %22, align 4
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @UPDATE_SSA_OBJ_TYPE(i32* %175, i32 %176, i32 %177)
  br label %282

179:                                              ; preds = %63
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32* null, i32** %26, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %180

180:                                              ; preds = %202, %179
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %181, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %180
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @get_ssa_var_info(%struct.TYPE_18__* %191, i64 %198)
  %200 = load i32, i32* %18, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %190
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %180

205:                                              ; preds = %180
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @UPDATE_SSA_TYPE(i32 %206, i32 %207)
  store i32 0, i32* %16, align 4
  br label %209

209:                                              ; preds = %268, %205
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %210, %217
  br i1 %218, label %219, label %271

219:                                              ; preds = %209
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = icmp uge i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @ZEND_ASSERT(i32 %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i64 %237
  store %struct.TYPE_14__* %238, %struct.TYPE_14__** %27, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @MAY_BE_OBJECT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %267

245:                                              ; preds = %219
  %246 = load i32, i32* %24, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  store i32* %251, i32** %26, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %266

255:                                              ; preds = %245
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %25, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %25, align 4
  %261 = load i32*, i32** %26, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = call i32* @join_class_entries(i32* %261, i32* %264, i32* %25)
  store i32* %265, i32** %26, align 8
  br label %266

266:                                              ; preds = %255, %248
  br label %267

267:                                              ; preds = %266, %219
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %16, align 4
  br label %209

271:                                              ; preds = %209
  %272 = load i32*, i32** %26, align 8
  %273 = load i32*, i32** %26, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i32, i32* %25, align 4
  br label %278

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %276, %275 ], [ 0, %277 ]
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @UPDATE_SSA_OBJ_TYPE(i32* %272, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %171
  br label %312

283:                                              ; preds = %49
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp sge i32 %289, 0
  br i1 %290, label %291, label %311

291:                                              ; preds = %283
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %16, align 4
  %298 = load i32*, i32** %7, align 8
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i64 @zend_update_type_info(i32* %298, %struct.TYPE_18__* %299, i32* %300, i32 %301, i32 %302, i32 %303)
  %305 = load i64, i64* @FAILURE, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %291
  %308 = load i64, i64* @FAILURE, align 8
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %6, align 4
  br label %315

310:                                              ; preds = %291
  br label %311

311:                                              ; preds = %310, %283
  br label %312

312:                                              ; preds = %311, %282
  br label %43

313:                                              ; preds = %43
  %314 = load i32, i32* @SUCCESS, align 4
  store i32 %314, i32* %6, align 4
  br label %315

315:                                              ; preds = %313, %307
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i32 @zend_bitset_empty(i32, i32) #1

declare dso_local i32 @zend_bitset_first(i32, i32) #1

declare dso_local i32 @zend_bitset_excl(i32, i32) #1

declare dso_local i32 @get_ssa_var_info(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @instanceof_function(i32*, i32*) #1

declare dso_local i32 @UPDATE_SSA_TYPE(i32, i32) #1

declare dso_local i32 @UPDATE_SSA_OBJ_TYPE(i32*, i32, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32* @join_class_entries(i32*, i32*, i32*) #1

declare dso_local i64 @zend_update_type_info(i32*, %struct.TYPE_18__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
