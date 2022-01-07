; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginVacuumPostingTreeLeaves.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginVacuumPostingTreeLeaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @ginVacuumPostingTreeLeaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ginVacuumPostingTreeLeaves(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %2, %39
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAIN_FORKNUM, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RBM_NORMAL, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ReadBufferExtended(i32 %13, i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GIN_SHARE, align 4
  %23 = call i32 @LockBuffer(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GinPageIsData(i32 %26)
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GinPageIsLeaf(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GIN_UNLOCK, align 4
  %35 = call i32 @LockBuffer(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %38 = call i32 @LockBuffer(i32 %36, i32 %37)
  br label %58

39:                                               ; preds = %10
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @PageGetMaxOffsetNumber(i32 %40)
  %42 = load i64, i64* @FirstOffsetNumber, align 8
  %43 = icmp sge i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* @FirstOffsetNumber, align 8
  %48 = call i32* @GinDataPageGetPostingItem(i32 %46, i64 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @PostingItemGetBlockNumber(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @InvalidBlockNumber, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @UnlockReleaseBuffer(i32 %56)
  br label %10

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58, %91
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MemoryContextSwitchTo(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = call i32 @ginVacuumPostingTreeLeaf(i32 %66, i32 %67, %struct.TYPE_5__* %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @MemoryContextSwitchTo(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MemoryContextReset(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @GinDataLeafPageIsEmpty(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.TYPE_6__* @GinPageGetOpaque(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @UnlockReleaseBuffer(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @InvalidBlockNumber, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %107

91:                                               ; preds = %80
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAIN_FORKNUM, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @RBM_NORMAL, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ReadBufferExtended(i32 %94, i32 %95, i32 %96, i32 %97, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %104 = call i32 @LockBuffer(i32 %102, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @BufferGetPage(i32 %105)
  store i32 %106, i32* %6, align 4
  br label %59

107:                                              ; preds = %90
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i64 @GinPageIsLeaf(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32* @GinDataPageGetPostingItem(i32, i64) #1

declare dso_local i32 @PostingItemGetBlockNumber(i32*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ginVacuumPostingTreeLeaf(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i64 @GinDataLeafPageIsEmpty(i32) #1

declare dso_local %struct.TYPE_6__* @GinPageGetOpaque(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
