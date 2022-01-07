; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseSelectStmtForRel.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseSelectStmtForRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32**, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [9 x i8] c" HAVING \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deparseSelectStmtForRel(i32 %0, i32* %1, %struct.TYPE_16__* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32** %9, i32** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca %struct.TYPE_15__, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32** %9, i32*** %21, align 8
  store i32** %10, i32*** %22, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %24, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %32 = call i64 @IS_JOIN_REL(%struct.TYPE_16__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %11
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %36 = call i64 @IS_SIMPLE_REL(%struct.TYPE_16__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %40 = call i64 @IS_UPPER_REL(%struct.TYPE_16__* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %34, %11
  %43 = phi i1 [ true, %34 ], [ true, %11 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  store i32* %48, i32** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %53 = call i64 @IS_UPPER_REL(%struct.TYPE_16__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  br label %61

59:                                               ; preds = %42
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi %struct.TYPE_16__* [ %58, %55 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %63, align 8
  %64 = load i32**, i32*** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32** %64, i32*** %65, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %20, align 4
  %68 = load i32**, i32*** %21, align 8
  %69 = call i32 @deparseSelectSql(i32* %66, i32 %67, i32** %68, %struct.TYPE_15__* %23)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %71 = call i64 @IS_UPPER_REL(%struct.TYPE_16__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %26, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %25, align 8
  br label %85

83:                                               ; preds = %61
  %84 = load i32*, i32** %16, align 8
  store i32* %84, i32** %25, align 8
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i32*, i32** %25, align 8
  %87 = call i32 @deparseFromExpr(i32* %86, %struct.TYPE_15__* %23)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %89 = call i64 @IS_UPPER_REL(%struct.TYPE_16__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @appendGroupByClause(i32* %92, %struct.TYPE_15__* %23)
  %94 = load i32*, i32** %16, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @appendStringInfoString(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @appendConditions(i32* %99, %struct.TYPE_15__* %23)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32*, i32** %17, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @appendOrderByClause(i32* %106, i32 %107, %struct.TYPE_15__* %23)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @appendLimitClause(%struct.TYPE_15__* %23)
  br label %114

114:                                              ; preds = %112, %109
  %115 = call i32 @deparseLockingClause(%struct.TYPE_15__* %23)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_SIMPLE_REL(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_UPPER_REL(%struct.TYPE_16__*) #1

declare dso_local i32 @deparseSelectSql(i32*, i32, i32**, %struct.TYPE_15__*) #1

declare dso_local i32 @deparseFromExpr(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @appendGroupByClause(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendConditions(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @appendOrderByClause(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @appendLimitClause(%struct.TYPE_15__*) #1

declare dso_local i32 @deparseLockingClause(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
