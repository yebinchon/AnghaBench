; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_update_query_def.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_update_query_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 }

@RTE_RELATION = common dso_local global i64 0, align 8
@PRETTYINDENT_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"UPDATE %s%s\00", align 1
@NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" SET \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" WHERE \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" RETURNING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*)* @get_update_query_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_update_query_def(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call i32 @get_with_clause(%struct.TYPE_25__* %10, %struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_24__* @rt_fetch(i32 %15, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTE_RELATION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = call i64 @PRETTY_INDENT(%struct.TYPE_23__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @appendStringInfoChar(i32 %31, i8 signext 32)
  %33 = load i32, i32* @PRETTYINDENT_STD, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = call i32 @only_marker(%struct.TYPE_24__* %40)
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NIL, align 4
  %46 = call i32 @generate_relation_name(i32 %44, i32 %45)
  %47 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = icmp ne %struct.TYPE_21__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @quote_identifier(i32 %58)
  %60 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %38
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @appendStringInfoString(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %70 = call i32 @get_update_query_targetlist_def(%struct.TYPE_25__* %64, i32 %67, %struct.TYPE_23__* %68, %struct.TYPE_24__* %69)
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %73 = call i32 @get_from_clause(%struct.TYPE_25__* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_23__* %72)
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %61
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = load i32, i32* @PRETTYINDENT_STD, align 4
  %83 = sub nsw i32 0, %82
  %84 = load i32, i32* @PRETTYINDENT_STD, align 4
  %85 = call i32 @appendContextKeyword(%struct.TYPE_23__* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %84, i32 1)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = call i32 @get_rule_expr(i32* %90, %struct.TYPE_23__* %91, i32 0)
  br label %93

93:                                               ; preds = %80, %61
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = load i32, i32* @PRETTYINDENT_STD, align 4
  %101 = sub nsw i32 0, %100
  %102 = load i32, i32* @PRETTYINDENT_STD, align 4
  %103 = call i32 @appendContextKeyword(%struct.TYPE_23__* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %102, i32 1)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = call i32 @get_target_list(i64 %106, %struct.TYPE_23__* %107, i32* null)
  br label %109

109:                                              ; preds = %98, %93
  ret void
}

declare dso_local i32 @get_with_clause(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @rt_fetch(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PRETTY_INDENT(%struct.TYPE_23__*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @only_marker(%struct.TYPE_24__*) #1

declare dso_local i32 @generate_relation_name(i32, i32) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @get_update_query_targetlist_def(%struct.TYPE_25__*, i32, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @get_from_clause(%struct.TYPE_25__*, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @appendContextKeyword(%struct.TYPE_23__*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_rule_expr(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @get_target_list(i64, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
