; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseRangeTblRef.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseRangeTblRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@NIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@SUBQUERY_REL_ALIAS_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@SUBQUERY_COL_ALIAS_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_10__*, i32, i64, i32**, i32**)* @deparseRangeTblRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseRangeTblRef(i32 %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i64 %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %15, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = call i64 @IS_SIMPLE_REL(%struct.TYPE_10__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %7
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = call i64 @IS_JOIN_REL(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %7
  %31 = phi i1 [ true, %7 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NIL, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %30
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bms_is_member(i64 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i1 [ true, %43 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @appendStringInfoChar(i32 %58, i8 signext 40)
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = load i64, i64* @NIL, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @NIL, align 8
  %68 = load i32**, i32*** %14, align 8
  %69 = call i32 @deparseSelectStmtForRel(i32 %60, i32* %61, %struct.TYPE_10__* %62, i64 %63, i32 %66, i64 %67, i32 0, i32 0, i32 1, i32** %16, i32** %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @appendStringInfoChar(i32 %70, i8 signext 41)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SUBQUERY_REL_ALIAS_PREFIX, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @appendStringInfo(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @list_length(i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %54
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @appendStringInfoChar(i32 %87, i8 signext 40)
  store i32 1, i32* %18, align 4
  br label %89

89:                                               ; preds = %104, %86
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32, i32* %18, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @appendStringInfoString(i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @SUBQUERY_COL_ALIAS_PREFIX, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @appendStringInfo(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %89

107:                                              ; preds = %89
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @appendStringInfoChar(i32 %108, i8 signext 41)
  br label %110

110:                                              ; preds = %107, %54
  br label %119

111:                                              ; preds = %30
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i32**, i32*** %13, align 8
  %117 = load i32**, i32*** %14, align 8
  %118 = call i32 @deparseFromExprForRel(i32 %112, i32* %113, %struct.TYPE_10__* %114, i32 1, i64 %115, i32** %116, i32** %117)
  br label %119

119:                                              ; preds = %111, %110
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_SIMPLE_REL(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_10__*) #1

declare dso_local i32 @bms_is_member(i64, i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @deparseSelectStmtForRel(i32, i32*, %struct.TYPE_10__*, i64, i32, i64, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @deparseFromExprForRel(i32, i32*, %struct.TYPE_10__*, i32, i64, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
