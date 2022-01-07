; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_update_meta_cleanup_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_update_meta_cleanup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32, i32 }

@BTREE_METAPAGE = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@XLOG_BTREE_META_CLEANUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_update_meta_cleanup_info(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BTREE_METAPAGE, align 4
  %15 = load i32, i32* @BT_READ, align 4
  %16 = call i32 @_bt_getbuf(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @BufferGetPage(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_5__* @BTPageGetMeta(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @_bt_relbuf(i32 %45, i32 %46)
  br label %127

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %51 = call i32 @LockBuffer(i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BT_WRITE, align 4
  %54 = call i32 @LockBuffer(i32 %52, i32 %53)
  %55 = call i32 (...) @START_CRIT_SECTION()
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @_bt_upgrademetapage(i32 %62)
  br label %64

64:                                               ; preds = %61, %48
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @MarkBufferDirty(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @RelationNeedsWAL(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %64
  %77 = call i32 (...) @XLogBeginInsert()
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %80 = load i32, i32* @REGBUF_STANDARD, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @XLogRegisterBuffer(i32 0, i32 %78, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %87 = icmp sge i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 %100, i32* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = bitcast %struct.TYPE_4__* %12 to i8*
  %115 = call i32 @XLogRegisterBufData(i32 0, i8* %114, i32 40)
  %116 = load i32, i32* @RM_BTREE_ID, align 4
  %117 = load i32, i32* @XLOG_BTREE_META_CLEANUP, align 4
  %118 = call i32 @XLogInsert(i32 %116, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @PageSetLSN(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %76, %64
  %123 = call i32 (...) @END_CRIT_SECTION()
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @_bt_relbuf(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %44
  ret void
}

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_5__* @BTPageGetMeta(i32) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_upgrademetapage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
