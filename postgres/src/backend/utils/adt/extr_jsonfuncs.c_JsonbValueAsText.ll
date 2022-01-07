; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_JsonbValueAsText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_JsonbValueAsText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@numeric_out = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unrecognized jsonb type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @JsonbValueAsText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @JsonbValueAsText(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %63 [
    i32 130, label %9
    i32 131, label %10
    i32 128, label %22
    i32 129, label %34
    i32 132, label %45
  ]

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %69

10:                                               ; preds = %1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32* @cstring_to_text_with_len(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %20

18:                                               ; preds = %10
  %19 = call i32* @cstring_to_text_with_len(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  store i32* %21, i32** %2, align 8
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @cstring_to_text_with_len(i8* %27, i32 %32)
  store i32* %33, i32** %2, align 8
  br label %69

34:                                               ; preds = %1
  %35 = load i32, i32* @numeric_out, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PointerGetDatum(i32 %39)
  %41 = call i32 @DirectFunctionCall1(i32 %35, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @DatumGetCString(i32 %42)
  %44 = call i32* @cstring_to_text(i32 %43)
  store i32* %44, i32** %2, align 8
  br label %69

45:                                               ; preds = %1
  %46 = call i32 @initStringInfo(%struct.TYPE_12__* %5)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @JsonbToCString(%struct.TYPE_12__* %5, i32 %51, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @cstring_to_text_with_len(i8* %59, i32 %61)
  store i32* %62, i32** %2, align 8
  br label %69

63:                                               ; preds = %1
  %64 = load i32, i32* @ERROR, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %63, %45, %34, %22, %20, %9
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32* @cstring_to_text_with_len(i8*, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32* @cstring_to_text(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @JsonbToCString(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
