; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistformdownlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistformdownlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@GIST_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32, i32, i32*, %struct.TYPE_15__*)* @gistformdownlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @gistformdownlink(i32 %0, i32 %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %9, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @PageGetMaxOffsetNumber(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %49, %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @PageGetItemId(i32 %27, i64 %28)
  %30 = call i64 @PageGetItem(i32 %26, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %13, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %33 = icmp eq %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %36 = call %struct.TYPE_14__* @CopyIndexTuple(%struct.TYPE_14__* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %12, align 8
  br label %48

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call %struct.TYPE_14__* @gistgetadjusted(i32 %38, %struct.TYPE_14__* %39, %struct.TYPE_14__* %40, i32* %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %14, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %12, align 8
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @OffsetNumberNext(i64 %50)
  store i64 %51, i64* %11, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %92, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %62 = call i32 @LockBuffer(i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = call i32 @gistFindCorrectParent(i32 %63, %struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @PageGetItemId(i32 %70, i64 %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @PageGetItem(i32 %79, i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %12, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = call %struct.TYPE_14__* @CopyIndexTuple(%struct.TYPE_14__* %83)
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %12, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GIST_UNLOCK, align 4
  %91 = call i32 @LockBuffer(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %55, %52
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @BufferGetBlockNumber(i32 %95)
  %97 = call i32 @ItemPointerSetBlockNumber(i32* %94, i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = call i32 @GistTupleSetValid(%struct.TYPE_14__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  ret %struct.TYPE_14__* %100
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local %struct.TYPE_14__* @CopyIndexTuple(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @gistgetadjusted(i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @gistFindCorrectParent(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ItemPointerSetBlockNumber(i32*, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @GistTupleSetValid(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
