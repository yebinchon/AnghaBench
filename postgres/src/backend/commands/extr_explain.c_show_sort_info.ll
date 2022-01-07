; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sort_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sort_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32*, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Sort Method: %s  %s: %ldkB\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Sort Method\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Sort Space Used\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Sort Space Type\00", align 1
@SORT_TYPE_STILL_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Worker %d:  Sort Method: %s  %s: %ldkB\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Workers\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Worker\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Worker Number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @show_sort_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_sort_info(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %175

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %77

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @tuplesort_get_stats(i32* %35, %struct.TYPE_13__* %6)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @tuplesort_method_name(i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @tuplesort_space_type_name(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %31
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @appendStringInfoSpaces(i32 %53, i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i32, i8*, ...) @appendStringInfo(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63, i64 %64)
  br label %76

66:                                               ; preds = %31
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %67, %struct.TYPE_15__* %68)
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %70, %struct.TYPE_15__* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %73, %struct.TYPE_15__* %74)
  br label %76

76:                                               ; preds = %66, %50
  br label %77

77:                                               ; preds = %76, %26, %21
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %175

82:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %165, %82
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %168

91:                                               ; preds = %83
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %98
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %12, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SORT_TYPE_STILL_IN_PROGRESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %165

106:                                              ; preds = %91
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @tuplesort_method_name(i32 %109)
  store i8* %110, i8** %13, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @tuplesort_space_type_name(i32 %113)
  store i8* %114, i8** %14, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %15, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %106
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 2
  %131 = call i32 @appendStringInfoSpaces(i32 %126, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i64, i64* %15, align 8
  %139 = call i32 (i32, i8*, ...) @appendStringInfo(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %135, i8* %136, i8* %137, i64 %138)
  br label %164

140:                                              ; preds = %106
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, %struct.TYPE_15__* %144)
  store i32 1, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 1, %struct.TYPE_15__* %147)
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* null, i64 %150, %struct.TYPE_15__* %151)
  %153 = load i8*, i8** %13, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %153, %struct.TYPE_15__* %154)
  %156 = load i64, i64* %15, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %156, %struct.TYPE_15__* %157)
  %159 = load i8*, i8** %14, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %159, %struct.TYPE_15__* %160)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 1, %struct.TYPE_15__* %162)
  br label %164

164:                                              ; preds = %146, %123
  br label %165

165:                                              ; preds = %164, %105
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %83

168:                                              ; preds = %83
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, %struct.TYPE_15__* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %20, %174, %77
  ret void
}

declare dso_local i32 @tuplesort_get_stats(i32*, %struct.TYPE_13__*) #1

declare dso_local i8* @tuplesort_method_name(i32) #1

declare dso_local i8* @tuplesort_space_type_name(i32) #1

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, ...) #1

declare dso_local i32 @ExplainPropertyText(i8*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @ExplainPropertyInteger(i8*, i8*, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @ExplainOpenGroup(i8*, i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ExplainCloseGroup(i8*, i8*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
