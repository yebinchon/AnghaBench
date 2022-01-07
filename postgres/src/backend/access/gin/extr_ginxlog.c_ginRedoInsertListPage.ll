; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsertListPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsertListPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@GIN_LIST = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to add item to index page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ginRedoInsertListPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoInsertListPage(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i64 @XLogRecGetData(%struct.TYPE_9__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %4, align 8
  %20 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @XLogInitBufferForRedo(%struct.TYPE_9__* %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GIN_LIST, align 4
  %27 = call i32 @GinInitBuffer(i32 %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_10__* @GinPageGetOpaque(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @InvalidBlockNumber, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @GinPageSetFullRow(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.TYPE_10__* @GinPageGetOpaque(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  br label %49

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.TYPE_10__* @GinPageGetOpaque(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = call i8* @XLogRecGetBlockData(%struct.TYPE_9__* %50, i32 0, i32* %13)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %84, %49
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %54
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @IndexTupleSize(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %10, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @PageAddItem(i32 %63, i32 %65, i32 %66, i64 %67, i32 0, i32 0)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @InvalidOffsetNumber, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @ERROR, align 4
  %74 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %60
  %76 = load i64, i64* %12, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %54

87:                                               ; preds = %54
  %88 = load i64, i64* %12, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = icmp eq i8* %89, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @PageSetLSN(i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @MarkBufferDirty(i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @UnlockReleaseBuffer(i32 %102)
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GinInitBuffer(i32, i32) #1

declare dso_local %struct.TYPE_10__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @GinPageSetFullRow(i32) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
