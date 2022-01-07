; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"btree_xlog_insert: failed to add item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_10__*)* @btree_xlog_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_insert(i32 %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i64 @XLogRecGetData(%struct.TYPE_10__* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call i32 @_bt_clear_incomplete_split(%struct.TYPE_10__* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %25, i32 0, i32* %9)
  %27 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %30, i32 0, i32* %11)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @BufferGetPage(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @PageAddItem(i32 %34, i32 %36, i32 %37, i32 %40, i32 0, i32 0)
  %42 = load i64, i64* @InvalidOffsetNumber, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @PANIC, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %29
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @PageSetLSN(i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @MarkBufferDirty(i32 %51)
  br label %53

53:                                               ; preds = %47, %24
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @BufferIsValid(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @UnlockReleaseBuffer(i32 %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call i32 @_bt_restore_meta(%struct.TYPE_10__* %64, i32 2)
  br label %66

66:                                               ; preds = %63, %60
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i32 @_bt_clear_incomplete_split(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @_bt_restore_meta(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
