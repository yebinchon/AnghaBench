; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brininsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brininsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32* }
%struct.TYPE_25__ = type { i8*, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }

@InvalidBuffer = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32* null, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@AVW_BRINSummarizeRange = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"request for BRIN range summarization for index \22%s\22 page %u was not recorded\00", align 1
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"brininsert cxt\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@BRIN_PROCNUM_ADDVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brininsert(%struct.TYPE_24__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_24__* %4, i32 %5, %struct.TYPE_25__* %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_27__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_26__*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_25__* %6, %struct.TYPE_25__** %14, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %18, align 8
  %46 = load i32, i32* @InvalidBuffer, align 4
  store i32 %46, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %47 = load i32*, i32** @CurrentMemoryContext, align 8
  store i32* %47, i32** %22, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = call i32 @BrinGetAutoSummarize(%struct.TYPE_24__* %48)
  store i32 %49, i32* %23, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = call i32* @brinRevmapInitialize(%struct.TYPE_24__* %50, i32* %15, i32* null)
  store i32* %51, i32** %19, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ItemPointerGetBlockNumber(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %236, %7
  store i32 0, i32* %24, align 4
  %60 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %61 = load i32, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %59
  %64 = load i32, i32* %17, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %63
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @ItemPointerGetOffsetNumber(i32 %71)
  %73 = load i64, i64* @FirstOffsetNumber, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %29, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* %29, align 4
  %80 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %81 = call i32* @brinGetTupleForHeapBlock(i32* %78, i32 %79, i32* %20, i32* %25, i32* null, i32 %80, i32* null)
  store i32* %81, i32** %30, align 8
  %82 = load i32*, i32** %30, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @AVW_BRINSummarizeRange, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = call i32 @RelationGetRelid(%struct.TYPE_24__* %86)
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @AutoVacuumRequestWork(i32 %85, i32 %87, i32 %88)
  store i32 %89, i32* %31, align 4
  %90 = load i32, i32* %31, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @LOG, align 4
  %94 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %97 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %96)
  %98 = load i32, i32* %29, align 4
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  %100 = call i32 @ereport(i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %92, %84
  br label %106

102:                                              ; preds = %75
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %105 = call i32 @LockBuffer(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %70, %66, %63, %59
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %111 = call i32* @brinGetTupleForHeapBlock(i32* %108, i32 %109, i32* %20, i32* %25, i32* null, i32 %110, i32* null)
  store i32* %111, i32** %26, align 8
  %112 = load i32*, i32** %26, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %241

115:                                              ; preds = %107
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %117 = icmp eq %struct.TYPE_26__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @MemoryContextSwitchTo(i32* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %124 = call %struct.TYPE_26__* @brin_build_desc(%struct.TYPE_24__* %123)
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %18, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %126 = bitcast %struct.TYPE_26__* %125 to i8*
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = call i32 @MemoryContextSwitchTo(i32* %129)
  br label %131

131:                                              ; preds = %118, %115
  %132 = load i32*, i32** %21, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32*, i32** @CurrentMemoryContext, align 8
  %136 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %137 = call i32* @AllocSetContextCreate(i32* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  store i32* %137, i32** %21, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = call i32 @MemoryContextSwitchTo(i32* %138)
  br label %140

140:                                              ; preds = %134, %131
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %142 = load i32*, i32** %26, align 8
  %143 = call %struct.TYPE_27__* @brin_deform_tuple(%struct.TYPE_26__* %141, i32* %142, i32* null)
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %27, align 8
  store i32 0, i32* %28, align 4
  br label %144

144:                                              ; preds = %191, %140
  %145 = load i32, i32* %28, align 4
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %194

152:                                              ; preds = %144
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = load i32, i32* %28, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i64 %157
  store %struct.TYPE_26__* %158, %struct.TYPE_26__** %33, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %160 = load i32, i32* %28, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* @BRIN_PROCNUM_ADDVALUE, align 4
  %163 = call i32* @index_getprocinfo(%struct.TYPE_24__* %159, i32 %161, i32 %162)
  store i32* %163, i32** %34, align 8
  %164 = load i32*, i32** %34, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %28, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %173 = call i32 @PointerGetDatum(%struct.TYPE_26__* %172)
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  %175 = call i32 @PointerGetDatum(%struct.TYPE_26__* %174)
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %28, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* %28, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @FunctionCall4Coll(i32* %164, i32 %171, i32 %173, i32 %175, i32 %180, i32 %185)
  store i32 %186, i32* %32, align 4
  %187 = load i32, i32* %32, align 4
  %188 = call i32 @DatumGetBool(i32 %187)
  %189 = load i32, i32* %24, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %24, align 4
  br label %191

191:                                              ; preds = %152
  %192 = load i32, i32* %28, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %28, align 4
  br label %144

194:                                              ; preds = %144
  %195 = load i32, i32* %24, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %200 = call i32 @LockBuffer(i32 %198, i32 %199)
  br label %240

201:                                              ; preds = %194
  %202 = load i32, i32* %20, align 4
  %203 = call i32 @BufferGetPage(i32 %202)
  store i32 %203, i32* %35, align 4
  %204 = load i32, i32* %35, align 4
  %205 = load i32, i32* %25, align 4
  %206 = call i32 @PageGetItemId(i32 %204, i32 %205)
  store i32 %206, i32* %36, align 4
  %207 = load i32, i32* %36, align 4
  %208 = call i32 @ItemIdGetLength(i32 %207)
  store i32 %208, i32* %37, align 4
  %209 = load i32*, i32** %26, align 8
  %210 = load i32, i32* %37, align 4
  %211 = call i32* @brin_copy_tuple(i32* %209, i32 %210, i32* null, i32* null)
  store i32* %211, i32** %38, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %215 = call i32* @brin_form_tuple(%struct.TYPE_26__* %212, i32 %213, %struct.TYPE_27__* %214, i32* %39)
  store i32* %215, i32** %40, align 8
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %37, align 4
  %218 = load i32, i32* %39, align 4
  %219 = call i32 @brin_can_do_samepage_update(i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %41, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %222 = call i32 @LockBuffer(i32 %220, i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i32*, i32** %19, align 8
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %25, align 4
  %229 = load i32*, i32** %38, align 8
  %230 = load i32, i32* %37, align 4
  %231 = load i32*, i32** %40, align 8
  %232 = load i32, i32* %39, align 4
  %233 = load i32, i32* %41, align 4
  %234 = call i32 @brin_doupdate(%struct.TYPE_24__* %223, i32 %224, i32* %225, i32 %226, i32 %227, i32 %228, i32* %229, i32 %230, i32* %231, i32 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %201
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @MemoryContextResetAndDeleteChildren(i32* %237)
  br label %59

239:                                              ; preds = %201
  br label %240

240:                                              ; preds = %239, %197
  br label %241

241:                                              ; preds = %240, %114
  %242 = load i32*, i32** %19, align 8
  %243 = call i32 @brinRevmapTerminate(i32* %242)
  %244 = load i32, i32* %20, align 4
  %245 = call i64 @BufferIsValid(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %20, align 4
  %249 = call i32 @ReleaseBuffer(i32 %248)
  br label %250

250:                                              ; preds = %247, %241
  %251 = load i32*, i32** %22, align 8
  %252 = call i32 @MemoryContextSwitchTo(i32* %251)
  %253 = load i32*, i32** %21, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i32*, i32** %21, align 8
  %257 = call i32 @MemoryContextDelete(i32* %256)
  br label %258

258:                                              ; preds = %255, %250
  ret i32 0
}

declare dso_local i32 @BrinGetAutoSummarize(%struct.TYPE_24__*) #1

declare dso_local i32* @brinRevmapInitialize(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32) #1

declare dso_local i32* @brinGetTupleForHeapBlock(i32*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @AutoVacuumRequestWork(i32, i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_24__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_24__*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32*) #1

declare dso_local %struct.TYPE_26__* @brin_build_desc(%struct.TYPE_24__*) #1

declare dso_local i32* @AllocSetContextCreate(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_27__* @brin_deform_tuple(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32* @index_getprocinfo(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @FunctionCall4Coll(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_26__*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32* @brin_copy_tuple(i32*, i32, i32*, i32*) #1

declare dso_local i32* @brin_form_tuple(%struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @brin_can_do_samepage_update(i32, i32, i32) #1

declare dso_local i32 @brin_doupdate(%struct.TYPE_24__*, i32, i32*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32*) #1

declare dso_local i32 @brinRevmapTerminate(i32*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
