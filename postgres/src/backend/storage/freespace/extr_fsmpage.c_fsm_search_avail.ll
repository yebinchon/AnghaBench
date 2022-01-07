; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_fsmpage.c_fsm_search_avail.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_fsmpage.c_fsm_search_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@LeafNodesPerPage = common dso_local global i32 0, align 4
@NonLeafNodesPerPage = common dso_local global i32 0, align 4
@NodesPerPage = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fixing corrupt FSM block %u, relation %u/%u/%u\00", align 1
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsm_search_avail(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BufferGetPage(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @PageGetContents(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %11, align 8
  br label %25

25:                                               ; preds = %130, %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %149

34:                                               ; preds = %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @LeafNodesPerPage, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* @NonLeafNodesPerPage, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %64, %45
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @rightneighbor(i32 %65)
  %67 = call i32 @parentof(i32 %66)
  store i32 %67, i32* %12, align 4
  br label %50

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %135, %89, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @NonLeafNodesPerPage, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @leftchild(i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @NodesPerPage, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %12, align 4
  br label %69

91:                                               ; preds = %79, %73
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @NodesPerPage, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %12, align 4
  br label %135

109:                                              ; preds = %97, %91
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @BufferGetTag(i32 %110, %struct.TYPE_4__* %16, i32* %17, i32* %18)
  %112 = load i32, i32* @DEBUG1, align 4
  %113 = load i32, i32* %18, align 4
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @elog(i32 %112, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %126 = call i32 @LockBuffer(i32 %124, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %129 = call i32 @LockBuffer(i32 %127, i32 %128)
  store i32 1, i32* %9, align 4
  br label %130

130:                                              ; preds = %123, %109
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @fsm_rebuild_page(i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @MarkBufferDirtyHint(i32 %133, i32 0)
  br label %25

135:                                              ; preds = %107
  br label %69

136:                                              ; preds = %69
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @NonLeafNodesPerPage, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = add nsw i32 %140, %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %136, %33
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetContents(i32) #1

declare dso_local i32 @parentof(i32) #1

declare dso_local i32 @rightneighbor(i32) #1

declare dso_local i32 @leftchild(i32) #1

declare dso_local i32 @BufferGetTag(i32, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @fsm_rebuild_page(i32) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
