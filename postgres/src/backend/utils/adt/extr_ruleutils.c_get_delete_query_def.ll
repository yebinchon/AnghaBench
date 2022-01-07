; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_delete_query_def.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_delete_query_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }

@RTE_RELATION = common dso_local global i64 0, align 8
@PRETTYINDENT_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DELETE FROM %s%s\00", align 1
@NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" USING \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" WHERE \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" RETURNING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*)* @get_delete_query_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_delete_query_def(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = call i32 @get_with_clause(%struct.TYPE_22__* %10, %struct.TYPE_20__* %11)
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_21__* @rt_fetch(i32 %15, i32 %18)
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTE_RELATION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = call i64 @PRETTY_INDENT(%struct.TYPE_20__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @appendStringInfoChar(i32 %31, i8 signext 32)
  %33 = load i32, i32* @PRETTYINDENT_STD, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = call i32 @only_marker(%struct.TYPE_21__* %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NIL, align 4
  %46 = call i32 @generate_relation_name(i32 %44, i32 %45)
  %47 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @quote_identifier(i32 %58)
  %60 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %38
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = call i32 @get_from_clause(%struct.TYPE_22__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = load i32, i32* @PRETTYINDENT_STD, align 4
  %74 = sub nsw i32 0, %73
  %75 = load i32, i32* @PRETTYINDENT_STD, align 4
  %76 = call i32 @appendContextKeyword(%struct.TYPE_20__* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75, i32 1)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = call i32 @get_rule_expr(i32* %81, %struct.TYPE_20__* %82, i32 0)
  br label %84

84:                                               ; preds = %71, %61
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = load i32, i32* @PRETTYINDENT_STD, align 4
  %92 = sub nsw i32 0, %91
  %93 = load i32, i32* @PRETTYINDENT_STD, align 4
  %94 = call i32 @appendContextKeyword(%struct.TYPE_20__* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93, i32 1)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = call i32 @get_target_list(i64 %97, %struct.TYPE_20__* %98, i32* null)
  br label %100

100:                                              ; preds = %89, %84
  ret void
}

declare dso_local i32 @get_with_clause(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @rt_fetch(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PRETTY_INDENT(%struct.TYPE_20__*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @only_marker(%struct.TYPE_21__*) #1

declare dso_local i32 @generate_relation_name(i32, i32) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @get_from_clause(%struct.TYPE_22__*, i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @appendContextKeyword(%struct.TYPE_20__*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_rule_expr(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @get_target_list(i64, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
