; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c___gl_computeInterior.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c___gl_computeInterior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gl_computeInterior(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %6 = load i32, i32* @FALSE, align 4
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call i32 @RemoveDegenerateEdges(%struct.TYPE_19__* %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = call i32 @InitPriorityQ(%struct.TYPE_19__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = call i32 @InitEdgeDict(%struct.TYPE_19__* %16)
  br label %18

18:                                               ; preds = %54, %15
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pqExtractMin(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %4, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %40, %25
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pqMinimum(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %5, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = icmp eq %struct.TYPE_18__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = call i32 @VertEq(%struct.TYPE_18__* %35, %struct.TYPE_18__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %26
  br label %54

40:                                               ; preds = %34
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pqExtractMin(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %5, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SpliceMergeVertices(%struct.TYPE_19__* %46, i32 %49, i32 %52)
  br label %26

54:                                               ; preds = %39
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = call i32 @SweepEvent(%struct.TYPE_19__* %55, %struct.TYPE_18__* %56)
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dictMin(i32 %61)
  %63 = call i64 @dictKey(i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_20__*
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = call i32 @DebugEvent(%struct.TYPE_19__* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = call i32 @DoneEdgeDict(%struct.TYPE_19__* %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = call i32 @DonePriorityQ(%struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @RemoveDegenerateFaces(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %88

83:                                               ; preds = %58
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__gl_meshCheckMesh(i32 %86)
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %82, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @RemoveDegenerateEdges(%struct.TYPE_19__*) #1

declare dso_local i32 @InitPriorityQ(%struct.TYPE_19__*) #1

declare dso_local i32 @InitEdgeDict(%struct.TYPE_19__*) #1

declare dso_local i64 @pqExtractMin(i32) #1

declare dso_local i64 @pqMinimum(i32) #1

declare dso_local i32 @VertEq(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @dictKey(i32) #1

declare dso_local i32 @dictMin(i32) #1

declare dso_local i32 @DebugEvent(%struct.TYPE_19__*) #1

declare dso_local i32 @DoneEdgeDict(%struct.TYPE_19__*) #1

declare dso_local i32 @DonePriorityQ(%struct.TYPE_19__*) #1

declare dso_local i32 @RemoveDegenerateFaces(i32) #1

declare dso_local i32 @__gl_meshCheckMesh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
