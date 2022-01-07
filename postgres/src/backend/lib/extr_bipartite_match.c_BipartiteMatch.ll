; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_BipartiteMatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_BipartiteMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i16**, i16*, i16*, i16*, i16*, i64 }

@SHRT_MAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid set size for BipartiteMatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @BipartiteMatch(i32 %0, i32 %1, i16** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i16** %2, i16*** %6, align 8
  %9 = call %struct.TYPE_6__* @palloc(i32 56)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SHRT_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SHRT_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16, %12, %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i16**, i16*** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i16** %33, i16*** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = call i64 @palloc0(i32 %42)
  %44 = inttoptr i64 %43 to i16*
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i16* %44, i16** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 2
  %51 = trunc i64 %50 to i32
  %52 = call i64 @palloc0(i32 %51)
  %53 = inttoptr i64 %52 to i16*
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i16* %53, i16** %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 2
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_6__* @palloc(i32 %60)
  %62 = bitcast %struct.TYPE_6__* %61 to i16*
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  store i16* %62, i16** %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 2
  %69 = trunc i64 %68 to i32
  %70 = call %struct.TYPE_6__* @palloc(i32 %69)
  %71 = bitcast %struct.TYPE_6__* %70 to i16*
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  store i16* %71, i16** %73, align 8
  br label %74

74:                                               ; preds = %108, %26
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = call i64 @hk_breadth_search(%struct.TYPE_6__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %105, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i16*, i16** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %86, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %83
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @hk_depth_search(%struct.TYPE_6__* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %79

108:                                              ; preds = %79
  %109 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %74

110:                                              ; preds = %74
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %111
}

declare dso_local %struct.TYPE_6__* @palloc(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @hk_breadth_search(%struct.TYPE_6__*) #1

declare dso_local i64 @hk_depth_search(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
