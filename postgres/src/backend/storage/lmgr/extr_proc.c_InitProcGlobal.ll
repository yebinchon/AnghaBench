; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_InitProcGlobal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_InitProcGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i32*, i32*, i64, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_11__**, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@MaxBackends = common dso_local global i32 0, align 4
@NUM_AUXILIARY_PROCS = common dso_local global i32 0, align 4
@max_prepared_xacts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Proc Header\00", align 1
@ProcGlobal = common dso_local global %struct.TYPE_10__* null, align 8
@DEFAULT_SPINS_PER_DELAY = common dso_local global i32 0, align 4
@INVALID_PGPROCNO = common dso_local global i32 0, align 4
@LWTRANCHE_PROC = common dso_local global i32 0, align 4
@MaxConnections = common dso_local global i32 0, align 4
@autovacuum_max_workers = common dso_local global i32 0, align 4
@max_worker_processes = common dso_local global i32 0, align 4
@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4
@AuxiliaryProcs = common dso_local global %struct.TYPE_11__* null, align 8
@PreparedXactProcs = common dso_local global %struct.TYPE_11__* null, align 8
@ProcStructLock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitProcGlobal() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MaxBackends, align 4
  %8 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* @max_prepared_xacts, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 104, i32* %5)
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** @ProcGlobal, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* @DEFAULT_SPINS_PER_DELAY, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 13
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 11
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 10
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  %42 = load i32, i32* @INVALID_PGPROCNO, align 4
  %43 = call i32 @pg_atomic_init_u32(i32* %41, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = load i32, i32* @INVALID_PGPROCNO, align 4
  %47 = call i32 @pg_atomic_init_u32(i32* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 56
  %51 = trunc i64 %50 to i32
  %52 = call i64 @ShmemAlloc(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %1, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @MemSet(%struct.TYPE_11__* %54, i32 0, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 7
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load i32, i32* @MaxBackends, align 4
  %64 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 56
  %71 = trunc i64 %70 to i32
  %72 = call i64 @ShmemAlloc(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %2, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 56
  %78 = trunc i64 %77 to i32
  %79 = call i32 @MemSet(%struct.TYPE_11__* %74, i32 0, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 6
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %282, %0
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %285

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @MaxBackends, align 4
  %90 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = call i32 (...) @PGSemaphoreCreate()
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 9
  store i32 %94, i32* %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 8
  %105 = call i32 @InitSharedLatch(i32* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 7
  %111 = load i32, i32* @LWTRANCHE_PROC, align 4
  %112 = call i32 @LWLockInitialize(i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %93, %87
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @MaxConnections, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %113
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = bitcast %struct.TYPE_11__* %126 to i32*
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i32* %127, i32** %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 5
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  store %struct.TYPE_11__** %141, %struct.TYPE_11__*** %146, align 8
  br label %242

147:                                              ; preds = %113
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @MaxConnections, align 4
  %150 = load i32, i32* @autovacuum_max_workers, align 4
  %151 = add nsw i32 %149, %150
  %152 = add nsw i32 %151, 1
  %153 = icmp slt i32 %148, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %147
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = bitcast %struct.TYPE_11__* %157 to i32*
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i32* %158, i32** %164, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  store %struct.TYPE_11__** %172, %struct.TYPE_11__*** %177, align 8
  br label %241

178:                                              ; preds = %147
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @MaxConnections, align 4
  %181 = load i32, i32* @autovacuum_max_workers, align 4
  %182 = add nsw i32 %180, %181
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* @max_worker_processes, align 4
  %185 = add nsw i32 %183, %184
  %186 = icmp slt i32 %179, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %178
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = bitcast %struct.TYPE_11__* %190 to i32*
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32* %191, i32** %197, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  store %struct.TYPE_11__* %201, %struct.TYPE_11__** %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 5
  store %struct.TYPE_11__** %205, %struct.TYPE_11__*** %210, align 8
  br label %240

211:                                              ; preds = %178
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @MaxBackends, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %239

215:                                              ; preds = %211
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = bitcast %struct.TYPE_11__* %218 to i32*
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32* %219, i32** %225, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 %228
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  store %struct.TYPE_11__* %229, %struct.TYPE_11__** %231, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 5
  store %struct.TYPE_11__** %233, %struct.TYPE_11__*** %238, align 8
  br label %239

239:                                              ; preds = %215, %211
  br label %240

240:                                              ; preds = %239, %187
  br label %241

241:                                              ; preds = %240, %154
  br label %242

242:                                              ; preds = %241, %123
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %258, %242
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %243
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = call i32 @SHMQueueInit(i32* %256)
  br label %258

258:                                              ; preds = %247
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  br label %243

261:                                              ; preds = %243
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = call i32 @dlist_init(i32* %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  %273 = load i32, i32* @INVALID_PGPROCNO, align 4
  %274 = call i32 @pg_atomic_init_u32(i32* %272, i32 %273)
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i32, i32* @INVALID_PGPROCNO, align 4
  %281 = call i32 @pg_atomic_init_u32(i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %261
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %3, align 4
  br label %83

285:                                              ; preds = %83
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %287 = load i32, i32* @MaxBackends, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 %288
  store %struct.TYPE_11__* %289, %struct.TYPE_11__** @AuxiliaryProcs, align 8
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %291 = load i32, i32* @MaxBackends, align 4
  %292 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %293 = add nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 %294
  store %struct.TYPE_11__* %295, %struct.TYPE_11__** @PreparedXactProcs, align 8
  %296 = call i64 @ShmemAlloc(i32 4)
  %297 = inttoptr i64 %296 to i32*
  store i32* %297, i32** @ProcStructLock, align 8
  %298 = load i32*, i32** @ProcStructLock, align 8
  %299 = call i32 @SpinLockInit(i32* %298)
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pg_atomic_init_u32(i32*, i32) #1

declare dso_local i64 @ShmemAlloc(i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @PGSemaphoreCreate(...) #1

declare dso_local i32 @InitSharedLatch(i32*) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i32 @SpinLockInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
