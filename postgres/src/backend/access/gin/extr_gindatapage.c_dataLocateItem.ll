; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataLocateItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataLocateItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*, i32)*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@FirstOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @dataLocateItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataLocateItem(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BufferGetPage(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @GinPageIsLeaf(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @GinPageIsData(i32 %23)
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load i32, i32* @FirstOffsetNumber, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.TYPE_13__* @GinPageGetOpaque(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 %44(%struct.TYPE_12__* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %127

48:                                               ; preds = %2
  %49 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.TYPE_13__* @GinPageGetOpaque(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %106, %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.TYPE_10__* @GinDataPageGetPostingItem(i32 %72, i32 %73)
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i32 -1, i32* %10, align 4
  br label %88

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call %struct.TYPE_10__* @GinDataPageGetPostingItem(i32 %80, i32 %81)
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %9, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i32 @ginCompareItemPointers(i32* %84, i32* %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %79, %78
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = call i32 @PostingItemGetBlockNumber(%struct.TYPE_10__* %95)
  store i32 %96, i32* %3, align 4
  br label %127

97:                                               ; preds = %88
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105
  br label %61

107:                                              ; preds = %61
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @FirstOffsetNumber, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sle i32 %112, %113
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ false, %107 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @Assert(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call %struct.TYPE_10__* @GinDataPageGetPostingItem(i32 %122, i32 %123)
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %9, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = call i32 @PostingItemGetBlockNumber(%struct.TYPE_10__* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %115, %91, %30
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local %struct.TYPE_13__* @GinPageGetOpaque(i32) #1

declare dso_local %struct.TYPE_10__* @GinDataPageGetPostingItem(i32, i32) #1

declare dso_local i32 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32 @PostingItemGetBlockNumber(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
