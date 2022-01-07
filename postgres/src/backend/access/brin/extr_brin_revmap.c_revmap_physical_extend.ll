; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_revmap_physical_extend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_revmap_physical_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"unexpected page type 0x%04X in BRIN index \22%s\22 block %u\00", align 1
@BRIN_PAGETYPE_REVMAP = common dso_local global i32 0, align 4
@SizeOfBrinRevmapExtend = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_BRIN_ID = common dso_local global i32 0, align 4
@XLOG_BRIN_REVMAP_EXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @revmap_physical_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revmap_physical_extend(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @RELATION_IS_LOCAL(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %25 = call i32 @LockBuffer(i32 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @BufferGetPage(i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @PageGetContents(i64 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %50 = call i32 @LockBuffer(i32 %48, i32 %49)
  br label %215

51:                                               ; preds = %1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @RelationGetNumberOfBlocks(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @ReadBuffer(i32 %62, i64 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %67 = call i32 @LockBuffer(i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @BufferGetPage(i32 %68)
  store i64 %69, i64* %4, align 8
  br label %113

70:                                               ; preds = %51
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ExclusiveLock, align 4
  %76 = call i32 @LockRelationForExtension(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* @P_NEW, align 8
  %80 = call i32 @ReadBuffer(i32 %78, i64 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @BufferGetBlockNumber(i32 %81)
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @ExclusiveLock, align 4
  %91 = call i32 @UnlockRelationForExtension(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %97 = call i32 @LockBuffer(i32 %95, i32 %96)
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @ReleaseBuffer(i32 %98)
  br label %215

100:                                              ; preds = %77
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %103 = call i32 @LockBuffer(i32 %101, i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @BufferGetPage(i32 %104)
  store i64 %105, i64* %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ExclusiveLock, align 4
  %111 = call i32 @UnlockRelationForExtension(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %61
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @PageIsNew(i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @BRIN_IS_REGULAR_PAGE(i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @BrinPageType(i64 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @RelationGetRelationName(i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = call i64 @BufferGetBlockNumber(i32 %129)
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %128, i64 %130)
  %132 = call i32 @ereport(i32 %122, i32 %131)
  br label %133

133:                                              ; preds = %121, %117, %113
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i64 @brin_start_evacuating_page(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %143 = call i32 @LockBuffer(i32 %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @brin_evacuate_page(i32 %144, i32 %147, %struct.TYPE_9__* %148, i32 %149)
  br label %215

151:                                              ; preds = %133
  %152 = call i32 (...) @START_CRIT_SECTION()
  %153 = load i64, i64* %4, align 8
  %154 = load i32, i32* @BRIN_PAGETYPE_REVMAP, align 4
  %155 = call i32 @brin_page_init(i64 %153, i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @MarkBufferDirty(i32 %156)
  %158 = load i64, i64* %7, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = bitcast %struct.TYPE_10__* %161 to i8*
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = load i64, i64* %5, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = ptrtoint i8* %163 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = load i64, i64* %5, align 8
  %171 = inttoptr i64 %170 to %struct.TYPE_8__*
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @MarkBufferDirty(i32 %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @RelationNeedsWAL(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %151
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 %183, i64* %184, align 8
  %185 = call i32 (...) @XLogBeginInsert()
  %186 = bitcast %struct.TYPE_7__* %11 to i8*
  %187 = load i32, i32* @SizeOfBrinRevmapExtend, align 4
  %188 = call i32 @XLogRegisterData(i8* %186, i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @REGBUF_STANDARD, align 4
  %193 = call i32 @XLogRegisterBuffer(i32 0, i32 %191, i32 %192)
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %196 = call i32 @XLogRegisterBuffer(i32 1, i32 %194, i32 %195)
  %197 = load i32, i32* @RM_BRIN_ID, align 4
  %198 = load i32, i32* @XLOG_BRIN_REVMAP_EXTEND, align 4
  %199 = call i32 @XLogInsert(i32 %197, i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load i64, i64* %5, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @PageSetLSN(i64 %200, i32 %201)
  %203 = load i64, i64* %4, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @PageSetLSN(i64 %203, i32 %204)
  br label %206

206:                                              ; preds = %182, %151
  %207 = call i32 (...) @END_CRIT_SECTION()
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %212 = call i32 @LockBuffer(i32 %210, i32 %211)
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @UnlockReleaseBuffer(i32 %213)
  br label %215

215:                                              ; preds = %206, %138, %92, %40
  ret void
}

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetContents(i64) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @PageIsNew(i64) #1

declare dso_local i32 @BRIN_IS_REGULAR_PAGE(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i64) #1

declare dso_local i32 @BrinPageType(i64) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @brin_start_evacuating_page(i32, i32) #1

declare dso_local i32 @brin_evacuate_page(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @brin_page_init(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
