; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_fsmpage.c_fsm_set_avail.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_fsmpage.c_fsm_set_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@NonLeafNodesPerPage = common dso_local global i32 0, align 4
@LeafNodesPerPage = common dso_local global i32 0, align 4
@NodesPerPage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsm_set_avail(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @NonLeafNodesPerPage, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PageGetContents(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LeafNodesPerPage, align 4
  %23 = icmp slt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %115

45:                                               ; preds = %36, %3
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %100, %45
  store i64 0, i64* %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @parentof(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @leftchild(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @NodesPerPage, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %53
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @Max(i64 %71, i64 %78)
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %70, %53
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %103

92:                                               ; preds = %80
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %53, label %103

103:                                              ; preds = %100, %91
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %104, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @fsm_rebuild_page(i32 %112)
  br label %114

114:                                              ; preds = %111, %103
  store i32 1, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %44
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @PageGetContents(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @parentof(i32) #1

declare dso_local i32 @leftchild(i32) #1

declare dso_local i64 @Max(i64, i64) #1

declare dso_local i32 @fsm_rebuild_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
