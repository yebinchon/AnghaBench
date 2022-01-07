; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dfg.c_zend_build_dfg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dfg.c_zend_build_dfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }

@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@ZEND_OP_DATA = common dso_local global i64 0, align 8
@IS_CV = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@ZEND_ASSIGN_STATIC_PROP_REF = common dso_local global i32 0, align 4
@ZEND_SSA_RC_INFERENCE = common dso_local global i32 0, align 4
@ZEND_ARRAY_ELEMENT_REF = common dso_local global i32 0, align 4
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@ZEND_BIND_REF = common dso_local global i32 0, align 4
@ZEND_SSA_USE_CV_RESULTS = common dso_local global i32 0, align 4
@use_heap = common dso_local global i32 0, align 4
@ZEND_BITSET_ELM_SIZE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_build_dfg(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %10, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %472, %4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %475

54:                                               ; preds = %50
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %472

65:                                               ; preds = %54
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %75
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %20, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %84
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %21, align 8
  br label %86

86:                                               ; preds = %468, %65
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %89 = icmp ult %struct.TYPE_16__* %87, %88
  br i1 %89, label %90, label %471

90:                                               ; preds = %86
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZEND_OP_DATA, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %467

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 1
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %22, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %101 = icmp ult %struct.TYPE_16__* %99, %100
  br i1 %101, label %102, label %199

102:                                              ; preds = %96
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZEND_OP_DATA, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %199

108:                                              ; preds = %102
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IS_CV, align 4
  %113 = load i32, i32* @IS_VAR, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IS_TMP_VAR, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %111, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %168

119:                                              ; preds = %108
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @EX_VAR_TO_NUM(i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IS_CV, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %119
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 167
  br i1 %134, label %142, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @ZEND_ASSIGN_STATIC_PROP_REF, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp eq i64 %138, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %135, %130
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @DFG_SET(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @DFG_SET(i32 %148, i32 %149, i32 %150, i32 %151)
  br label %167

153:                                              ; preds = %135, %119
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @DFG_ISSET(i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @DFG_SET(i32 %161, i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %153
  br label %167

167:                                              ; preds = %166, %142
  br label %168

168:                                              ; preds = %167, %108
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IS_CV, align 4
  %173 = load i32, i32* @IS_VAR, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @IS_TMP_VAR, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %171, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %168
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @EX_VAR_TO_NUM(i32 %183)
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @DFG_ISSET(i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %179
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @DFG_SET(i32 %192, i32 %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %179
  br label %198

198:                                              ; preds = %197, %168
  br label %199

199:                                              ; preds = %198, %102, %96
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @IS_CV, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %277

205:                                              ; preds = %199
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 7
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @EX_VAR_TO_NUM(i32 %209)
  store i32 %210, i32* %18, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  switch i64 %213, label %261 [
    i64 173, label %214
    i64 149, label %214
    i64 151, label %228
    i64 136, label %228
    i64 160, label %228
    i64 139, label %228
    i64 148, label %228
    i64 159, label %228
    i64 128, label %235
    i64 132, label %249
    i64 172, label %249
    i64 165, label %249
    i64 167, label %249
    i64 163, label %249
    i64 161, label %249
    i64 135, label %249
    i64 138, label %249
    i64 137, label %249
    i64 134, label %249
    i64 133, label %249
    i64 150, label %249
    i64 166, label %249
    i64 170, label %249
    i64 168, label %249
    i64 164, label %249
    i64 141, label %249
    i64 143, label %249
    i64 145, label %249
    i64 147, label %249
    i64 171, label %249
    i64 169, label %249
    i64 131, label %249
    i64 130, label %249
    i64 155, label %249
    i64 157, label %249
    i64 158, label %249
    i64 156, label %249
    i64 154, label %249
    i64 129, label %249
    i64 140, label %249
    i64 142, label %249
    i64 144, label %249
    i64 146, label %249
  ]

214:                                              ; preds = %205, %205
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @ZEND_SSA_RC_INFERENCE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @ZEND_ARRAY_ELEMENT_REF, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219, %214
  br label %250

227:                                              ; preds = %219
  br label %262

228:                                              ; preds = %205, %205, %205, %205, %205, %205
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @ZEND_SSA_RC_INFERENCE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %250

234:                                              ; preds = %228
  br label %262

235:                                              ; preds = %205
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @ZEND_SSA_RC_INFERENCE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %235
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240, %235
  br label %250

248:                                              ; preds = %240
  br label %262

249:                                              ; preds = %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205
  br label %250

250:                                              ; preds = %249, %247, %233, %226
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %18, align 4
  %255 = call i32 @DFG_SET(i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i32 @DFG_SET(i32 %256, i32 %257, i32 %258, i32 %259)
  br label %276

261:                                              ; preds = %205
  br label %262

262:                                              ; preds = %261, %248, %234, %227
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @DFG_ISSET(i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @DFG_SET(i32 %270, i32 %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %269, %262
  br label %276

276:                                              ; preds = %275, %250
  br label %317

277:                                              ; preds = %199
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @IS_VAR, align 4
  %282 = load i32, i32* @IS_TMP_VAR, align 4
  %283 = or i32 %281, %282
  %284 = and i32 %280, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %316

286:                                              ; preds = %277
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @EX_VAR_TO_NUM(i32 %290)
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* %18, align 4
  %296 = call i32 @DFG_ISSET(i32 %292, i32 %293, i32 %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %286
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %18, align 4
  %303 = call i32 @DFG_SET(i32 %299, i32 %300, i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %298, %286
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 129
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* %18, align 4
  %314 = call i32 @DFG_SET(i32 %310, i32 %311, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %309, %304
  br label %316

316:                                              ; preds = %315, %277
  br label %317

317:                                              ; preds = %316, %276
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @IS_CV, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %381

323:                                              ; preds = %317
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 6
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @EX_VAR_TO_NUM(i32 %327)
  store i32 %328, i32* %18, align 4
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  switch i64 %331, label %365 [
    i64 172, label %332
    i64 162, label %339
    i64 165, label %353
    i64 153, label %353
    i64 152, label %353
  ]

332:                                              ; preds = %323
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* @ZEND_SSA_RC_INFERENCE, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %354

338:                                              ; preds = %332
  br label %366

339:                                              ; preds = %323
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* @ZEND_SSA_RC_INFERENCE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %339
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @ZEND_BIND_REF, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %344, %339
  br label %354

352:                                              ; preds = %344
  br label %366

353:                                              ; preds = %323, %323, %323
  br label %354

354:                                              ; preds = %353, %351, %337
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %18, align 4
  %359 = call i32 @DFG_SET(i32 %355, i32 %356, i32 %357, i32 %358)
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %19, align 4
  %363 = load i32, i32* %18, align 4
  %364 = call i32 @DFG_SET(i32 %360, i32 %361, i32 %362, i32 %363)
  br label %380

365:                                              ; preds = %323
  br label %366

366:                                              ; preds = %365, %352, %338
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %18, align 4
  %371 = call i32 @DFG_ISSET(i32 %367, i32 %368, i32 %369, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %379, label %373

373:                                              ; preds = %366
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* %19, align 4
  %377 = load i32, i32* %18, align 4
  %378 = call i32 @DFG_SET(i32 %374, i32 %375, i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %373, %366
  br label %380

380:                                              ; preds = %379, %354
  br label %427

381:                                              ; preds = %317
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @IS_VAR, align 4
  %386 = load i32, i32* @IS_TMP_VAR, align 4
  %387 = or i32 %385, %386
  %388 = and i32 %384, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %426

390:                                              ; preds = %381
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 6
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @EX_VAR_TO_NUM(i32 %394)
  store i32 %395, i32* %18, align 4
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp eq i64 %398, 153
  br i1 %399, label %405, label %400

400:                                              ; preds = %390
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %403, 152
  br i1 %404, label %405, label %411

405:                                              ; preds = %400, %390
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %19, align 4
  %409 = load i32, i32* %18, align 4
  %410 = call i32 @DFG_SET(i32 %406, i32 %407, i32 %408, i32 %409)
  br label %425

411:                                              ; preds = %400
  %412 = load i32, i32* %13, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %19, align 4
  %415 = load i32, i32* %18, align 4
  %416 = call i32 @DFG_ISSET(i32 %412, i32 %413, i32 %414, i32 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %411
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %19, align 4
  %422 = load i32, i32* %18, align 4
  %423 = call i32 @DFG_SET(i32 %419, i32 %420, i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %418, %411
  br label %425

425:                                              ; preds = %424, %405
  br label %426

426:                                              ; preds = %425, %381
  br label %427

427:                                              ; preds = %426, %380
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @IS_CV, align 4
  %432 = load i32, i32* @IS_VAR, align 4
  %433 = or i32 %431, %432
  %434 = load i32, i32* @IS_TMP_VAR, align 4
  %435 = or i32 %433, %434
  %436 = and i32 %430, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %466

438:                                              ; preds = %427
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @EX_VAR_TO_NUM(i32 %442)
  store i32 %443, i32* %18, align 4
  %444 = load i32, i32* %8, align 4
  %445 = load i32, i32* @ZEND_SSA_USE_CV_RESULTS, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %460

448:                                              ; preds = %438
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @IS_CV, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %460

454:                                              ; preds = %448
  %455 = load i32, i32* %14, align 4
  %456 = load i32, i32* %9, align 4
  %457 = load i32, i32* %19, align 4
  %458 = load i32, i32* %18, align 4
  %459 = call i32 @DFG_SET(i32 %455, i32 %456, i32 %457, i32 %458)
  br label %460

460:                                              ; preds = %454, %448, %438
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %9, align 4
  %463 = load i32, i32* %19, align 4
  %464 = load i32, i32* %18, align 4
  %465 = call i32 @DFG_SET(i32 %461, i32 %462, i32 %463, i32 %464)
  br label %466

466:                                              ; preds = %460, %427
  br label %467

467:                                              ; preds = %466, %90
  br label %468

468:                                              ; preds = %467
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 1
  store %struct.TYPE_16__* %470, %struct.TYPE_16__** %20, align 8
  br label %86

471:                                              ; preds = %86
  br label %472

472:                                              ; preds = %471, %64
  %473 = load i32, i32* %19, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %19, align 4
  br label %50

475:                                              ; preds = %50
  %476 = load i32, i32* %11, align 4
  %477 = call i32 @zend_bitset_len(i32 %476)
  store i32 %477, i32* %23, align 4
  %478 = load i32, i32* @use_heap, align 4
  %479 = call i32 @ALLOCA_FLAG(i32 %478)
  %480 = load i32, i32* %23, align 4
  %481 = load i32, i32* @use_heap, align 4
  %482 = call i32 @ZEND_BITSET_ALLOCA(i32 %480, i32 %481)
  store i32 %482, i32* %24, align 4
  %483 = load i32, i32* %24, align 4
  %484 = load i32, i32* %23, align 4
  %485 = load i32, i32* @ZEND_BITSET_ELM_SIZE, align 4
  %486 = mul nsw i32 %484, %485
  %487 = call i32 @memset(i32 %483, i32 0, i32 %486)
  store i32 0, i32* %19, align 4
  br label %488

488:                                              ; preds = %496, %475
  %489 = load i32, i32* %19, align 4
  %490 = load i32, i32* %11, align 4
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %492, label %499

492:                                              ; preds = %488
  %493 = load i32, i32* %24, align 4
  %494 = load i32, i32* %19, align 4
  %495 = call i32 @zend_bitset_incl(i32 %493, i32 %494)
  br label %496

496:                                              ; preds = %492
  %497 = load i32, i32* %19, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %19, align 4
  br label %488

499:                                              ; preds = %488
  br label %500

500:                                              ; preds = %652, %522, %499
  %501 = load i32, i32* %24, align 4
  %502 = load i32, i32* %23, align 4
  %503 = call i32 @zend_bitset_empty(i32 %501, i32 %502)
  %504 = icmp ne i32 %503, 0
  %505 = xor i1 %504, true
  br i1 %505, label %506, label %653

506:                                              ; preds = %500
  %507 = load i32, i32* %24, align 4
  %508 = load i32, i32* %23, align 4
  %509 = call i32 @zend_bitset_last(i32 %507, i32 %508)
  store i32 %509, i32* %19, align 4
  %510 = load i32, i32* %24, align 4
  %511 = load i32, i32* %19, align 4
  %512 = call i32 @zend_bitset_excl(i32 %510, i32 %511)
  %513 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %514 = load i32, i32* %19, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %520 = and i32 %518, %519
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %506
  br label %500

523:                                              ; preds = %506
  %524 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %525 = load i32, i32* %19, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %582

531:                                              ; preds = %523
  %532 = load i32, i32* %16, align 4
  %533 = load i32, i32* %9, align 4
  %534 = load i32, i32* %19, align 4
  %535 = call i32 @DFG_BITSET(i32 %532, i32 %533, i32 %534)
  %536 = load i32, i32* %15, align 4
  %537 = load i32, i32* %9, align 4
  %538 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %539 = load i32, i32* %19, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %541, i32 0, i32 4
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 0
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @DFG_BITSET(i32 %536, i32 %537, i32 %545)
  %547 = load i32, i32* %9, align 4
  %548 = call i32 @zend_bitset_copy(i32 %535, i32 %546, i32 %547)
  store i32 1, i32* %17, align 4
  br label %549

549:                                              ; preds = %578, %531
  %550 = load i32, i32* %17, align 4
  %551 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %552 = load i32, i32* %19, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %554, i32 0, i32 3
  %556 = load i32, i32* %555, align 4
  %557 = icmp slt i32 %550, %556
  br i1 %557, label %558, label %581

558:                                              ; preds = %549
  %559 = load i32, i32* %16, align 4
  %560 = load i32, i32* %9, align 4
  %561 = load i32, i32* %19, align 4
  %562 = call i32 @DFG_BITSET(i32 %559, i32 %560, i32 %561)
  %563 = load i32, i32* %15, align 4
  %564 = load i32, i32* %9, align 4
  %565 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %566 = load i32, i32* %19, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %568, i32 0, i32 4
  %570 = load i32*, i32** %569, align 8
  %571 = load i32, i32* %17, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %570, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @DFG_BITSET(i32 %563, i32 %564, i32 %574)
  %576 = load i32, i32* %9, align 4
  %577 = call i32 @zend_bitset_union(i32 %562, i32 %575, i32 %576)
  br label %578

578:                                              ; preds = %558
  %579 = load i32, i32* %17, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %17, align 4
  br label %549

581:                                              ; preds = %549
  br label %589

582:                                              ; preds = %523
  %583 = load i32, i32* %16, align 4
  %584 = load i32, i32* %9, align 4
  %585 = load i32, i32* %19, align 4
  %586 = call i32 @DFG_BITSET(i32 %583, i32 %584, i32 %585)
  %587 = load i32, i32* %9, align 4
  %588 = call i32 @zend_bitset_clear(i32 %586, i32 %587)
  br label %589

589:                                              ; preds = %582, %581
  %590 = load i32, i32* %12, align 4
  %591 = load i32, i32* %14, align 4
  %592 = load i32, i32* %9, align 4
  %593 = load i32, i32* %19, align 4
  %594 = call i32 @DFG_BITSET(i32 %591, i32 %592, i32 %593)
  %595 = load i32, i32* %16, align 4
  %596 = load i32, i32* %9, align 4
  %597 = load i32, i32* %19, align 4
  %598 = call i32 @DFG_BITSET(i32 %595, i32 %596, i32 %597)
  %599 = load i32, i32* %13, align 4
  %600 = load i32, i32* %9, align 4
  %601 = load i32, i32* %19, align 4
  %602 = call i32 @DFG_BITSET(i32 %599, i32 %600, i32 %601)
  %603 = load i32, i32* %9, align 4
  %604 = call i32 @zend_bitset_union_with_difference(i32 %590, i32 %594, i32 %598, i32 %602, i32 %603)
  %605 = load i32, i32* %15, align 4
  %606 = load i32, i32* %9, align 4
  %607 = load i32, i32* %19, align 4
  %608 = call i32 @DFG_BITSET(i32 %605, i32 %606, i32 %607)
  %609 = load i32, i32* %12, align 4
  %610 = load i32, i32* %9, align 4
  %611 = call i32 @zend_bitset_equal(i32 %608, i32 %609, i32 %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %652, label %613

613:                                              ; preds = %589
  %614 = load i32, i32* %15, align 4
  %615 = load i32, i32* %9, align 4
  %616 = load i32, i32* %19, align 4
  %617 = call i32 @DFG_BITSET(i32 %614, i32 %615, i32 %616)
  %618 = load i32, i32* %12, align 4
  %619 = load i32, i32* %9, align 4
  %620 = call i32 @zend_bitset_copy(i32 %617, i32 %618, i32 %619)
  %621 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %622 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %621, i32 0, i32 1
  %623 = load i32*, i32** %622, align 8
  %624 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %625 = load i32, i32* %19, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %624, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %627, i32 0, i32 5
  %629 = load i64, i64* %628, align 8
  %630 = getelementptr inbounds i32, i32* %623, i64 %629
  store i32* %630, i32** %25, align 8
  store i32 0, i32* %17, align 4
  br label %631

631:                                              ; preds = %648, %613
  %632 = load i32, i32* %17, align 4
  %633 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %634 = load i32, i32* %19, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %633, i64 %635
  %637 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %636, i32 0, i32 6
  %638 = load i32, i32* %637, align 8
  %639 = icmp slt i32 %632, %638
  br i1 %639, label %640, label %651

640:                                              ; preds = %631
  %641 = load i32, i32* %24, align 4
  %642 = load i32*, i32** %25, align 8
  %643 = load i32, i32* %17, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32, i32* %642, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = call i32 @zend_bitset_incl(i32 %641, i32 %646)
  br label %648

648:                                              ; preds = %640
  %649 = load i32, i32* %17, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %17, align 4
  br label %631

651:                                              ; preds = %631
  br label %652

652:                                              ; preds = %651, %589
  br label %500

653:                                              ; preds = %500
  %654 = load i32, i32* %24, align 4
  %655 = load i32, i32* @use_heap, align 4
  %656 = call i32 @free_alloca(i32 %654, i32 %655)
  %657 = load i32, i32* @SUCCESS, align 4
  ret i32 %657
}

declare dso_local i32 @EX_VAR_TO_NUM(i32) #1

declare dso_local i32 @DFG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @DFG_ISSET(i32, i32, i32, i32) #1

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i32 @ZEND_BITSET_ALLOCA(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @zend_bitset_incl(i32, i32) #1

declare dso_local i32 @zend_bitset_empty(i32, i32) #1

declare dso_local i32 @zend_bitset_last(i32, i32) #1

declare dso_local i32 @zend_bitset_excl(i32, i32) #1

declare dso_local i32 @zend_bitset_copy(i32, i32, i32) #1

declare dso_local i32 @DFG_BITSET(i32, i32, i32) #1

declare dso_local i32 @zend_bitset_union(i32, i32, i32) #1

declare dso_local i32 @zend_bitset_clear(i32, i32) #1

declare dso_local i32 @zend_bitset_union_with_difference(i32, i32, i32, i32, i32) #1

declare dso_local i32 @zend_bitset_equal(i32, i32, i32) #1

declare dso_local i32 @free_alloca(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
