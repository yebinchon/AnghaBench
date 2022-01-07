; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_cfg.c_zend_mark_reachable_blocks.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_cfg.c_zend_mark_reachable_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@ZEND_BB_START = common dso_local global i32 0, align 4
@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@ZEND_BB_TRY = common dso_local global i32 0, align 4
@ZEND_BB_CATCH = common dso_local global i32 0, align 4
@ZEND_BB_FINALLY = common dso_local global i32 0, align 4
@ZEND_BB_FINALLY_END = common dso_local global i32 0, align 4
@ZEND_FUNC_FREE_LOOP_VAR = common dso_local global i32 0, align 4
@ZEND_FE_FREE = common dso_local global i64 0, align 8
@ZEND_FREE = common dso_local global i64 0, align 8
@ZEND_FREE_SWITCH = common dso_local global i64 0, align 8
@ZEND_BB_UNREACHABLE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_17__*, i32)* @zend_mark_reachable_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_mark_reachable_blocks(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %7, align 8
  %22 = load i32, i32* @ZEND_BB_START, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i64 %34
  %36 = call i32 @zend_mark_reachable(%struct.TYPE_16__* %30, %struct.TYPE_17__* %31, %struct.TYPE_18__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %500

41:                                               ; preds = %3
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  br label %45

45:                                               ; preds = %496, %41
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %492, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %495

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %54, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 %65
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %8, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %226, label %73

73:                                               ; preds = %52
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %73
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %85, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i64 %97
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %12, align 8
  br label %99

99:                                               ; preds = %122, %83
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = icmp ne %struct.TYPE_18__* %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i64 %114, i64* %121, align 8
  br label %125

122:                                              ; preds = %103
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 1
  store %struct.TYPE_18__* %124, %struct.TYPE_18__** %8, align 8
  br label %99

125:                                              ; preds = %110, %99
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %128, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 %139
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %8, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %225, label %147

147:                                              ; preds = %126
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %224

157:                                              ; preds = %147
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %159, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i64 %171
  store %struct.TYPE_18__* %172, %struct.TYPE_18__** %12, align 8
  br label %173

173:                                              ; preds = %220, %157
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %176 = icmp ne %struct.TYPE_18__* %174, %175
  br i1 %176, label %177, label %223

177:                                              ; preds = %173
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %220

184:                                              ; preds = %177
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i64 %193, i64* %200, align 8
  store i32 1, i32* %10, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32, i32* %206, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i64 %217
  %219 = call i32 @zend_mark_reachable(%struct.TYPE_16__* %203, %struct.TYPE_17__* %204, %struct.TYPE_18__* %218)
  br label %223

220:                                              ; preds = %177
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 1
  store %struct.TYPE_18__* %222, %struct.TYPE_18__** %8, align 8
  br label %173

223:                                              ; preds = %184, %173
  br label %224

224:                                              ; preds = %223, %147
  br label %225

225:                                              ; preds = %224, %126
  br label %226

226:                                              ; preds = %225, %52
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %228 = load i32*, i32** %11, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i32, i32* %228, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %239
  store %struct.TYPE_18__* %240, %struct.TYPE_18__** %8, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %388

247:                                              ; preds = %226
  %248 = load i32, i32* @ZEND_BB_TRY, align 4
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %297

262:                                              ; preds = %247
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %264, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i64 %276
  store %struct.TYPE_18__* %277, %struct.TYPE_18__** %8, align 8
  %278 = load i32, i32* @ZEND_BB_CATCH, align 4
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %262
  store i32 1, i32* %10, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %295 = call i32 @zend_mark_reachable(%struct.TYPE_16__* %292, %struct.TYPE_17__* %293, %struct.TYPE_18__* %294)
  br label %296

296:                                              ; preds = %289, %262
  br label %297

297:                                              ; preds = %296, %247
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %342

307:                                              ; preds = %297
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %309 = load i32*, i32** %11, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %309, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i64 %321
  store %struct.TYPE_18__* %322, %struct.TYPE_18__** %8, align 8
  %323 = load i32, i32* @ZEND_BB_FINALLY, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %341, label %334

334:                                              ; preds = %307
  store i32 1, i32* %10, align 4
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %336, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %340 = call i32 @zend_mark_reachable(%struct.TYPE_16__* %337, %struct.TYPE_17__* %338, %struct.TYPE_18__* %339)
  br label %341

341:                                              ; preds = %334, %307
  br label %342

342:                                              ; preds = %341, %297
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %387

352:                                              ; preds = %342
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %354 = load i32*, i32** %11, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %354, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i64 %366
  store %struct.TYPE_18__* %367, %struct.TYPE_18__** %8, align 8
  %368 = load i32, i32* @ZEND_BB_FINALLY_END, align 4
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %352
  store i32 1, i32* %10, align 4
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %381, align 8
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %385 = call i32 @zend_mark_reachable(%struct.TYPE_16__* %382, %struct.TYPE_17__* %383, %struct.TYPE_18__* %384)
  br label %386

386:                                              ; preds = %379, %352
  br label %387

387:                                              ; preds = %386, %342
  br label %491

388:                                              ; preds = %226
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %390, align 8
  %392 = load i32, i32* %9, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %422

398:                                              ; preds = %388
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %400 = load i32*, i32** %11, align 8
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 2
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** %402, align 8
  %404 = load i32, i32* %9, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %400, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  %419 = xor i1 %418, true
  %420 = zext i1 %419 to i32
  %421 = call i32 @ZEND_ASSERT(i32 %420)
  br label %422

422:                                              ; preds = %398, %388
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %456

432:                                              ; preds = %422
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %434 = load i32*, i32** %11, align 8
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %436, align 8
  %438 = load i32, i32* %9, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %434, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  %453 = xor i1 %452, true
  %454 = zext i1 %453 to i32
  %455 = call i32 @ZEND_ASSERT(i32 %454)
  br label %456

456:                                              ; preds = %432, %422
  %457 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 2
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %458, align 8
  %460 = load i32, i32* %9, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 8
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %490

466:                                              ; preds = %456
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %468 = load i32*, i32** %11, align 8
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 2
  %471 = load %struct.TYPE_14__*, %struct.TYPE_14__** %470, align 8
  %472 = load i32, i32* %9, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %468, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  %487 = xor i1 %486, true
  %488 = zext i1 %487 to i32
  %489 = call i32 @ZEND_ASSERT(i32 %488)
  br label %490

490:                                              ; preds = %466, %456
  br label %491

491:                                              ; preds = %490, %387
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %9, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %9, align 4
  br label %46

495:                                              ; preds = %46
  br label %496

496:                                              ; preds = %495
  %497 = load i32, i32* %10, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %45, label %499

499:                                              ; preds = %496
  br label %500

500:                                              ; preds = %499, %3
  %501 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @ZEND_FUNC_FREE_LOOP_VAR, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %611

507:                                              ; preds = %500
  %508 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %508, i32 0, i32 0
  %510 = load i32*, i32** %509, align 8
  store i32* %510, i32** %15, align 8
  %511 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %511, %struct.TYPE_18__** %13, align 8
  br label %512

512:                                              ; preds = %607, %507
  %513 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %514 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %514, i64 %518
  %520 = icmp ult %struct.TYPE_18__* %513, %519
  br i1 %520, label %521, label %610

521:                                              ; preds = %512
  %522 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %523 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %521
  br label %607

529:                                              ; preds = %521
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %531 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  store i32 %532, i32* %14, align 4
  br label %533

533:                                              ; preds = %603, %529
  %534 = load i32, i32* %14, align 4
  %535 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %536 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %537, %540
  %542 = icmp slt i32 %534, %541
  br i1 %542, label %543, label %606

543:                                              ; preds = %533
  %544 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %545, align 8
  %547 = load i32, i32* %14, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i64 %548
  store %struct.TYPE_16__* %549, %struct.TYPE_16__** %16, align 8
  %550 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %551 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* @ZEND_FE_FREE, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %567, label %555

555:                                              ; preds = %543
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @ZEND_FREE, align 8
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %561, label %602

561:                                              ; preds = %555
  %562 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %563 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %562, i32 0, i32 1
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* @ZEND_FREE_SWITCH, align 8
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %602

567:                                              ; preds = %561, %543
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %569 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %570 = call %struct.TYPE_16__* @zend_optimizer_get_loop_var_def(%struct.TYPE_15__* %568, %struct.TYPE_16__* %569)
  store %struct.TYPE_16__* %570, %struct.TYPE_16__** %17, align 8
  %571 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %572 = icmp ne %struct.TYPE_16__* %571, null
  br i1 %572, label %573, label %601

573:                                              ; preds = %567
  %574 = load i32*, i32** %15, align 8
  %575 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %576 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %577 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i32 0, i32 1
  %578 = load %struct.TYPE_16__*, %struct.TYPE_16__** %577, align 8
  %579 = ptrtoint %struct.TYPE_16__* %575 to i64
  %580 = ptrtoint %struct.TYPE_16__* %578 to i64
  %581 = sub i64 %579, %580
  %582 = sdiv exact i64 %581, 16
  %583 = getelementptr inbounds i32, i32* %574, i64 %582
  %584 = load i32, i32* %583, align 4
  store i32 %584, i32* %18, align 4
  %585 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %586 = load i32, i32* %18, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %585, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %592 = and i32 %590, %591
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %600

594:                                              ; preds = %573
  %595 = load i32, i32* @ZEND_BB_UNREACHABLE_FREE, align 4
  %596 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %597 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = or i32 %598, %595
  store i32 %599, i32* %597, align 4
  br label %606

600:                                              ; preds = %573
  br label %601

601:                                              ; preds = %600, %567
  br label %602

602:                                              ; preds = %601, %561, %555
  br label %603

603:                                              ; preds = %602
  %604 = load i32, i32* %14, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %14, align 4
  br label %533

606:                                              ; preds = %594, %533
  br label %607

607:                                              ; preds = %606, %528
  %608 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %609 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %608, i32 1
  store %struct.TYPE_18__* %609, %struct.TYPE_18__** %13, align 8
  br label %512

610:                                              ; preds = %512
  br label %611

611:                                              ; preds = %610, %500
  ret void
}

declare dso_local i32 @zend_mark_reachable(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local %struct.TYPE_16__* @zend_optimizer_get_loop_var_def(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
