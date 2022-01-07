; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_GinDataLeafPageGetItems.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_GinDataLeafPageGetItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GinDataLeafPageGetItems(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GinPageIsCompressed(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_6__* @GinDataLeafPageGetPostingList(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @GinDataLeafPageGetPostingListSize(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = ptrtoint %struct.TYPE_6__* %21 to i64
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = call i64 @ItemPointerIsValid(i32* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = call %struct.TYPE_6__* @GinNextPostingListSegment(%struct.TYPE_6__* %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %11, align 8
  br label %30

30:                                               ; preds = %42, %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = ptrtoint %struct.TYPE_6__* %31 to i64
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i64 @ginCompareItemPointers(i32* %37, i32* %6)
  %39 = icmp sle i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ false, %30 ], [ %39, %35 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = call %struct.TYPE_6__* @GinNextPostingListSegment(%struct.TYPE_6__* %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %11, align 8
  br label %30

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = ptrtoint %struct.TYPE_6__* %48 to i64
  %50 = sub nsw i64 %47, %49
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %46, %16
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32* @ginPostingListDecodeAllSegments(%struct.TYPE_6__* %55, i64 %56, i32* %57)
  store i32* %58, i32** %7, align 8
  br label %61

59:                                               ; preds = %51
  store i32* null, i32** %7, align 8
  %60 = load i32*, i32** %5, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %54
  br label %80

62:                                               ; preds = %3
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @dataLeafPageGetUncompressed(i32 %63, i32* %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32* @palloc(i32 %70)
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32* %72, i32* %73, i32 %78)
  br label %80

80:                                               ; preds = %62, %61
  %81 = load i32*, i32** %7, align 8
  ret i32* %81
}

declare dso_local i64 @GinPageIsCompressed(i32) #1

declare dso_local %struct.TYPE_6__* @GinDataLeafPageGetPostingList(i32) #1

declare dso_local i64 @GinDataLeafPageGetPostingListSize(i32) #1

declare dso_local i64 @ItemPointerIsValid(i32*) #1

declare dso_local %struct.TYPE_6__* @GinNextPostingListSegment(%struct.TYPE_6__*) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32* @ginPostingListDecodeAllSegments(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32* @dataLeafPageGetUncompressed(i32, i32*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
