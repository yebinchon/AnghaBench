; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintSettings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.config_generic = type { i8* }
%struct.TYPE_10__ = type { i8* }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s = '%s'\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s = NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ExplainPrintSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExplainPrintSettings(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_generic**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_generic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.config_generic*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %104

17:                                               ; preds = %1
  %18 = call %struct.config_generic** @get_explain_guc_options(i32* %3)
  store %struct.config_generic** %18, %struct.config_generic*** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %104

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1, %struct.TYPE_11__* %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %51, %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %36, i64 %38
  %40 = load %struct.config_generic*, %struct.config_generic** %39, align 8
  store %struct.config_generic* %40, %struct.config_generic** %7, align 8
  %41 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %42 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @GetConfigOptionByName(i8* %43, i32* null, i32 1)
  store i8* %44, i8** %6, align 8
  %45 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %46 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = call i32 @ExplainPropertyText(i8* %47, i8* %48, %struct.TYPE_11__* %49)
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1, %struct.TYPE_11__* %55)
  br label %104

57:                                               ; preds = %22
  %58 = call i32 @initStringInfo(%struct.TYPE_10__* %9)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %92, %57
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %64, i64 %66
  %68 = load %struct.config_generic*, %struct.config_generic** %67, align 8
  store %struct.config_generic* %68, %struct.config_generic** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @appendStringInfoString(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %63
  %74 = load %struct.config_generic*, %struct.config_generic** %11, align 8
  %75 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @GetConfigOptionByName(i8* %76, i32* null, i32 1)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.config_generic*, %struct.config_generic** %11, align 8
  %82 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %84)
  br label %91

86:                                               ; preds = %73
  %87 = load %struct.config_generic*, %struct.config_generic** %11, align 8
  %88 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %59

95:                                               ; preds = %59
  %96 = load i32, i32* %3, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %100, %struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %16, %21, %103, %54
  ret void
}

declare dso_local %struct.config_generic** @get_explain_guc_options(i32*) #1

declare dso_local i32 @ExplainOpenGroup(i8*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i8* @GetConfigOptionByName(i8*, i32*, i32) #1

declare dso_local i32 @ExplainPropertyText(i8*, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @ExplainCloseGroup(i8*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
