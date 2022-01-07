; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainOpenGroup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainOpenGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32 }

@X_OPENING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"- \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExplainOpenGroup(i8* %0, i8* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %98 [
    i32 130, label %12
    i32 129, label %13
    i32 131, label %22
    i32 128, label %65
  ]

12:                                               ; preds = %4
  br label %98

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @X_OPENING, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = call i32 @ExplainXMLTag(i8* %14, i32 %15, %struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %98

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = call i32 @ExplainJSONLineEnding(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 2, %30
  %32 = call i32 @appendStringInfoSpaces(i32 %27, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @escape_json(i32 %38, i8* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @appendStringInfoString(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %35, %22
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 123, i32 91
  %53 = trunc i32 %52 to i8
  %54 = call i32 @appendStringInfoChar(i32 %48, i8 signext %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @lcons_int(i32 0, i8* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %98

65:                                               ; preds = %4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = call i32 @ExplainYAMLLineStarting(%struct.TYPE_6__* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @appendStringInfo(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @lcons_int(i32 1, i8* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %93

82:                                               ; preds = %65
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @appendStringInfoString(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @lcons_int(i32 0, i8* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %82, %70
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %4, %93, %45, %13, %12
  ret void
}

declare dso_local i32 @ExplainXMLTag(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ExplainJSONLineEnding(%struct.TYPE_6__*) #1

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @escape_json(i32, i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i8* @lcons_int(i32, i8*) #1

declare dso_local i32 @ExplainYAMLLineStarting(%struct.TYPE_6__*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
