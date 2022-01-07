; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_delitems_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_delitems_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfBtreeDelete = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@XLOG_BTREE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_delitems_delete(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = call i64 (...) @XLogStandbyInfoActive()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @RelationNeedsWAL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @index_compute_xid_horizon_for_tuples(i32 %30, i32 %31, i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %29, %25, %5
  %37 = call i32 (...) @START_CRIT_SECTION()
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @PageIndexMultiDelete(i32 %38, i32* %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @PageGetSpecialPointer(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %12, align 8
  %45 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @MarkBufferDirty(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @RelationNeedsWAL(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %36
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = call i32 (...) @XLogBeginInsert()
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @REGBUF_STANDARD, align 4
  %64 = call i32 @XLogRegisterBuffer(i32 0, i32 %62, i32 %63)
  %65 = bitcast %struct.TYPE_3__* %15 to i8*
  %66 = load i32, i32* @SizeOfBtreeDelete, align 4
  %67 = call i32 @XLogRegisterData(i8* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @XLogRegisterData(i8* %69, i32 %73)
  %75 = load i32, i32* @RM_BTREE_ID, align 4
  %76 = load i32, i32* @XLOG_BTREE_DELETE, align 4
  %77 = call i32 @XLogInsert(i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @PageSetLSN(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %56, %36
  %82 = call i32 (...) @END_CRIT_SECTION()
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @index_compute_xid_horizon_for_tuples(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i32*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
