; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@HEAP_INSERT_SPECULATIVE = common dso_local global i32 0, align 4
@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@HEAP_INSERT_SKIP_WAL = common dso_local global i32 0, align 4
@XLOG_HEAP_INSERT = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@XLOG_HEAP_INIT_PAGE = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@XLH_INSERT_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@XLH_INSERT_IS_SPECULATIVE = common dso_local global i32 0, align 4
@HEAP_INSERT_NO_LOGICAL = common dso_local global i32 0, align 4
@XLH_INSERT_CONTAINS_NEW_TUPLE = common dso_local global i32 0, align 4
@REGBUF_KEEP_DATA = common dso_local global i32 0, align 4
@SizeOfHeapInsert = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfHeapHeader = common dso_local global i32 0, align 4
@SizeofHeapTupleHeader = common dso_local global i32 0, align 4
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_insert(i32 %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = call i32 (...) @GetCurrentTransactionId()
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* @InvalidBuffer, align 8
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_15__* @heap_prepare_insert(i32 %24, %struct.TYPE_15__* %25, i32 %26, i32 %27, i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %12, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @InvalidBuffer, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @RelationGetBufferForTuple(i32 %30, i32 %33, i64 %34, i32 %35, i32 %36, i64* %14, i32* null)
  store i64 %37, i64* %13, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* @InvalidBuffer, align 8
  %40 = call i32 @CheckForSerializableConflictIn(i32 %38, i32* null, i64 %39)
  %41 = call i32 (...) @START_CRIT_SECTION()
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HEAP_INSERT_SPECULATIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @RelationPutHeapTuple(i32 %42, i64 %43, %struct.TYPE_15__* %44, i32 %49)
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @BufferGetPage(i64 %51)
  %53 = call i64 @PageIsAllVisible(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @BufferGetPage(i64 %56)
  %58 = call i32 @PageClearAllVisible(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = call i64 @ItemPointerGetBlockNumber(i32* %61)
  %63 = load i64, i64* %14, align 8
  %64 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %65 = call i32 @visibilitymap_clear(i32 %59, i64 %62, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %5
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @MarkBufferDirty(i64 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @HEAP_INSERT_SKIP_WAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %206, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @RelationNeedsWAL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %206

77:                                               ; preds = %73
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @BufferGetPage(i64 %78)
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* @XLOG_HEAP_INSERT, align 4
  store i32 %80, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @RelationIsAccessibleInLogicalDecoding(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = call i32 @log_heap_new_cid(i32 %85, %struct.TYPE_15__* %86)
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = call i64 @ItemPointerGetOffsetNumber(i32* %90)
  %92 = load i64, i64* @FirstOffsetNumber, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32, i32* %19, align 4
  %96 = call i64 @PageGetMaxOffsetNumber(i32 %95)
  %97 = load i64, i64* @FirstOffsetNumber, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @XLOG_HEAP_INIT_PAGE, align 4
  %101 = load i32, i32* %20, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %104 = load i32, i32* %21, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %99, %94, %88
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = call i64 @ItemPointerGetOffsetNumber(i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i32, i32* @XLH_INSERT_ALL_VISIBLE_CLEARED, align 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %106
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @HEAP_INSERT_SPECULATIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @XLH_INSERT_IS_SPECULATIVE, align 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = call i64 @ItemPointerGetBlockNumber(i32* %131)
  %133 = load i64, i64* %13, align 8
  %134 = call i64 @BufferGetBlockNumber(i64 %133)
  %135 = icmp eq i64 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @Assert(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @RelationIsLogicallyLogged(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %129
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @HEAP_INSERT_NO_LOGICAL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @XLH_INSERT_CONTAINS_NEW_TUPLE, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @REGBUF_KEEP_DATA, align 4
  %152 = load i32, i32* %21, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %21, align 4
  br label %154

154:                                              ; preds = %146, %141, %129
  %155 = call i32 (...) @XLogBeginInsert()
  %156 = bitcast %struct.TYPE_13__* %16 to i8*
  %157 = load i32, i32* @SizeOfHeapInsert, align 4
  %158 = call i32 @XLogRegisterData(i8* %156, i32 %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 %163, i32* %164, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = load i64, i64* %13, align 8
  %178 = load i32, i32* @REGBUF_STANDARD, align 4
  %179 = load i32, i32* %21, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @XLogRegisterBuffer(i32 0, i64 %177, i32 %180)
  %182 = bitcast %struct.TYPE_14__* %17 to i8*
  %183 = load i32, i32* @SizeOfHeapHeader, align 4
  %184 = call i32 @XLogRegisterBufData(i32 0, i8* %182, i32 %183)
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = bitcast %struct.TYPE_12__* %187 to i8*
  %189 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i32 @XLogRegisterBufData(i32 0, i8* %191, i32 %196)
  %198 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %199 = call i32 @XLogSetRecordFlags(i32 %198)
  %200 = load i32, i32* @RM_HEAP_ID, align 4
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @XLogInsert(i32 %200, i32 %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @PageSetLSN(i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %154, %73, %66
  %207 = call i32 (...) @END_CRIT_SECTION()
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @UnlockReleaseBuffer(i64 %208)
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* @InvalidBuffer, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @ReleaseBuffer(i64 %214)
  br label %216

216:                                              ; preds = %213, %206
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %219 = call i32 @CacheInvalidateHeapTuple(i32 %217, %struct.TYPE_15__* %218, i32* null)
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @pgstat_count_heap_insert(i32 %220, i32 1)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = icmp ne %struct.TYPE_15__* %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %216
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %232 = call i32 @heap_freetuple(%struct.TYPE_15__* %231)
  br label %233

233:                                              ; preds = %225, %216
  ret void
}

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local %struct.TYPE_15__* @heap_prepare_insert(i32, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @RelationGetBufferForTuple(i32, i32, i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @RelationPutHeapTuple(i32, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @PageClearAllVisible(i32) #1

declare dso_local i32 @visibilitymap_clear(i32, i64, i64, i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i64 @RelationIsAccessibleInLogicalDecoding(i32) #1

declare dso_local i32 @log_heap_new_cid(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i64 @RelationIsLogicallyLogged(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i32 @CacheInvalidateHeapTuple(i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @pgstat_count_heap_insert(i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
