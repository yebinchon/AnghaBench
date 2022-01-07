; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReadBuffer_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReadBuffer_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i32 0, align 4
@pgBufferUsage = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@RBM_NORMAL = common dso_local global i64 0, align 8
@RBM_NORMAL_NO_LOG = common dso_local global i64 0, align 8
@RBM_ZERO_ON_ERROR = common dso_local global i64 0, align 8
@VacuumPageHit = common dso_local global i32 0, align 4
@VacuumCostActive = common dso_local global i64 0, align 8
@VacuumCostPageHit = common dso_local global i64 0, align 8
@VacuumCostBalance = common dso_local global i32 0, align 4
@RBM_ZERO_AND_LOCK = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@RBM_ZERO_AND_CLEANUP_LOCK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"unexpected data beyond EOF in block %u of relation %s\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"This has been seen to occur with buggy kernels; consider updating your system.\00", align 1
@BM_VALID = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@track_io_timing = common dso_local global i64 0, align 8
@zero_damaged_pages = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"invalid page in block %u of relation %s; zeroing out page\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid page in block %u of relation %s\00", align 1
@VacuumPageMiss = common dso_local global i32 0, align 4
@VacuumCostPageMiss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8, i32, i32, i64, i32, i32*)* @ReadBuffer_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadBuffer_common(%struct.TYPE_24__* %0, i8 signext %1, i32 %2, i32 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store i8 %1, i8* %10, align 1
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = call i32 @SmgrIsTemp(%struct.TYPE_24__* %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @CurrentResourceOwner, align 4
  %30 = call i32 @ResourceOwnerEnlargeBuffers(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @P_NEW, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @TRACE_POSTGRESQL_BUFFER_READ_START(i32 %35, i32 %36, i32 %41, i32 %46, i32 %51, i32 %55, i32 %56)
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %7
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @smgrnblocks(%struct.TYPE_24__* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %7
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call %struct.TYPE_25__* @LocalBufferAlloc(%struct.TYPE_24__* %68, i32 %69, i32 %70, i32* %18)
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %16, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 6), align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 6), align 4
  br label %100

77:                                               ; preds = %67
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 5), align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 5), align 4
  br label %99

83:                                               ; preds = %77
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @RBM_NORMAL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @RBM_NORMAL_NO_LOG, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @RBM_ZERO_ON_ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87, %83
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 4), align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 4), align 4
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %80
  br label %100

100:                                              ; preds = %99, %74
  br label %137

101:                                              ; preds = %64
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = load i8, i8* %10, align 1
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call %struct.TYPE_25__* @BufferAlloc(%struct.TYPE_24__* %102, i8 signext %103, i32 %104, i32 %105, i32 %106, i32* %18)
  store %struct.TYPE_25__* %107, %struct.TYPE_25__** %16, align 8
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 3), align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 3), align 4
  br label %136

113:                                              ; preds = %101
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 2), align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 2), align 4
  br label %135

119:                                              ; preds = %113
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @RBM_NORMAL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @RBM_NORMAL_NO_LOG, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @RBM_ZERO_ON_ERROR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %123, %119
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 1), align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 1), align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %116
  br label %136

136:                                              ; preds = %135, %110
  br label %137

137:                                              ; preds = %136, %100
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %275

140:                                              ; preds = %137
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %204, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %15, align 8
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* @VacuumPageHit, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @VacuumPageHit, align 4
  %147 = load i64, i64* @VacuumCostActive, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i64, i64* @VacuumCostPageHit, align 8
  %151 = load i32, i32* @VacuumCostBalance, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* @VacuumCostBalance, align 4
  br label %155

155:                                              ; preds = %149, %143
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @TRACE_POSTGRESQL_BUFFER_READ_DONE(i32 %156, i32 %157, i32 %162, i32 %167, i32 %172, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %20, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %155
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %188 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_25__* %187)
  %189 = load i32, i32* @LW_EXCLUSIVE, align 4
  %190 = call i32 @LWLockAcquire(i32 %188, i32 %189)
  br label %200

191:                                              ; preds = %182
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %197 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_25__* %196)
  %198 = call i32 @LockBufferForCleanup(i32 %197)
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199, %186
  br label %201

201:                                              ; preds = %200, %155
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %203 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_25__* %202)
  store i32 %203, i32* %8, align 4
  br label %472

204:                                              ; preds = %140
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %209 = call i64 @LocalBufHdrGetBlock(%struct.TYPE_25__* %208)
  br label %213

210:                                              ; preds = %204
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %212 = call i64 @BufHdrGetBlock(%struct.TYPE_25__* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = phi i64 [ %209, %207 ], [ %212, %210 ]
  store i64 %214, i64* %17, align 8
  %215 = load i64, i64* %17, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @PageIsNew(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %234, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* @ERROR, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load i32, i32* %11, align 4
  %225 = bitcast %struct.TYPE_26__* %223 to { i64, i64 }*
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 4
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 1
  %229 = load i64, i64* %228, align 4
  %230 = call i32 @relpath(i64 %227, i64 %229, i32 %224)
  %231 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %221, i32 %230)
  %232 = call i32 @errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %233 = call i32 @ereport(i32 %220, i32 %232)
  br label %234

234:                                              ; preds = %219, %213
  %235 = load i32, i32* %20, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %234
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = call i32 @pg_atomic_read_u32(i32* %239)
  store i32 %240, i32* %21, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* @BM_VALID, align 4
  %243 = and i32 %241, %242
  %244 = call i32 @Assert(i32 %243)
  %245 = load i32, i32* @BM_VALID, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %21, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %21, align 4
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32, i32* %21, align 4
  %252 = call i32 @pg_atomic_unlocked_write_u32(i32* %250, i32 %251)
  br label %274

253:                                              ; preds = %234
  br label %254

254:                                              ; preds = %268, %253
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %256 = call i32 @LockBufHdr(%struct.TYPE_25__* %255)
  store i32 %256, i32* %22, align 4
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* @BM_VALID, align 4
  %259 = and i32 %257, %258
  %260 = call i32 @Assert(i32 %259)
  %261 = load i32, i32* @BM_VALID, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %22, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %22, align 4
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %266 = load i32, i32* %22, align 4
  %267 = call i32 @UnlockBufHdr(%struct.TYPE_25__* %265, i32 %266)
  br label %268

268:                                              ; preds = %254
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %270 = call i32 @StartBufferIO(%struct.TYPE_25__* %269, i32 1)
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  br i1 %272, label %254, label %273

273:                                              ; preds = %268
  br label %274

274:                                              ; preds = %273, %237
  br label %275

275:                                              ; preds = %274, %137
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 0
  %278 = call i32 @pg_atomic_read_u32(i32* %277)
  %279 = load i32, i32* @BM_VALID, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i32
  %284 = call i32 @Assert(i32 %283)
  %285 = load i32, i32* %20, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %275
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %289 = call i64 @LocalBufHdrGetBlock(%struct.TYPE_25__* %288)
  br label %293

290:                                              ; preds = %275
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %292 = call i64 @BufHdrGetBlock(%struct.TYPE_25__* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = phi i64 [ %289, %287 ], [ %292, %290 ]
  store i64 %294, i64* %17, align 8
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = load i64, i64* %17, align 8
  %299 = inttoptr i64 %298 to i8*
  %300 = load i32, i32* @BLCKSZ, align 4
  %301 = call i32 @MemSet(i8* %299, i32 0, i32 %300)
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i64, i64* %17, align 8
  %306 = inttoptr i64 %305 to i8*
  %307 = call i32 @smgrextend(%struct.TYPE_24__* %302, i32 %303, i32 %304, i8* %306, i32 0)
  br label %400

308:                                              ; preds = %293
  %309 = load i64, i64* %13, align 8
  %310 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %13, align 8
  %314 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %312, %308
  %317 = load i64, i64* %17, align 8
  %318 = inttoptr i64 %317 to i8*
  %319 = load i32, i32* @BLCKSZ, align 4
  %320 = call i32 @MemSet(i8* %318, i32 0, i32 %319)
  br label %399

321:                                              ; preds = %312
  %322 = load i64, i64* @track_io_timing, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* %23, align 4
  %326 = call i32 @INSTR_TIME_SET_CURRENT(i32 %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = load i64, i64* %17, align 8
  %332 = inttoptr i64 %331 to i8*
  %333 = call i32 @smgrread(%struct.TYPE_24__* %328, i32 %329, i32 %330, i8* %332)
  %334 = load i64, i64* @track_io_timing, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %327
  %337 = load i32, i32* %24, align 4
  %338 = call i32 @INSTR_TIME_SET_CURRENT(i32 %337)
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %23, align 4
  %341 = call i32 @INSTR_TIME_SUBTRACT(i32 %339, i32 %340)
  %342 = load i32, i32* %24, align 4
  %343 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %342)
  %344 = call i32 @pgstat_count_buffer_read_time(i32 %343)
  %345 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @pgBufferUsage, i32 0, i32 0), align 4
  %346 = load i32, i32* %24, align 4
  %347 = call i32 @INSTR_TIME_ADD(i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %336, %327
  %349 = load i64, i64* %17, align 8
  %350 = trunc i64 %349 to i32
  %351 = load i32, i32* %12, align 4
  %352 = call i32 @PageIsVerified(i32 %350, i32 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %398, label %354

354:                                              ; preds = %348
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* @RBM_ZERO_ON_ERROR, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = load i64, i64* @zero_damaged_pages, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %381

361:                                              ; preds = %358, %354
  %362 = load i32, i32* @WARNING, align 4
  %363 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %364 = call i32 @errcode(i32 %363)
  %365 = load i32, i32* %12, align 4
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 0
  %368 = load i32, i32* %11, align 4
  %369 = bitcast %struct.TYPE_26__* %367 to { i64, i64 }*
  %370 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 4
  %372 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 1
  %373 = load i64, i64* %372, align 4
  %374 = call i32 @relpath(i64 %371, i64 %373, i32 %368)
  %375 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %365, i32 %374)
  %376 = call i32 @ereport(i32 %362, i32 %375)
  %377 = load i64, i64* %17, align 8
  %378 = inttoptr i64 %377 to i8*
  %379 = load i32, i32* @BLCKSZ, align 4
  %380 = call i32 @MemSet(i8* %378, i32 0, i32 %379)
  br label %397

381:                                              ; preds = %358
  %382 = load i32, i32* @ERROR, align 4
  %383 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %384 = call i32 @errcode(i32 %383)
  %385 = load i32, i32* %12, align 4
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 0
  %388 = load i32, i32* %11, align 4
  %389 = bitcast %struct.TYPE_26__* %387 to { i64, i64 }*
  %390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 4
  %392 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %389, i32 0, i32 1
  %393 = load i64, i64* %392, align 4
  %394 = call i32 @relpath(i64 %391, i64 %393, i32 %388)
  %395 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %385, i32 %394)
  %396 = call i32 @ereport(i32 %382, i32 %395)
  br label %397

397:                                              ; preds = %381, %361
  br label %398

398:                                              ; preds = %397, %348
  br label %399

399:                                              ; preds = %398, %316
  br label %400

400:                                              ; preds = %399, %297
  %401 = load i64, i64* %13, align 8
  %402 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i64, i64* %13, align 8
  %406 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %416

408:                                              ; preds = %404, %400
  %409 = load i32, i32* %20, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %408
  %412 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %413 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_25__* %412)
  %414 = load i32, i32* @LW_EXCLUSIVE, align 4
  %415 = call i32 @LWLockAcquire(i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %411, %408, %404
  %417 = load i32, i32* %20, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %416
  %420 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %420, i32 0, i32 0
  %422 = call i32 @pg_atomic_read_u32(i32* %421)
  store i32 %422, i32* %25, align 4
  %423 = load i32, i32* @BM_VALID, align 4
  %424 = load i32, i32* %25, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %25, align 4
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 0
  %428 = load i32, i32* %25, align 4
  %429 = call i32 @pg_atomic_unlocked_write_u32(i32* %427, i32 %428)
  br label %434

430:                                              ; preds = %416
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %432 = load i32, i32* @BM_VALID, align 4
  %433 = call i32 @TerminateBufferIO(%struct.TYPE_25__* %431, i32 0, i32 %432)
  br label %434

434:                                              ; preds = %430, %419
  %435 = load i32, i32* @VacuumPageMiss, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* @VacuumPageMiss, align 4
  %437 = load i64, i64* @VacuumCostActive, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %434
  %440 = load i64, i64* @VacuumCostPageMiss, align 8
  %441 = load i32, i32* @VacuumCostBalance, align 4
  %442 = sext i32 %441 to i64
  %443 = add nsw i64 %442, %440
  %444 = trunc i64 %443 to i32
  store i32 %444, i32* @VacuumCostBalance, align 4
  br label %445

445:                                              ; preds = %439, %434
  %446 = load i32, i32* %11, align 4
  %447 = load i32, i32* %12, align 4
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %454 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %19, align 4
  %468 = load i32, i32* %18, align 4
  %469 = call i32 @TRACE_POSTGRESQL_BUFFER_READ_DONE(i32 %446, i32 %447, i32 %452, i32 %457, i32 %462, i32 %466, i32 %467, i32 %468)
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %471 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_25__* %470)
  store i32 %471, i32* %8, align 4
  br label %472

472:                                              ; preds = %445, %201
  %473 = load i32, i32* %8, align 4
  ret i32 %473
}

declare dso_local i32 @SmgrIsTemp(%struct.TYPE_24__*) #1

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_READ_START(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @smgrnblocks(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @LocalBufferAlloc(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_25__* @BufferAlloc(%struct.TYPE_24__*, i8 signext, i32, i32, i32, i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_READ_DONE(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_25__*) #1

declare dso_local i32 @LockBufferForCleanup(i32) #1

declare dso_local i32 @BufferDescriptorGetBuffer(%struct.TYPE_25__*) #1

declare dso_local i64 @LocalBufHdrGetBlock(%struct.TYPE_25__*) #1

declare dso_local i64 @BufHdrGetBlock(%struct.TYPE_25__*) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @relpath(i64, i64, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pg_atomic_unlocked_write_u32(i32*, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_25__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @StartBufferIO(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @smgrextend(%struct.TYPE_24__*, i32, i32, i8*, i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @smgrread(%struct.TYPE_24__*, i32, i32, i8*) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i32 @pgstat_count_buffer_read_time(i32) #1

declare dso_local i32 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @INSTR_TIME_ADD(i32, i32) #1

declare dso_local i32 @PageIsVerified(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @TerminateBufferIO(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
