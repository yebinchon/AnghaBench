; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_mark_page_halfdead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_mark_page_halfdead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@BTP_HALF_DEAD = common dso_local global i32 0, align 4
@BTP_LEAF = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not add dummy high key to half-dead page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @btree_xlog_mark_page_halfdead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_mark_page_halfdead(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i64 @XLogRecGetData(%struct.TYPE_14__* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call i64 @XLogReadBufferForRedo(%struct.TYPE_14__* %22, i32 1, i32* %7)
  %24 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @BufferGetPage(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @PageGetSpecialPointer(i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @OffsetNumberNext(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @PageGetItemId(i64 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @PageGetItem(i64 %40, i32 %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @BTreeInnerTupleGetDownLink(i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @PageGetItemId(i64 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @PageGetItem(i64 %48, i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @BTreeInnerTupleSetDownLink(i64 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @OffsetNumberNext(i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @PageIndexTupleDelete(i64 %56, i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @PageSetLSN(i64 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @MarkBufferDirty(i32 %62)
  br label %64

64:                                               ; preds = %26, %2
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @BufferIsValid(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @UnlockReleaseBuffer(i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = call i32 @XLogInitBufferForRedo(%struct.TYPE_14__* %72, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @BufferGetPage(i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @BufferGetPageSize(i32 %77)
  %79 = call i32 @_bt_pageinit(i64 %76, i32 %78)
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @PageGetSpecialPointer(i64 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @BTP_HALF_DEAD, align 4
  %97 = load i32, i32* @BTP_LEAF, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = call i32 @MemSet(%struct.TYPE_15__* %10, i32 0, i32 4)
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 4, i32* %104, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BTreeTupleSetTopParent(%struct.TYPE_15__* %10, i32 %107)
  %109 = load i64, i64* %8, align 8
  %110 = ptrtoint %struct.TYPE_15__* %10 to i32
  %111 = load i32, i32* @P_HIKEY, align 4
  %112 = call i64 @PageAddItem(i64 %109, i32 %110, i32 4, i32 %111, i32 0, i32 0)
  %113 = load i64, i64* @InvalidOffsetNumber, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %71
  %116 = load i32, i32* @ERROR, align 4
  %117 = call i32 @elog(i32 %116, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %71
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @PageSetLSN(i64 %119, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @MarkBufferDirty(i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @UnlockReleaseBuffer(i32 %124)
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_14__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local i32 @BTreeInnerTupleSetDownLink(i64, i32) #1

declare dso_local i32 @PageIndexTupleDelete(i64, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @_bt_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @BTreeTupleSetTopParent(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
