; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hash_xlog_insert: failed to add item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @hash_xlog_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_insert(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i64 @XLogRecGetData(%struct.TYPE_10__* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %16, i32 0, i32* %6)
  %18 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %21, i32 0, i32* %8)
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @PageAddItem(i32 %25, i32 %27, i32 %28, i32 %31, i32 0, i32 0)
  %33 = load i64, i64* @InvalidOffsetNumber, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @PANIC, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @PageSetLSN(i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MarkBufferDirty(i32 %42)
  br label %44

44:                                               ; preds = %38, %1
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @BufferIsValid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @UnlockReleaseBuffer(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %52, i32 1, i32* %6)
  %54 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BufferGetPage(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.TYPE_11__* @HashPageGetMeta(i32 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %3, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @PageSetLSN(i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MarkBufferDirty(i32 %68)
  br label %70

70:                                               ; preds = %56, %51
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @BufferIsValid(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @UnlockReleaseBuffer(i32 %75)
  br label %77

77:                                               ; preds = %74, %70
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local %struct.TYPE_11__* @HashPageGetMeta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
