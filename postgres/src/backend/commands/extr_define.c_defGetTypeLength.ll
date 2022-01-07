; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_define.c_defGetTypeLength.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_define.c_defGetTypeLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s requires a parameter\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s requires an integer value\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid argument for %s: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defGetTypeLength(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @ereport(i32 %9, i32 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @nodeTag(i32* %20)
  switch i32 %21, label %55 [
    i32 131, label %22
    i32 132, label %27
    i32 129, label %36
    i32 128, label %45
    i32 130, label %54
  ]

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @intVal(i32* %25)
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %17
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %28, i32 %34)
  br label %62

36:                                               ; preds = %17
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @strVal(i32* %39)
  %41 = call i32 @pg_strcasecmp(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %73

44:                                               ; preds = %36
  br label %62

45:                                               ; preds = %17
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @TypeNameToString(i32* %48)
  %50 = call i32 @pg_strcasecmp(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %73

53:                                               ; preds = %45
  br label %62

54:                                               ; preds = %17
  br label %62

55:                                               ; preds = %17
  %56 = load i32, i32* @ERROR, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @nodeTag(i32* %59)
  %61 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %54, %53, %44, %27
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = call i32 @defGetString(%struct.TYPE_4__* %69)
  %71 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %70)
  %72 = call i32 @ereport(i32 %63, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %62, %52, %43, %22
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @intVal(i32*) #1

declare dso_local i32 @pg_strcasecmp(i32, i8*) #1

declare dso_local i32 @strVal(i32*) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @defGetString(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
