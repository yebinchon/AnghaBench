; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_ginEntryInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_ginEntryInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i64 }

@GIN_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginEntryInsert(%struct.TYPE_25__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.TYPE_24__* %6) #0 {
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_28__, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_24__* %6, %struct.TYPE_24__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = call i32 @ginPrepareEntryScan(%struct.TYPE_28__* %15, i32 %22, i32 %23, i32 %24, %struct.TYPE_25__* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %28 = icmp ne %struct.TYPE_24__* %27, null
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = call %struct.TYPE_26__* @ginFindLeafPage(%struct.TYPE_28__* %15, i32 0, i32 0, i32* null)
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %17, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BufferGetPage(i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)** %36, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %39 = call i64 %37(%struct.TYPE_28__* %15, %struct.TYPE_26__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %7
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PageGetItemId(i32 %43, i32 %46)
  %48 = call i64 @PageGetItem(i32 %42, i32 %47)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = call i64 @GinIsPostingTree(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load i64, i64* %18, align 8
  %54 = call i32 @GinGetPostingTree(i64 %53)
  store i32 %54, i32* %20, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GIN_UNLOCK, align 4
  %59 = call i32 @LockBuffer(i32 %57, i32 %58)
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %61 = call i32 @freeGinBtreeStack(%struct.TYPE_26__* %60)
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %69 = call i32 @ginInsertItemPointers(i32 %64, i32 %65, i32* %66, i32 %67, %struct.TYPE_24__* %68)
  br label %123

70:                                               ; preds = %41
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CheckForSerializableConflictIn(i32 %73, i32* null, i32 %76)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @addItemPointersToLeafTuple(%struct.TYPE_25__* %78, i64 %79, i32* %80, i32 %81, %struct.TYPE_24__* %82, i32 %85)
  store i64 %86, i64* %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %115

88:                                               ; preds = %7
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CheckForSerializableConflictIn(i32 %91, i32* null, i32 %94)
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @buildFreshLeafTuple(%struct.TYPE_25__* %96, i32 %97, i32 %98, i32 %99, i32* %100, i32 %101, %struct.TYPE_24__* %102, i32 %105)
  store i64 %106, i64* %18, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %108 = icmp ne %struct.TYPE_24__* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %88
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %88
  br label %115

115:                                              ; preds = %114, %70
  %116 = load i64, i64* %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %120 = call i32 @ginInsertValue(%struct.TYPE_28__* %15, %struct.TYPE_26__* %118, %struct.TYPE_27__* %16, %struct.TYPE_24__* %119)
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @pfree(i64 %121)
  br label %123

123:                                              ; preds = %115, %52
  ret void
}

declare dso_local i32 @ginPrepareEntryScan(%struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @ginFindLeafPage(%struct.TYPE_28__*, i32, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @GinIsPostingTree(i64) #1

declare dso_local i32 @GinGetPostingTree(i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @freeGinBtreeStack(%struct.TYPE_26__*) #1

declare dso_local i32 @ginInsertItemPointers(i32, i32, i32*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i32) #1

declare dso_local i64 @addItemPointersToLeafTuple(%struct.TYPE_25__*, i64, i32*, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @buildFreshLeafTuple(%struct.TYPE_25__*, i32, i32, i32, i32*, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ginInsertValue(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_24__*) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
