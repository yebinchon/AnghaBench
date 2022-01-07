; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_delitems_vacuum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_delitems_vacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfBtreeVacuum = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@XLOG_BTREE_VACUUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_delitems_vacuum(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BufferGetPage(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = call i32 (...) @START_CRIT_SECTION()
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @PageIndexMultiDelete(i32 %21, i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %5
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @PageGetSpecialPointer(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %12, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @MarkBufferDirty(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @RelationNeedsWAL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %25
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = call i32 (...) @XLogBeginInsert()
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @REGBUF_STANDARD, align 4
  %48 = call i32 @XLogRegisterBuffer(i32 0, i32 %46, i32 %47)
  %49 = bitcast %struct.TYPE_3__* %14 to i8*
  %50 = load i32, i32* @SizeOfBtreeVacuum, align 4
  %51 = call i32 @XLogRegisterData(i8* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32*, i32** %8, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @XLogRegisterBufData(i32 0, i8* %56, i32 %60)
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i32, i32* @RM_BTREE_ID, align 4
  %64 = load i32, i32* @XLOG_BTREE_VACUUM, align 4
  %65 = call i32 @XLogInsert(i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @PageSetLSN(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %25
  %70 = call i32 (...) @END_CRIT_SECTION()
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i32*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

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
