; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_unlink_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_unlink_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@P_NONE = common dso_local global i64 0, align 8
@BTP_DELETED = common dso_local global i32 0, align 4
@BTP_HALF_DEAD = common dso_local global i32 0, align 4
@BTP_LEAF = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not add dummy high key to half-dead page\00", align 1
@XLOG_BTREE_UNLINK_PAGE_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_16__*)* @btree_xlog_unlink_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_unlink_page(i64 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = call i64 @XLogRecGetData(%struct.TYPE_16__* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %25, i32 2, i32* %9)
  %27 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @BufferGetPage(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @PageGetSpecialPointer(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @PageSetLSN(i64 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @MarkBufferDirty(i32 %41)
  br label %43

43:                                               ; preds = %29, %2
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @BufferIsValid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @UnlockReleaseBuffer(i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @P_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %55, i32 1, i32* %9)
  %57 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @BufferGetPage(i32 %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @PageGetSpecialPointer(i64 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @PageSetLSN(i64 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @MarkBufferDirty(i32 %71)
  br label %73

73:                                               ; preds = %59, %54
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @BufferIsValid(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @UnlockReleaseBuffer(i32 %78)
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %50
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = call i32 @XLogInitBufferForRedo(%struct.TYPE_16__* %82, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @BufferGetPage(i32 %84)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @BufferGetPageSize(i32 %87)
  %89 = call i32 @_bt_pageinit(i64 %86, i32 %88)
  %90 = load i64, i64* %10, align 8
  %91 = call i64 @PageGetSpecialPointer(i64 %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %11, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @BTP_DELETED, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @PageSetLSN(i64 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @MarkBufferDirty(i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @UnlockReleaseBuffer(i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = call i64 @XLogRecHasBlockRef(%struct.TYPE_16__* %117, i32 3)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %175

120:                                              ; preds = %81
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = call i32 @XLogInitBufferForRedo(%struct.TYPE_16__* %121, i32 3)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @BufferGetPage(i32 %123)
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @BufferGetPageSize(i32 %126)
  %128 = call i32 @_bt_pageinit(i64 %125, i32 %127)
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @PageGetSpecialPointer(i64 %129)
  %131 = inttoptr i64 %130 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %11, align 8
  %132 = load i32, i32* @BTP_HALF_DEAD, align 4
  %133 = load i32, i32* @BTP_LEAF, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = call i32 @MemSet(%struct.TYPE_17__* %12, i32 0, i32 4)
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 4, i32* %153, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @BTreeTupleSetTopParent(%struct.TYPE_17__* %12, i32 %156)
  %158 = load i64, i64* %10, align 8
  %159 = ptrtoint %struct.TYPE_17__* %12 to i32
  %160 = load i32, i32* @P_HIKEY, align 4
  %161 = call i64 @PageAddItem(i64 %158, i32 %159, i32 4, i32 %160, i32 0, i32 0)
  %162 = load i64, i64* @InvalidOffsetNumber, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %120
  %165 = load i32, i32* @ERROR, align 4
  %166 = call i32 @elog(i32 %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %120
  %168 = load i64, i64* %10, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @PageSetLSN(i64 %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @MarkBufferDirty(i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @UnlockReleaseBuffer(i32 %173)
  br label %175

175:                                              ; preds = %167, %81
  %176 = load i64, i64* %3, align 8
  %177 = load i64, i64* @XLOG_BTREE_UNLINK_PAGE_META, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = call i32 @_bt_restore_meta(%struct.TYPE_16__* %180, i32 4)
  br label %182

182:                                              ; preds = %179, %175
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_16__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @_bt_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @XLogRecHasBlockRef(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @BTreeTupleSetTopParent(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @_bt_restore_meta(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
