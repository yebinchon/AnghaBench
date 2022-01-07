; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashinsert.c__hash_vacuum_one_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashinsert.c__hash_vacuum_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MaxOffsetNumber = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@LH_PAGE_HAS_DEAD_TUPLES = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfHashVacuumOnePage = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_VACUUM_ONE_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @_hash_vacuum_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_hash_vacuum_one_page(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* @MaxOffsetNumber, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BufferGetPage(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @PageGetMaxOffsetNumber(i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %48, %4
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @PageGetItemId(i32 %35, i64 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @ItemIdIsDead(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %24, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @OffsetNumberNext(i64 %49)
  store i64 %50, i64* %12, align 8
  br label %30

51:                                               ; preds = %30
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %128

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @index_compute_xid_horizon_for_tuples(i32 %55, i32 %56, i32 %57, i64* %24, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %62 = call i32 @LockBuffer(i32 %60, i32 %61)
  %63 = call i32 (...) @START_CRIT_SECTION()
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @PageIndexMultiDelete(i32 %64, i64* %24, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @PageGetSpecialPointer(i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %15, align 8
  %70 = load i32, i32* @LH_PAGE_HAS_DEAD_TUPLES, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @BufferGetPage(i32 %76)
  %78 = call %struct.TYPE_7__* @HashPageGetMeta(i32 %77)
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %16, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @MarkBufferDirty(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @MarkBufferDirty(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @RelationNeedsWAL(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %54
  %92 = load i32, i32* %18, align 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = call i32 (...) @XLogBeginInsert()
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @REGBUF_STANDARD, align 4
  %99 = call i32 @XLogRegisterBuffer(i32 0, i32 %97, i32 %98)
  %100 = bitcast %struct.TYPE_5__* %19 to i8*
  %101 = load i32, i32* @SizeOfHashVacuumOnePage, align 4
  %102 = call i32 @XLogRegisterData(i8* %100, i32 %101)
  %103 = bitcast i64* %24 to i8*
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @XLogRegisterData(i8* %103, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @REGBUF_STANDARD, align 4
  %111 = call i32 @XLogRegisterBuffer(i32 1, i32 %109, i32 %110)
  %112 = load i32, i32* @RM_HASH_ID, align 4
  %113 = load i32, i32* @XLOG_HASH_VACUUM_ONE_PAGE, align 4
  %114 = call i32 @XLogInsert(i32 %112, i32 %113)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @BufferGetPage(i32 %115)
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @PageSetLSN(i32 %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @BufferGetPage(i32 %119)
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @PageSetLSN(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %91, %54
  %124 = call i32 (...) @END_CRIT_SECTION()
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %127 = call i32 @LockBuffer(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %51
  %129 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %129)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i32 @PageGetItemId(i32, i64) #2

declare dso_local i64 @ItemIdIsDead(i32) #2

declare dso_local i64 @OffsetNumberNext(i64) #2

declare dso_local i32 @index_compute_xid_horizon_for_tuples(i32, i32, i32, i64*, i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i32) #2

declare dso_local i64 @PageGetSpecialPointer(i32) #2

declare dso_local %struct.TYPE_7__* @HashPageGetMeta(i32) #2

declare dso_local i32 @MarkBufferDirty(i32) #2

declare dso_local i64 @RelationNeedsWAL(i32) #2

declare dso_local i32 @XLogBeginInsert(...) #2

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #2

declare dso_local i32 @XLogRegisterData(i8*, i32) #2

declare dso_local i32 @XLogInsert(i32, i32) #2

declare dso_local i32 @PageSetLSN(i32, i32) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
