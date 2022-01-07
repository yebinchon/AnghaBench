; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFindMt.c_MatchFinderMt_Create.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFindMt.c_MatchFinderMt_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32, i32, i32* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i32)* }

@kMtBtBlockSize = common dso_local global i32 0, align 4
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@kHashBufferSize = common dso_local global i32 0, align 4
@kBtBufferSize = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kMtHashBlockSize = common dso_local global i64 0, align 8
@HashThreadFunc2 = common dso_local global i32 0, align 4
@kMtHashNumBlocks = common dso_local global i32 0, align 4
@BtThreadFunc2 = common dso_local global i32 0, align 4
@kMtBtNumBlocks = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt_Create(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @kMtBtBlockSize, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %22, 4
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %26, i32* %7, align 4
  br label %99

27:                                               ; preds = %6
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_8__*, i32)*, i64 (%struct.TYPE_8__*, i32)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = load i32, i32* @kHashBufferSize, align 4
  %38 = load i32, i32* @kBtBufferSize, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 %35(%struct.TYPE_8__* %36, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %52, i32* %7, align 4
  br label %99

53:                                               ; preds = %32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @kHashBufferSize, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %53, %27
  %63 = load i32, i32* @kHashBufferSize, align 4
  %64 = load i32, i32* @kBtBufferSize, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* @kMtHashBlockSize, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = call i32 @MatchFinder_Create(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, %struct.TYPE_8__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %62
  %82 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %82, i32* %7, align 4
  br label %99

83:                                               ; preds = %62
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i32, i32* @HashThreadFunc2, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = load i32, i32* @kMtHashNumBlocks, align 4
  %89 = call i32 @MtSync_Create(i32* %85, i32 %86, %struct.TYPE_9__* %87, i32 %88)
  %90 = call i32 @RINOK(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* @BtThreadFunc2, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = load i32, i32* @kMtBtNumBlocks, align 4
  %96 = call i32 @MtSync_Create(i32* %92, i32 %93, %struct.TYPE_9__* %94, i32 %95)
  %97 = call i32 @RINOK(i32 %96)
  %98 = load i32, i32* @SZ_OK, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %83, %81, %51, %25
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @MatchFinder_Create(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MtSync_Create(i32*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
