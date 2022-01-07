; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTupleAlloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTupleAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i64 }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }

@HASH_CHUNK_THRESHOLD = common dso_local global i64 0, align 8
@HASH_CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@PHJ_GROWTH_NEED_MORE_BATCHES = common dso_local global i64 0, align 8
@PHJ_GROWTH_NEED_MORE_BUCKETS = common dso_local global i64 0, align 8
@HASH_CHUNK_SIZE = common dso_local global i64 0, align 8
@PHJ_GROWTH_DISABLED = common dso_local global i64 0, align 8
@PHJ_BUILD_HASHING_INNER = common dso_local global i64 0, align 8
@NTUP_PER_BUCKET = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, i64, i64*)* @ExecParallelHashTupleAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ExecParallelHashTupleAlloc(%struct.TYPE_20__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %8, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @MAXALIGN(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %10, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %27 = icmp ne %struct.TYPE_19__* %26, null
  br i1 %27, label %28, label %94

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @HASH_CHUNK_THRESHOLD, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %28
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load i64, i64* %6, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %32
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call %struct.TYPE_19__* @dsa_get_address(i32 %49, i64 %50)
  %52 = icmp eq %struct.TYPE_19__* %46, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @HASH_CHUNK_HEADER_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %57, %60
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = call %struct.TYPE_19__* @HASH_CHUNK_DATA(%struct.TYPE_19__* %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i64 %67
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ule i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_19__* @dsa_get_address(i32 %86, i64 %88)
  %90 = icmp eq %struct.TYPE_19__* %83, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %4, align 8
  br label %360

94:                                               ; preds = %32, %28, %3
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i32, i32* @LW_EXCLUSIVE, align 4
  %98 = call i32 @LWLockAcquire(i32* %96, i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BATCHES, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %94
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BUCKETS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %104, %94
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 5
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = call i32 @LWLockRelease(i32* %117)
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BATCHES, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = call i32 @ExecParallelHashIncreaseNumBatches(%struct.TYPE_20__* %123)
  br label %133

125:                                              ; preds = %110
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BUCKETS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = call i32 @ExecParallelHashIncreaseNumBuckets(%struct.TYPE_20__* %130)
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %122
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %360

134:                                              ; preds = %104
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @HASH_CHUNK_THRESHOLD, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @HASH_CHUNK_HEADER_SIZE, align 8
  %141 = add i64 %139, %140
  store i64 %141, i64* %11, align 8
  br label %144

142:                                              ; preds = %134
  %143 = load i64, i64* @HASH_CHUNK_SIZE, align 8
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %142, %138
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PHJ_GROWTH_DISABLED, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %267

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @Assert(i32 %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = call i64 @BarrierPhase(i32* %156)
  %158 = load i64, i64* @PHJ_BUILD_HASHING_INNER, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %150
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 6
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = add nsw i64 %177, %178
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %179, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %169
  %185 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BATCHES, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  store i32 1, i32* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = call i32 @LWLockRelease(i32* %196)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %360

198:                                              ; preds = %169, %150
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %266

203:                                              ; preds = %198
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %209
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 6
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @NTUP_PER_BUCKET, align 4
  %239 = mul nsw i32 %237, %238
  %240 = icmp sgt i32 %234, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %203
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @INT_MAX, align 4
  %246 = sdiv i32 %245, 2
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %265

248:                                              ; preds = %241
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* @MaxAllocSize, align 4
  %255 = sext i32 %254 to i64
  %256 = udiv i64 %255, 4
  %257 = icmp ule i64 %253, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %248
  %259 = load i64, i64* @PHJ_GROWTH_NEED_MORE_BUCKETS, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 2
  %264 = call i32 @LWLockRelease(i32* %263)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %360

265:                                              ; preds = %248, %241, %203
  br label %266

266:                                              ; preds = %265, %198
  br label %267

267:                                              ; preds = %266, %144
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = load i64, i64* %11, align 8
  %272 = call i64 @dsa_allocate(i32 %270, i64 %271)
  store i64 %272, i64* %9, align 8
  %273 = load i64, i64* %11, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 6
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, %273
  store i64 %284, i64* %282, align 8
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 6
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  store i32 1, i32* %291, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load i64, i64* %9, align 8
  %296 = call %struct.TYPE_19__* @dsa_get_address(i32 %294, i64 %295)
  store %struct.TYPE_19__* %296, %struct.TYPE_19__** %10, align 8
  %297 = load i64, i64* %9, align 8
  %298 = load i64, i64* @HASH_CHUNK_HEADER_SIZE, align 8
  %299 = add nsw i64 %297, %298
  %300 = load i64*, i64** %7, align 8
  store i64 %299, i64* %300, align 8
  %301 = load i64, i64* %11, align 8
  %302 = load i64, i64* @HASH_CHUNK_HEADER_SIZE, align 8
  %303 = sub nsw i64 %301, %302
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  store i64 %303, i64* %305, align 8
  %306 = load i64, i64* %6, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  store i64 %318, i64* %321, align 8
  %322 = load i64, i64* %9, align 8
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 6
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %324, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  store i64 %322, i64* %331, align 8
  %332 = load i64, i64* %6, align 8
  %333 = load i64, i64* @HASH_CHUNK_THRESHOLD, align 8
  %334 = icmp ule i64 %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %267
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 5
  store %struct.TYPE_19__* %336, %struct.TYPE_19__** %338, align 8
  %339 = load i64, i64* %9, align 8
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 1
  store i64 %339, i64* %341, align 8
  br label %342

342:                                              ; preds = %335, %267
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 2
  %345 = call i32 @LWLockRelease(i32* %344)
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %347 = call %struct.TYPE_19__* @HASH_CHUNK_DATA(%struct.TYPE_19__* %346)
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = load i64*, i64** %7, align 8
  %352 = load i64, i64* %351, align 8
  %353 = call %struct.TYPE_19__* @dsa_get_address(i32 %350, i64 %352)
  %354 = icmp eq %struct.TYPE_19__* %347, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @Assert(i32 %355)
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %358 = call %struct.TYPE_19__* @HASH_CHUNK_DATA(%struct.TYPE_19__* %357)
  store %struct.TYPE_19__* %358, %struct.TYPE_19__** %12, align 8
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %359, %struct.TYPE_19__** %4, align 8
  br label %360

360:                                              ; preds = %342, %258, %184, %133, %42
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %361
}

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_19__* @dsa_get_address(i32, i64) #1

declare dso_local %struct.TYPE_19__* @HASH_CHUNK_DATA(%struct.TYPE_19__*) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @ExecParallelHashIncreaseNumBatches(%struct.TYPE_20__*) #1

declare dso_local i32 @ExecParallelHashIncreaseNumBuckets(%struct.TYPE_20__*) #1

declare dso_local i64 @BarrierPhase(i32*) #1

declare dso_local i64 @dsa_allocate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
