; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainProperty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@X_OPENING = common dso_local global i32 0, align 4
@X_NOWHITESPACE = common dso_local global i32 0, align 4
@X_CLOSING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, %struct.TYPE_6__*)* @ExplainProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExplainProperty(i8* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %134 [
    i32 130, label %15
    i32 129, label %42
    i32 131, label %76
    i32 128, label %111
  ]

15:                                               ; preds = %5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = call i32 @appendStringInfoSpaces(i32 %18, i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %32)
  br label %41

34:                                               ; preds = %15
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %34, %26
  br label %134

42:                                               ; preds = %5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = call i32 @appendStringInfoSpaces(i32 %45, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @X_OPENING, align 4
  %53 = load i32, i32* @X_NOWHITESPACE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = call i32 @ExplainXMLTag(i8* %51, i32 %54, %struct.TYPE_6__* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @escape_xml(i8* %57)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @appendStringInfoString(i32 %61, i8* %62)
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @pfree(i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* @X_CLOSING, align 4
  %68 = load i32, i32* @X_NOWHITESPACE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = call i32 @ExplainXMLTag(i8* %66, i32 %69, %struct.TYPE_6__* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @appendStringInfoChar(i32 %74, i8 signext 10)
  br label %134

76:                                               ; preds = %5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = call i32 @ExplainJSONLineEnding(%struct.TYPE_6__* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i32 @appendStringInfoSpaces(i32 %81, i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @escape_json(i32 %89, i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @appendStringInfoString(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %76
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @appendStringInfoString(i32 %101, i8* %102)
  br label %110

104:                                              ; preds = %76
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @escape_json(i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %104, %98
  br label %134

111:                                              ; preds = %5
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = call i32 @ExplainYAMLLineStarting(%struct.TYPE_6__* %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @appendStringInfoString(i32 %124, i8* %125)
  br label %133

127:                                              ; preds = %111
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @escape_yaml(i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %5, %133, %110, %42, %41
  ret void
}

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*, ...) #1

declare dso_local i32 @ExplainXMLTag(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i8* @escape_xml(i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @ExplainJSONLineEnding(%struct.TYPE_6__*) #1

declare dso_local i32 @escape_json(i32, i8*) #1

declare dso_local i32 @ExplainYAMLLineStarting(%struct.TYPE_6__*) #1

declare dso_local i32 @escape_yaml(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
