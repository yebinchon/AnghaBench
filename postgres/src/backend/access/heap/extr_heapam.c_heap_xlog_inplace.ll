; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_inplace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"wrong tuple length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @heap_xlog_inplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_inplace(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call i64 @XLogRecGetData(%struct.TYPE_9__* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %4, align 8
  store i32* null, i32** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i64 @XLogReadBufferForRedo(%struct.TYPE_9__* %19, i32 0, i32* %5)
  %21 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = call i8* @XLogRecGetBlockData(%struct.TYPE_9__* %24, i32 0, i32* %11)
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BufferGetPage(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @PageGetMaxOffsetNumber(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32* @PageGetItemId(i32 %36, i64 %37)
  store i32* %38, i32** %8, align 8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @PageGetMaxOffsetNumber(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @ItemIdIsNormal(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* @PANIC, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @PageGetItem(i32 %52, i32* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %9, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @ItemIdGetLength(i32* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* @PANIC, align 4
  %67 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %51
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = bitcast %struct.TYPE_10__* %69 to i8*
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @PageSetLSN(i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @MarkBufferDirty(i32 %82)
  br label %84

84:                                               ; preds = %68, %1
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @BufferIsValid(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @UnlockReleaseBuffer(i32 %89)
  br label %91

91:                                               ; preds = %88, %84
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32* @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i32, i32*) #1

declare dso_local i32 @ItemIdGetLength(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
