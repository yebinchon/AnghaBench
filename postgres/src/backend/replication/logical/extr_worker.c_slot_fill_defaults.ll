; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_slot_fill_defaults.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_slot_fill_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, %struct.TYPE_11__*)* @slot_fill_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_fill_defaults(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_12__* @RelationGetDescr(i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @GetPerTupleExprContext(i32* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %140

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i64 @palloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @palloc(i32 %42)
  %44 = inttoptr i64 %43 to i32**
  store i32** %44, i32*** %13, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %101, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %49
  br label %101

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %101

74:                                               ; preds = %64
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i64 @build_column_default(i32 %77, i32 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %74
  %85 = load i32*, i32** %15, align 8
  %86 = call i32* @expression_planner(i32* %85)
  store i32* %86, i32** %15, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32* @ExecInitExpr(i32* %87, i32* null)
  %89 = load i32**, i32*** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* %88, i32** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %84, %74
  br label %101

101:                                              ; preds = %100, %73, %63
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %45

104:                                              ; preds = %45
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %137, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %105
  %110 = load i32**, i32*** %13, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %118, i64 %124
  %126 = call i32 @ExecEvalExpr(i32* %114, i32* %115, i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %129, i64 %135
  store i32 %126, i32* %136, align 4
  br label %137

137:                                              ; preds = %109
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %105

140:                                              ; preds = %31, %105
  ret void
}

declare dso_local %struct.TYPE_12__* @RelationGetDescr(i32) #1

declare dso_local i32* @GetPerTupleExprContext(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @build_column_default(i32, i32) #1

declare dso_local i32* @expression_planner(i32*) #1

declare dso_local i32* @ExecInitExpr(i32*, i32*) #1

declare dso_local i32 @ExecEvalExpr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
