; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelInitializeDSM.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelInitializeDSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @ExecParallelInitializeDSM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecParallelInitializeDSM(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %19, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %9
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @nodeTag(%struct.TYPE_14__* %34)
  switch i32 %35, label %170 [
    i32 129, label %36
    i32 130, label %51
    i32 131, label %66
    i32 134, label %81
    i32 137, label %96
    i32 135, label %111
    i32 136, label %126
    i32 133, label %141
    i32 132, label %156
    i32 128, label %163
  ]

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = bitcast %struct.TYPE_14__* %44 to i32*
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ExecSeqScanInitializeDSM(i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %171

51:                                               ; preds = %29
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = bitcast %struct.TYPE_14__* %59 to i32*
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ExecIndexScanInitializeDSM(i32* %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  br label %171

66:                                               ; preds = %29
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = bitcast %struct.TYPE_14__* %74 to i32*
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ExecIndexOnlyScanInitializeDSM(i32* %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  br label %171

81:                                               ; preds = %29
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = bitcast %struct.TYPE_14__* %89 to i32*
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ExecForeignScanInitializeDSM(i32* %90, i32 %93)
  br label %95

95:                                               ; preds = %88, %81
  br label %171

96:                                               ; preds = %29
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = bitcast %struct.TYPE_14__* %104 to i32*
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ExecAppendInitializeDSM(i32* %105, i32 %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %171

111:                                              ; preds = %29
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = bitcast %struct.TYPE_14__* %119 to i32*
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ExecCustomScanInitializeDSM(i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %118, %111
  br label %171

126:                                              ; preds = %29
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = bitcast %struct.TYPE_14__* %134 to i32*
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ExecBitmapHeapInitializeDSM(i32* %135, i32 %138)
  br label %140

140:                                              ; preds = %133, %126
  br label %171

141:                                              ; preds = %29
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = bitcast %struct.TYPE_14__* %149 to i32*
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ExecHashJoinInitializeDSM(i32* %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %141
  br label %171

156:                                              ; preds = %29
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = bitcast %struct.TYPE_14__* %157 to i32*
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ExecHashInitializeDSM(i32* %158, i32 %161)
  br label %171

163:                                              ; preds = %29
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = bitcast %struct.TYPE_14__* %164 to i32*
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ExecSortInitializeDSM(i32* %165, i32 %168)
  br label %171

170:                                              ; preds = %29
  br label %171

171:                                              ; preds = %170, %163, %156, %155, %140, %125, %110, %95, %80, %65, %50
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = call i32 @planstate_tree_walker(%struct.TYPE_14__* %172, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @ExecParallelInitializeDSM, %struct.TYPE_15__* %173)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %8
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @nodeTag(%struct.TYPE_14__*) #1

declare dso_local i32 @ExecSeqScanInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecIndexScanInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecIndexOnlyScanInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecForeignScanInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecAppendInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecCustomScanInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecBitmapHeapInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecHashJoinInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecHashInitializeDSM(i32*, i32) #1

declare dso_local i32 @ExecSortInitializeDSM(i32*, i32) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_14__*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
