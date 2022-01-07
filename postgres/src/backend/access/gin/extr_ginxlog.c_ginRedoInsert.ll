; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@InvalidBlockNumber = common dso_local global i32 0, align 4
@GIN_INSERT_ISLEAF = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@GIN_INSERT_ISDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ginRedoInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoInsert(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i8* @XLogRecGetData(%struct.TYPE_9__* %15)
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i8* @XLogRecGetData(%struct.TYPE_9__* %29)
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = call i32 @BlockIdGetBlockNumber(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %38, i8** %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = call i32 @ginRedoClearIncompleteSplit(%struct.TYPE_9__* %39, i32 1)
  br label %41

41:                                               ; preds = %28, %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = call i64 @XLogReadBufferForRedo(%struct.TYPE_9__* %42, i32 0, i32* %5)
  %44 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @BufferGetPage(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = call i8* @XLogRecGetBlockData(%struct.TYPE_9__* %49, i32 0, i32* %10)
  store i8* %50, i8** %11, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GIN_INSERT_ISDATA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @GinPageIsData(i32 %58)
  %60 = call i32 @Assert(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @ginRedoInsertData(i32 %61, i32 %62, i32 %63, i8* %64)
  br label %78

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @GinPageIsData(i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @ginRedoInsertEntry(i32 %73, i32 %74, i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %66, %57
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @PageSetLSN(i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @MarkBufferDirty(i32 %82)
  br label %84

84:                                               ; preds = %78, %41
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

declare dso_local i8* @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i32 @BlockIdGetBlockNumber(i32) #1

declare dso_local i32 @ginRedoClearIncompleteSplit(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i32 @ginRedoInsertData(i32, i32, i32, i8*) #1

declare dso_local i32 @ginRedoInsertEntry(i32, i32, i32, i8*) #1

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
