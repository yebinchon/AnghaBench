; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_gininsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_gininsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Gin insert temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gininsert(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_10__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %14, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %15, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %7
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MemoryContextSwitchTo(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = call i64 @palloc(i32 8)
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %15, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @initGinState(%struct.TYPE_11__* %33, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %37 = bitcast %struct.TYPE_11__* %36 to i8*
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  br label %42

42:                                               ; preds = %26, %7
  %43 = load i32, i32* @CurrentMemoryContext, align 4
  %44 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %45 = call i32 @AllocSetContextCreate(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @GinGetUseFastUpdate(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %42
  %52 = call i32 @memset(i32* %19, i32 0, i32 4)
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %77, %51
  %54 = load i32, i32* %18, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ginHeapTupleFastCollect(%struct.TYPE_11__* %62, i32* %19, i32 %64, i32 %69, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %82 = call i32 @ginHeapTupleFastInsert(%struct.TYPE_11__* %81, i32* %19)
  br label %112

83:                                               ; preds = %42
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %84
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ginHeapTupleInsert(%struct.TYPE_11__* %93, i32 %95, i32 %100, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %84

111:                                              ; preds = %84
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @MemoryContextSwitchTo(i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @MemoryContextDelete(i32 %115)
  ret i32 0
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @initGinState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @GinGetUseFastUpdate(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ginHeapTupleFastCollect(%struct.TYPE_11__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ginHeapTupleFastInsert(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ginHeapTupleInsert(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
