; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_vacuum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_vacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL_NO_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @btree_xlog_vacuum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_vacuum(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = load i32, i32* @RBM_NORMAL, align 4
  %16 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_10__* %14, i32 0, i32 %15, i32 1, i32* %4)
  %17 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %20, i32 0, i64* %8)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @BufferGetPage(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %26
  %41 = load i64, i64* %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @PageIndexMultiDelete(i64 %41, i32* %42, i32 %49)
  br label %51

51:                                               ; preds = %40, %26
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @PageGetSpecialPointer(i64 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %6, align 8
  %56 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @PageSetLSN(i64 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @MarkBufferDirty(i32 %65)
  br label %67

67:                                               ; preds = %52, %1
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @BufferIsValid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @UnlockReleaseBuffer(i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  ret void
}

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i64*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i32*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
