; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelInitializeWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelInitializeWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @ExecParallelInitializeWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecParallelInitializeWorker(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i32 @nodeTag(%struct.TYPE_8__* %10)
  switch i32 %11, label %126 [
    i32 129, label %12
    i32 130, label %25
    i32 131, label %38
    i32 134, label %51
    i32 137, label %64
    i32 135, label %77
    i32 136, label %90
    i32 133, label %103
    i32 132, label %116
    i32 128, label %121
  ]

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to i32*
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ExecSeqScanInitializeWorker(i32* %21, i32* %22)
  br label %24

24:                                               ; preds = %19, %12
  br label %127

25:                                               ; preds = %9
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = bitcast %struct.TYPE_8__* %33 to i32*
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ExecIndexScanInitializeWorker(i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %32, %25
  br label %127

38:                                               ; preds = %9
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = bitcast %struct.TYPE_8__* %46 to i32*
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ExecIndexOnlyScanInitializeWorker(i32* %47, i32* %48)
  br label %50

50:                                               ; preds = %45, %38
  br label %127

51:                                               ; preds = %9
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = bitcast %struct.TYPE_8__* %59 to i32*
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ExecForeignScanInitializeWorker(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %58, %51
  br label %127

64:                                               ; preds = %9
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = bitcast %struct.TYPE_8__* %72 to i32*
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @ExecAppendInitializeWorker(i32* %73, i32* %74)
  br label %76

76:                                               ; preds = %71, %64
  br label %127

77:                                               ; preds = %9
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = bitcast %struct.TYPE_8__* %85 to i32*
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @ExecCustomScanInitializeWorker(i32* %86, i32* %87)
  br label %89

89:                                               ; preds = %84, %77
  br label %127

90:                                               ; preds = %9
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = bitcast %struct.TYPE_8__* %98 to i32*
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @ExecBitmapHeapInitializeWorker(i32* %99, i32* %100)
  br label %102

102:                                              ; preds = %97, %90
  br label %127

103:                                              ; preds = %9
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = bitcast %struct.TYPE_8__* %111 to i32*
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @ExecHashJoinInitializeWorker(i32* %112, i32* %113)
  br label %115

115:                                              ; preds = %110, %103
  br label %127

116:                                              ; preds = %9
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = bitcast %struct.TYPE_8__* %117 to i32*
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @ExecHashInitializeWorker(i32* %118, i32* %119)
  br label %127

121:                                              ; preds = %9
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = bitcast %struct.TYPE_8__* %122 to i32*
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @ExecSortInitializeWorker(i32* %123, i32* %124)
  br label %127

126:                                              ; preds = %9
  br label %127

127:                                              ; preds = %126, %121, %116, %115, %102, %89, %76, %63, %50, %37, %24
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @planstate_tree_walker(%struct.TYPE_8__* %128, i32 (%struct.TYPE_8__*, i32*)* @ExecParallelInitializeWorker, i32* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %8
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @nodeTag(%struct.TYPE_8__*) #1

declare dso_local i32 @ExecSeqScanInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecIndexScanInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecIndexOnlyScanInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecForeignScanInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecAppendInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecCustomScanInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecBitmapHeapInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecHashJoinInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecHashInitializeWorker(i32*, i32*) #1

declare dso_local i32 @ExecSortInitializeWorker(i32*, i32*) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_8__*, i32 (%struct.TYPE_8__*, i32*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
