; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelEstimate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelEstimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @ExecParallelEstimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecParallelEstimate(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = icmp eq %struct.TYPE_12__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %155

9:                                                ; preds = %2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @nodeTag(%struct.TYPE_12__* %14)
  switch i32 %15, label %150 [
    i32 129, label %16
    i32 130, label %31
    i32 131, label %46
    i32 134, label %61
    i32 137, label %76
    i32 135, label %91
    i32 136, label %106
    i32 133, label %121
    i32 132, label %136
    i32 128, label %143
  ]

16:                                               ; preds = %9
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = bitcast %struct.TYPE_12__* %24 to i32*
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ExecSeqScanEstimate(i32* %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  br label %151

31:                                               ; preds = %9
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = bitcast %struct.TYPE_12__* %39 to i32*
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ExecIndexScanEstimate(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  br label %151

46:                                               ; preds = %9
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = bitcast %struct.TYPE_12__* %54 to i32*
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ExecIndexOnlyScanEstimate(i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  br label %151

61:                                               ; preds = %9
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = bitcast %struct.TYPE_12__* %69 to i32*
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ExecForeignScanEstimate(i32* %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  br label %151

76:                                               ; preds = %9
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = bitcast %struct.TYPE_12__* %84 to i32*
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ExecAppendEstimate(i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %151

91:                                               ; preds = %9
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = bitcast %struct.TYPE_12__* %99 to i32*
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ExecCustomScanEstimate(i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %98, %91
  br label %151

106:                                              ; preds = %9
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = bitcast %struct.TYPE_12__* %114 to i32*
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ExecBitmapHeapEstimate(i32* %115, i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  br label %151

121:                                              ; preds = %9
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = bitcast %struct.TYPE_12__* %129 to i32*
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ExecHashJoinEstimate(i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %128, %121
  br label %151

136:                                              ; preds = %9
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = bitcast %struct.TYPE_12__* %137 to i32*
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ExecHashEstimate(i32* %138, i32 %141)
  br label %151

143:                                              ; preds = %9
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = bitcast %struct.TYPE_12__* %144 to i32*
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ExecSortEstimate(i32* %145, i32 %148)
  br label %151

150:                                              ; preds = %9
  br label %151

151:                                              ; preds = %150, %143, %136, %135, %120, %105, %90, %75, %60, %45, %30
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = call i32 @planstate_tree_walker(%struct.TYPE_12__* %152, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @ExecParallelEstimate, %struct.TYPE_13__* %153)
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %8
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @nodeTag(%struct.TYPE_12__*) #1

declare dso_local i32 @ExecSeqScanEstimate(i32*, i32) #1

declare dso_local i32 @ExecIndexScanEstimate(i32*, i32) #1

declare dso_local i32 @ExecIndexOnlyScanEstimate(i32*, i32) #1

declare dso_local i32 @ExecForeignScanEstimate(i32*, i32) #1

declare dso_local i32 @ExecAppendEstimate(i32*, i32) #1

declare dso_local i32 @ExecCustomScanEstimate(i32*, i32) #1

declare dso_local i32 @ExecBitmapHeapEstimate(i32*, i32) #1

declare dso_local i32 @ExecHashJoinEstimate(i32*, i32) #1

declare dso_local i32 @ExecHashEstimate(i32*, i32) #1

declare dso_local i32 @ExecSortEstimate(i32*, i32) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_12__*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
