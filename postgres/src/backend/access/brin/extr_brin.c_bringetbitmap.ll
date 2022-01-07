; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_bringetbitmap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_bringetbitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, i32, i64, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_24__*, i64 }
%struct.TYPE_22__ = type { i64 }

@InvalidBuffer = common dso_local global i64 0, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bringetbitmap cxt\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@BRIN_PROCNUM_CONSISTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bringetbitmap(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_26__*, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32* %1, i32** %4, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load i64, i64* @InvalidBuffer, align 8
  store i64 %35, i64* %6, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %39, %struct.TYPE_27__** %10, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pgstat_count_index_scan(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @RelationGetRelid(i32 %45)
  %47 = call i32 @IndexGetRelation(i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AccessShareLock, align 4
  %50 = call i32 @table_open(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @RelationGetNumberOfBlocks(i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @AccessShareLock, align 4
  %55 = call i32 @table_close(i32 %53, i32 %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_26__* @palloc0(i32 %63)
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %14, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = call %struct.TYPE_28__* @brin_new_memtuple(%struct.TYPE_24__* %65)
  store %struct.TYPE_28__* %66, %struct.TYPE_28__** %17, align 8
  %67 = load i32, i32* @CurrentMemoryContext, align 4
  %68 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %69 = call i32 @AllocSetContextCreate(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @MemoryContextSwitchTo(i32 %70)
  store i32 %71, i32* %15, align 4
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %238, %2
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %244

76:                                               ; preds = %72
  store i32 0, i32* %21, align 4
  %77 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @MemoryContextResetAndDeleteChildren(i32 %78)
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32* @brinGetTupleForHeapBlock(i32 %82, i64 %83, i64* %6, i32* %23, i32* %24, i32 %84, i32 %87)
  store i32* %88, i32** %22, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %76
  store i32 1, i32* %21, align 4
  %92 = load i32*, i32** %22, align 8
  %93 = load i32, i32* %24, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = call i32* @brin_copy_tuple(i32* %92, i32 %93, i32* %94, i32* %19)
  store i32* %95, i32** %18, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %98 = call i32 @LockBuffer(i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %76
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 1, i32* %20, align 4
  br label %209

103:                                              ; preds = %99
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %107 = call %struct.TYPE_28__* @brin_deform_tuple(%struct.TYPE_24__* %104, i32* %105, %struct.TYPE_28__* %106)
  store %struct.TYPE_28__* %107, %struct.TYPE_28__** %17, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 1, i32* %20, align 4
  br label %208

113:                                              ; preds = %103
  store i32 1, i32* %20, align 4
  store i32 0, i32* %25, align 4
  br label %114

114:                                              ; preds = %204, %113
  %115 = load i32, i32* %25, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %207

120:                                              ; preds = %114
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = load i32, i32* %25, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i64 %125
  store %struct.TYPE_24__* %126, %struct.TYPE_24__** %26, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %27, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = load i32, i32* %27, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i64 %135
  store %struct.TYPE_24__* %136, %struct.TYPE_24__** %28, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SK_ISNULL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %120
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = load i32, i32* %27, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call %struct.TYPE_22__* @TupleDescAttr(%struct.TYPE_23__* %149, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %146, %154
  br label %156

156:                                              ; preds = %143, %120
  %157 = phi i1 [ true, %120 ], [ %155, %143 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @Assert(i32 %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %161 = load i32, i32* %27, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @InvalidOid, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %156
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* @BRIN_PROCNUM_CONSISTENT, align 4
  %173 = call %struct.TYPE_26__* @index_getprocinfo(i32 %170, i32 %171, i32 %172)
  store %struct.TYPE_26__* %173, %struct.TYPE_26__** %30, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %175 = load i32, i32* %27, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i64 %177
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %180 = load i32, i32* @CurrentMemoryContext, align 4
  %181 = call i32 @fmgr_info_copy(%struct.TYPE_26__* %178, %struct.TYPE_26__* %179, i32 %180)
  br label %182

182:                                              ; preds = %169, %156
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %184 = load i32, i32* %27, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i64 %186
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %192 = call i32 @PointerGetDatum(%struct.TYPE_24__* %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %194 = call i32 @PointerGetDatum(%struct.TYPE_24__* %193)
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %196 = call i32 @PointerGetDatum(%struct.TYPE_24__* %195)
  %197 = call i32 @FunctionCall3Coll(%struct.TYPE_26__* %187, i64 %190, i32 %192, i32 %194, i32 %196)
  store i32 %197, i32* %29, align 4
  %198 = load i32, i32* %29, align 4
  %199 = call i32 @DatumGetBool(i32 %198)
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %182
  br label %207

203:                                              ; preds = %182
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %25, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %25, align 4
  br label %114

207:                                              ; preds = %202, %114
  br label %208

208:                                              ; preds = %207, %112
  br label %209

209:                                              ; preds = %208, %102
  %210 = load i32, i32* %20, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %209
  %213 = load i64, i64* %12, align 8
  store i64 %213, i64* %31, align 8
  br label %214

214:                                              ; preds = %233, %212
  %215 = load i64, i64* %31, align 8
  %216 = load i64, i64* %12, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %216, %219
  %221 = sub nsw i64 %220, 1
  %222 = icmp sle i64 %215, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %214
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @MemoryContextSwitchTo(i32 %224)
  %226 = load i32*, i32** %4, align 8
  %227 = load i64, i64* %31, align 8
  %228 = call i32 @tbm_add_page(i32* %226, i64 %227)
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @MemoryContextSwitchTo(i32 %231)
  br label %233

233:                                              ; preds = %223
  %234 = load i64, i64* %31, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %31, align 8
  br label %214

236:                                              ; preds = %214
  br label %237

237:                                              ; preds = %236, %209
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %12, align 8
  %243 = add nsw i64 %242, %241
  store i64 %243, i64* %12, align 8
  br label %72

244:                                              ; preds = %72
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @MemoryContextSwitchTo(i32 %245)
  %247 = load i32, i32* %16, align 4
  %248 = call i32 @MemoryContextDelete(i32 %247)
  %249 = load i64, i64* %6, align 8
  %250 = load i64, i64* @InvalidBuffer, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load i64, i64* %6, align 8
  %254 = call i32 @ReleaseBuffer(i64 %253)
  br label %255

255:                                              ; preds = %252, %244
  %256 = load i32, i32* %13, align 4
  %257 = mul nsw i32 %256, 10
  ret i32 %257
}

declare dso_local i32 @pgstat_count_index_scan(i32) #1

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local %struct.TYPE_26__* @palloc0(i32) #1

declare dso_local %struct.TYPE_28__* @brin_new_memtuple(%struct.TYPE_24__*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32) #1

declare dso_local i32* @brinGetTupleForHeapBlock(i32, i64, i64*, i32*, i32*, i32, i32) #1

declare dso_local i32* @brin_copy_tuple(i32*, i32, i32*, i32*) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local %struct.TYPE_28__* @brin_deform_tuple(%struct.TYPE_24__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_22__* @TupleDescAttr(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_26__* @index_getprocinfo(i32, i32, i32) #1

declare dso_local i32 @fmgr_info_copy(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @FunctionCall3Coll(%struct.TYPE_26__*, i64, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_24__*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @tbm_add_page(i32*, i64) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
