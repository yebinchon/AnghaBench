; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_doinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_doinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8* }

@BrinMaxItemSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"index row size %zu exceeds maximum %zu for index \22%s\22\00", align 1
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@BRIN_PAGETYPE_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to add BRIN tuple to new page\00", align 1
@XLOG_BRIN_INSERT = common dso_local global i32 0, align 4
@XLOG_BRIN_INIT_PAGE = common dso_local global i32 0, align 4
@SizeOfBrinInsert = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_BRIN_ID = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"inserted tuple (%u,%u) for range starting at %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @brin_doinsert(i32 %0, i8* %1, i32* %2, i32* %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @MAXALIGN(i32 %27)
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @BrinMaxItemSize, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %7
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @BrinMaxItemSize, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @RelationGetRelationName(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %42)
  %44 = call i32 @ereport(i32 %36, i32 %43)
  %45 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %45, i64* %8, align 8
  br label %222

46:                                               ; preds = %7
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @brinRevmapExtend(i32* %47, i8* %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @BufferIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %58 = call i32 @LockBuffer(i32 %56, i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BufferGetPage(i32 %60)
  %62 = call i32 @br_page_get_freespace(i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @UnlockReleaseBuffer(i32 %67)
  %69 = load i32, i32* @InvalidBuffer, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @BufferIsValid(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %84, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @InvalidBuffer, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @brin_getinsertbuffer(i32 %79, i32 %80, i32 %81, i32* %22)
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @BufferIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %78, label %90

90:                                               ; preds = %84
  br label %92

91:                                               ; preds = %72
  store i32 0, i32* %22, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32*, i32** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @brinLockRevmapPageForUpdate(i32* %93, i8* %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @BufferGetPage(i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @BufferGetBlockNumber(i32 %100)
  store i8* %101, i8** %17, align 8
  %102 = call i32 (...) @START_CRIT_SECTION()
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @BRIN_PAGETYPE_REGULAR, align 4
  %108 = call i32 @brin_page_init(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = ptrtoint i32* %111 to i32
  %113 = load i32, i32* %15, align 4
  %114 = load i64, i64* @InvalidOffsetNumber, align 8
  %115 = call i64 @PageAddItem(i32 %110, i32 %112, i32 %113, i64 %114, i32 0, i32 0)
  store i64 %115, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* @InvalidOffsetNumber, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @ERROR, align 4
  %121 = call i32 @elog(i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %109
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MarkBufferDirty(i32 %124)
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @br_page_get_freespace(i32 %129)
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i8*, i8** %17, align 8
  %133 = load i64, i64* %18, align 8
  %134 = call i32 @ItemPointerSet(i32* %21, i8* %132, i64 %133)
  %135 = load i32, i32* %20, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %21, align 4
  %139 = call i32 @brinSetHeapBlockItemptr(i32 %135, i8* %136, i8* %137, i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @MarkBufferDirty(i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = call i64 @RelationNeedsWAL(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %193

145:                                              ; preds = %131
  %146 = load i32, i32* @XLOG_BRIN_INSERT, align 4
  %147 = load i32, i32* %22, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @XLOG_BRIN_INIT_PAGE, align 4
  br label %152

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = or i32 %146, %153
  store i32 %154, i32* %25, align 4
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i8* %155, i8** %156, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %157, i8** %158, align 8
  %159 = load i64, i64* %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = call i32 (...) @XLogBeginInsert()
  %162 = bitcast %struct.TYPE_2__* %23 to i8*
  %163 = load i32, i32* @SizeOfBrinInsert, align 4
  %164 = call i32 @XLogRegisterData(i8* %162, i32 %163)
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @REGBUF_STANDARD, align 4
  %168 = load i32, i32* %22, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %152
  %171 = load i32, i32* @REGBUF_WILL_INIT, align 4
  br label %173

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 0, %172 ]
  %175 = or i32 %167, %174
  %176 = call i32 @XLogRegisterBuffer(i32 0, i32 %166, i32 %175)
  %177 = load i32*, i32** %14, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @XLogRegisterBufData(i32 0, i8* %178, i32 %179)
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @XLogRegisterBuffer(i32 1, i32 %181, i32 0)
  %183 = load i32, i32* @RM_BRIN_ID, align 4
  %184 = load i32, i32* %25, align 4
  %185 = call i32 @XLogInsert(i32 %183, i32 %184)
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %24, align 4
  %188 = call i32 @PageSetLSN(i32 %186, i32 %187)
  %189 = load i32, i32* %20, align 4
  %190 = call i32 @BufferGetPage(i32 %189)
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @PageSetLSN(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %173, %131
  %194 = call i32 (...) @END_CRIT_SECTION()
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %198 = call i32 @LockBuffer(i32 %196, i32 %197)
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %201 = call i32 @LockBuffer(i32 %199, i32 %200)
  %202 = load i32, i32* @DEBUG2, align 4
  %203 = load i8*, i8** %17, align 8
  %204 = load i64, i64* %18, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = call i32 @BRIN_elog(i32 %206)
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %193
  %211 = load i32, i32* %9, align 4
  %212 = load i8*, i8** %17, align 8
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @RecordPageWithFreeSpace(i32 %211, i8* %212, i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = load i8*, i8** %17, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = getelementptr i8, i8* %217, i64 1
  %219 = call i32 @FreeSpaceMapVacuumRange(i32 %215, i8* %216, i8* %218)
  br label %220

220:                                              ; preds = %210, %193
  %221 = load i64, i64* %18, align 8
  store i64 %221, i64* %8, align 8
  br label %222

222:                                              ; preds = %220, %35
  %223 = load i64, i64* %8, align 8
  ret i64 %223
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @brinRevmapExtend(i32*, i8*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @br_page_get_freespace(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @brin_getinsertbuffer(i32, i32, i32, i32*) #1

declare dso_local i32 @brinLockRevmapPageForUpdate(i32*, i8*) #1

declare dso_local i8* @BufferGetBlockNumber(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @brin_page_init(i32, i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i8*, i64) #1

declare dso_local i32 @brinSetHeapBlockItemptr(i32, i8*, i8*, i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @BRIN_elog(i32) #1

declare dso_local i32 @RecordPageWithFreeSpace(i32, i8*, i32) #1

declare dso_local i32 @FreeSpaceMapVacuumRange(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
