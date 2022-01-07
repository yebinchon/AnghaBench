; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferSync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }

@BM_DIRTY = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@CHECKPOINT_IS_SHUTDOWN = common dso_local global i32 0, align 4
@CHECKPOINT_END_OF_RECOVERY = common dso_local global i32 0, align 4
@CHECKPOINT_FLUSH_ALL = common dso_local global i32 0, align 4
@BM_PERMANENT = common dso_local global i32 0, align 4
@NBuffers = common dso_local global i32 0, align 4
@BM_CHECKPOINT_NEEDED = common dso_local global i32 0, align 4
@CkptBufferIds = common dso_local global %struct.TYPE_22__* null, align 8
@checkpoint_flush_after = common dso_local global i32 0, align 4
@ckpt_buforder_comparator = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ts_ckpt_progress_comparator = common dso_local global i32 0, align 4
@BUF_WRITTEN = common dso_local global i32 0, align 4
@BgWriterStats = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@CheckpointStats = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @BufferSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BufferSync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  %23 = load i32, i32* @BM_DIRTY, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @CurrentResourceOwner, align 4
  %25 = call i32 @ResourceOwnerEnlargeBuffers(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @CHECKPOINT_IS_SHUTDOWN, align 4
  %28 = load i32, i32* @CHECKPOINT_END_OF_RECOVERY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CHECKPOINT_FLUSH_ALL, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @BM_PERMANENT, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %95, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NBuffers, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_23__* @GetBufferDescriptor(i32 %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %15, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %47 = call i32 @LockBufHdr(%struct.TYPE_23__* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %43
  %54 = load i32, i32* @BM_CHECKPOINT_NEEDED, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** @CkptBufferIds, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i64 %60
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %16, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %53, %43
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @UnlockBufHdr(%struct.TYPE_23__* %92, i32 %93)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %39

98:                                               ; preds = %39
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %310

102:                                              ; preds = %98
  %103 = call i32 @WritebackContextInit(i32* %14, i32* @checkpoint_flush_after)
  %104 = load i32, i32* @NBuffers, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @TRACE_POSTGRESQL_BUFFER_SYNC_START(i32 %104, i32 %105)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** @CkptBufferIds, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @ckpt_buforder_comparator, align 4
  %110 = call i32 @qsort(%struct.TYPE_22__* %107, i32 %108, i32 32, i32 %109)
  store i32 0, i32* %6, align 4
  %111 = load i64, i64* @InvalidOid, align 8
  store i64 %111, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %174, %102
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %177

116:                                              ; preds = %112
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** @CkptBufferIds, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @InvalidOid, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %116
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %18, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126, %116
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 40, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %138 = icmp eq %struct.TYPE_21__* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %19, align 4
  %141 = call i64 @palloc(i32 %140)
  %142 = inttoptr i64 %141 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %9, align 8
  br label %148

143:                                              ; preds = %130
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i64 @repalloc(%struct.TYPE_21__* %144, i32 %145)
  %147 = inttoptr i64 %146 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %9, align 8
  br label %148

148:                                              ; preds = %143, %139
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i64 %152
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %17, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %155 = call i32 @memset(%struct.TYPE_21__* %154, i32 0, i32 40)
  %156 = load i64, i64* %18, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 5
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i64, i64* %18, align 8
  store i64 %162, i64* %10, align 8
  br label %169

163:                                              ; preds = %126
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i64 %167
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %17, align 8
  br label %169

169:                                              ; preds = %163, %148
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %112

177:                                              ; preds = %112
  %178 = load i32, i32* %6, align 4
  %179 = icmp sgt i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @Assert(i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @ts_ckpt_progress_comparator, align 4
  %184 = call i32* @binaryheap_allocate(i32 %182, i32 %183, i32* null)
  store i32* %184, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %205, %177
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %208

189:                                              ; preds = %185
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i64 %192
  store %struct.TYPE_21__* %193, %struct.TYPE_21__** %20, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %194, %197
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %203 = call i32 @PointerGetDatum(%struct.TYPE_21__* %202)
  %204 = call i32 @binaryheap_add_unordered(i32* %201, i32 %203)
  br label %205

205:                                              ; preds = %189
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %185

208:                                              ; preds = %185
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @binaryheap_build(i32* %209)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %289, %208
  %212 = load i32*, i32** %11, align 8
  %213 = call i32 @binaryheap_empty(i32* %212)
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  br i1 %215, label %216, label %297

216:                                              ; preds = %211
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %21, align 8
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @binaryheap_first(i32* %217)
  %219 = call i64 @DatumGetPointer(i32 %218)
  %220 = inttoptr i64 %219 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %220, %struct.TYPE_21__** %22, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** @CkptBufferIds, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %4, align 4
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, -1
  %231 = zext i1 %230 to i32
  %232 = call i32 @Assert(i32 %231)
  %233 = load i32, i32* %4, align 4
  %234 = call %struct.TYPE_23__* @GetBufferDescriptor(i32 %233)
  store %struct.TYPE_23__* %234, %struct.TYPE_23__** %21, align 8
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = call i32 @pg_atomic_read_u32(i32* %238)
  %240 = load i32, i32* @BM_CHECKPOINT_NEEDED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %216
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @SyncOneBuffer(i32 %244, i32 0, i32* %14)
  %246 = load i32, i32* @BUF_WRITTEN, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %243
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @TRACE_POSTGRESQL_BUFFER_SYNC_WRITTEN(i32 %250)
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @BgWriterStats, i32 0, i32 0), align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @BgWriterStats, i32 0, i32 0), align 4
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %249, %243
  br label %257

257:                                              ; preds = %256, %216
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %266, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = icmp eq i64 %275, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %257
  %282 = load i32*, i32** %11, align 8
  %283 = call i32 @binaryheap_remove_first(i32* %282)
  br label %289

284:                                              ; preds = %257
  %285 = load i32*, i32** %11, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %287 = call i32 @PointerGetDatum(%struct.TYPE_21__* %286)
  %288 = call i32 @binaryheap_replace_first(i32* %285, i32 %287)
  br label %289

289:                                              ; preds = %284, %281
  %290 = load i32, i32* %2, align 4
  %291 = load i32, i32* %7, align 4
  %292 = sitofp i32 %291 to double
  %293 = load i32, i32* %5, align 4
  %294 = sitofp i32 %293 to double
  %295 = fdiv double %292, %294
  %296 = call i32 @CheckpointWriteDelay(i32 %290, double %295)
  br label %211

297:                                              ; preds = %211
  %298 = call i32 @IssuePendingWritebacks(i32* %14)
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %300 = call i32 @pfree(%struct.TYPE_21__* %299)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  %301 = load i32*, i32** %11, align 8
  %302 = call i32 @binaryheap_free(i32* %301)
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @CheckpointStats, i32 0, i32 0), align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @CheckpointStats, i32 0, i32 0), align 4
  %306 = load i32, i32* @NBuffers, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @TRACE_POSTGRESQL_BUFFER_SYNC_DONE(i32 %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %297, %101
  ret void
}

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local %struct.TYPE_23__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_23__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @WritebackContextInit(i32*, i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_SYNC_START(i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @binaryheap_allocate(i32, i32, i32*) #1

declare dso_local i32 @binaryheap_add_unordered(i32*, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_21__*) #1

declare dso_local i32 @binaryheap_build(i32*) #1

declare dso_local i32 @binaryheap_empty(i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @binaryheap_first(i32*) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @SyncOneBuffer(i32, i32, i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_SYNC_WRITTEN(i32) #1

declare dso_local i32 @binaryheap_remove_first(i32*) #1

declare dso_local i32 @binaryheap_replace_first(i32*, i32) #1

declare dso_local i32 @CheckpointWriteDelay(i32, double) #1

declare dso_local i32 @IssuePendingWritebacks(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_21__*) #1

declare dso_local i32 @binaryheap_free(i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_SYNC_DONE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
