; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, %struct.TYPE_18__*, i32, %struct.TYPE_18__* (i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)* }

@RBTNIL = common dso_local global %struct.TYPE_18__* null, align 8
@RBTRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @rbt_insert(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %55, %3
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** @RBTNIL, align 8
  %18 = icmp ne %struct.TYPE_18__* %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %22(%struct.TYPE_18__* %23, %struct.TYPE_18__* %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 4
  %34 = load i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %34(%struct.TYPE_18__* %35, %struct.TYPE_18__* %36, i32 %39)
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %4, align 8
  br label %105

43:                                               ; preds = %19
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  br label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi %struct.TYPE_18__* [ %50, %47 ], [ %54, %51 ]
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %8, align 8
  br label %15

57:                                               ; preds = %15
  %58 = load i32*, i32** %7, align 8
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_18__* (i32)*, %struct.TYPE_18__* (i32)** %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_18__* %61(i32 %64)
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %10, align 8
  %66 = load i32, i32* @RBTRED, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @RBTNIL, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @RBTNIL, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = call i32 @rbt_copy_data(%struct.TYPE_17__* %78, %struct.TYPE_18__* %79, %struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %83 = icmp ne %struct.TYPE_18__* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %57
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %90, align 8
  br label %95

91:                                               ; preds = %84
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %100

96:                                               ; preds = %57
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %99, align 8
  br label %100

100:                                              ; preds = %96, %95
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = call i32 @rbt_insert_fixup(%struct.TYPE_17__* %101, %struct.TYPE_18__* %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %4, align 8
  br label %105

105:                                              ; preds = %100, %31
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %106
}

declare dso_local i32 @rbt_copy_data(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @rbt_insert_fixup(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
