; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_ExecEndAgg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_ExecEndAgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i64, i64*, %struct.TYPE_7__*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecEndAgg(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @Max(i32 %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @tuplesort_end(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @tuplesort_end(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %68, %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @tuplesort_end(i64 %65)
  br label %67

67:                                               ; preds = %58, %49
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %45

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %32

75:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ReScanExprContext(i64 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ReScanExprContext(i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = call i32 @ExecFreeExprContext(i32* %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ExecClearTuple(i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = call i32* @outerPlanState(%struct.TYPE_8__* %112)
  store i32* %113, i32** %3, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @ExecEndNode(i32* %114)
  ret void
}

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @tuplesort_end(i64) #1

declare dso_local i32 @ReScanExprContext(i64) #1

declare dso_local i32 @ExecFreeExprContext(i32*) #1

declare dso_local i32 @ExecClearTuple(i32) #1

declare dso_local i32* @outerPlanState(%struct.TYPE_8__*) #1

declare dso_local i32 @ExecEndNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
