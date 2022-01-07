; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashIncreaseNumBatches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashIncreaseNumBatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { double, i64, double, i32, i32, i8* }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32 }

@PHJ_BUILD_HASHING_INNER = common dso_local global i64 0, align 8
@WAIT_EVENT_HASH_GROW_BATCHES_ELECTING = common dso_local global i32 0, align 4
@InvalidDsaPointer = common dso_local global i8* null, align 8
@work_mem = common dso_local global i64 0, align 8
@NTUP_PER_BUCKET = common dso_local global double 0.000000e+00, align 8
@MaxAllocSize = common dso_local global i32 0, align 4
@PHJ_GROWTH_DISABLED = common dso_local global i8* null, align 8
@WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING = common dso_local global i32 0, align 4
@WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING = common dso_local global i32 0, align 4
@WAIT_EVENT_HASH_GROW_BATCHES_DECIDING = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PHJ_GROWTH_NEED_MORE_BATCHES = common dso_local global i8* null, align 8
@PHJ_GROWTH_OK = common dso_local global i8* null, align 8
@WAIT_EVENT_HASH_GROW_BATCHES_FINISHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ExecParallelHashIncreaseNumBatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecParallelHashIncreaseNumBatches(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 10
  %21 = call i64 @BarrierPhase(i32* %20)
  %22 = load i64, i64* @PHJ_BUILD_HASHING_INNER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  %28 = call i64 @BarrierPhase(i32* %27)
  %29 = call i32 @PHJ_GROW_BATCHES_PHASE(i64 %28)
  switch i32 %29, label %358 [
    i32 130, label %30
    i32 132, label %231
    i32 128, label %236
    i32 131, label %251
    i32 129, label %353
  ]

30:                                               ; preds = %1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %33 = load i32, i32* @WAIT_EVENT_HASH_GROW_BATCHES_ELECTING, align 4
  %34 = call i32 @BarrierArriveAndWait(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %227

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 9
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @InvalidDsaPointer, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = call i32 @ExecParallelHashCloseBatchAccessors(%struct.TYPE_16__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %36
  %63 = load i64, i64* @work_mem, align 8
  %64 = mul nsw i64 %63, 1024
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 2
  %71 = call i32 @my_log2(i32 %70)
  %72 = shl i32 1, %71
  store i32 %72, i32* %7, align 4
  br label %78

73:                                               ; preds = %36
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %62
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @Assert(i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ExecParallelHashJoinSetUpBatches(%struct.TYPE_16__* %88, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %182

104:                                              ; preds = %78
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = fmul double %107, 2.000000e+00
  %109 = load i32, i32* %7, align 4
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  store double %111, double* %9, align 8
  %112 = load double, double* %9, align 8
  %113 = load double, double* @NTUP_PER_BUCKET, align 8
  %114 = fdiv double %112, %113
  %115 = call double @llvm.ceil.f64(double %114)
  store double %115, double* %10, align 8
  %116 = load double, double* %10, align 8
  %117 = load i32, i32* @MaxAllocSize, align 4
  %118 = sext i32 %117 to i64
  %119 = udiv i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call double @Min(double %116, i32 %120)
  store double %121, double* %10, align 8
  %122 = load double, double* %10, align 8
  %123 = fptosi double %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @Max(i32 %124, i32 1024)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @my_log2(i32 %126)
  %128 = shl i32 1, %127
  store i32 %128, i32* %11, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @dsa_free(i32 %131, i8* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = trunc i64 %141 to i32
  %143 = call i8* @dsa_allocate(i32 %138, i32 %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 5
  store i8* %143, i8** %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @dsa_get_address(i32 %153, i8* %161)
  %163 = inttoptr i64 %162 to i32*
  store i32* %163, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %175, %104
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i8*, i8** @InvalidDsaPointer, align 8
  %174 = call i32 @dsa_pointer_atomic_init(i32* %172, i8* %173)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %164

178:                                              ; preds = %164
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  br label %218

182:                                              ; preds = %78
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 5
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 5
  store i8* %185, i8** %192, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 5
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @dsa_get_address(i32 %195, i8* %198)
  %200 = inttoptr i64 %199 to i32*
  store i32* %200, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %214, %182
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i8*, i8** @InvalidDsaPointer, align 8
  %213 = call i32 @dsa_pointer_atomic_write(i32* %211, i8* %212)
  br label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %201

217:                                              ; preds = %201
  br label %218

218:                                              ; preds = %217, %178
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 8
  %224 = load i8*, i8** @PHJ_GROWTH_DISABLED, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 7
  store i8* %224, i8** %226, align 8
  br label %230

227:                                              ; preds = %30
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = call i32 @ExecParallelHashCloseBatchAccessors(%struct.TYPE_16__* %228)
  br label %230

230:                                              ; preds = %227, %218
  br label %231

231:                                              ; preds = %1, %230
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 5
  %234 = load i32, i32* @WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING, align 4
  %235 = call i32 @BarrierArriveAndWait(i32* %233, i32 %234)
  br label %236

236:                                              ; preds = %1, %231
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = call i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_16__* %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %240 = call i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_16__* %239, i32 0)
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %242 = call i32 @ExecParallelHashRepartitionFirst(%struct.TYPE_16__* %241)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %244 = call i32 @ExecParallelHashRepartitionRest(%struct.TYPE_16__* %243)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %246 = call i32 @ExecParallelHashMergeCounters(%struct.TYPE_16__* %245)
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 5
  %249 = load i32, i32* @WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING, align 4
  %250 = call i32 @BarrierArriveAndWait(i32* %248, i32 %249)
  br label %251

251:                                              ; preds = %1, %236
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 5
  %254 = load i32, i32* @WAIT_EVENT_HASH_GROW_BATCHES_DECIDING, align 4
  %255 = call i32 @BarrierArriveAndWait(i32* %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %352

257:                                              ; preds = %251
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %259 = call i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_16__* %258)
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %261 = call i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_16__* %260, i32 0)
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %312, %257
  %263 = load i32, i32* %4, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %315

268:                                              ; preds = %262
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 3
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  store %struct.TYPE_15__* %276, %struct.TYPE_15__** %14, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %268
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp sgt i64 %284, %287
  br i1 %288, label %289, label %311

289:                                              ; preds = %281, %268
  store i32 1, i32* %12, align 4
  %290 = load i32, i32* %4, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = srem i32 %290, %293
  store i32 %294, i32* %15, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load double, double* %296, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 2
  %307 = load double, double* %306, align 8
  %308 = fcmp oeq double %297, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %289
  store i32 1, i32* %13, align 4
  br label %310

310:                                              ; preds = %309, %289
  br label %311

311:                                              ; preds = %310, %281
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %4, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %4, align 4
  br label %262

315:                                              ; preds = %262
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %315
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @INT_MAX, align 4
  %323 = sdiv i32 %322, 2
  %324 = icmp sge i32 %321, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %318, %315
  %326 = load i8*, i8** @PHJ_GROWTH_DISABLED, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 7
  store i8* %326, i8** %328, align 8
  br label %341

329:                                              ; preds = %318
  %330 = load i32, i32* %12, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load i8*, i8** @PHJ_GROWTH_NEED_MORE_BATCHES, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 7
  store i8* %333, i8** %335, align 8
  br label %340

336:                                              ; preds = %329
  %337 = load i8*, i8** @PHJ_GROWTH_OK, align 8
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 7
  store i8* %337, i8** %339, align 8
  br label %340

340:                                              ; preds = %336, %332
  br label %341

341:                                              ; preds = %340, %325
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 6
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @dsa_free(i32 %344, i8* %347)
  %349 = load i8*, i8** @InvalidDsaPointer, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 6
  store i8* %349, i8** %351, align 8
  br label %352

352:                                              ; preds = %341, %251
  br label %353

353:                                              ; preds = %1, %352
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 5
  %356 = load i32, i32* @WAIT_EVENT_HASH_GROW_BATCHES_FINISHING, align 4
  %357 = call i32 @BarrierArriveAndWait(i32* %355, i32 %356)
  br label %358

358:                                              ; preds = %353, %1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BarrierPhase(i32*) #1

declare dso_local i32 @PHJ_GROW_BATCHES_PHASE(i64) #1

declare dso_local i32 @BarrierArriveAndWait(i32*, i32) #1

declare dso_local i32 @ExecParallelHashCloseBatchAccessors(%struct.TYPE_16__*) #1

declare dso_local i32 @my_log2(i32) #1

declare dso_local i32 @ExecParallelHashJoinSetUpBatches(%struct.TYPE_16__*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local double @Min(double, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @dsa_free(i32, i8*) #1

declare dso_local i8* @dsa_allocate(i32, i32) #1

declare dso_local i64 @dsa_get_address(i32, i8*) #1

declare dso_local i32 @dsa_pointer_atomic_init(i32*, i8*) #1

declare dso_local i32 @dsa_pointer_atomic_write(i32*, i8*) #1

declare dso_local i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_16__*) #1

declare dso_local i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ExecParallelHashRepartitionFirst(%struct.TYPE_16__*) #1

declare dso_local i32 @ExecParallelHashRepartitionRest(%struct.TYPE_16__*) #1

declare dso_local i32 @ExecParallelHashMergeCounters(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
