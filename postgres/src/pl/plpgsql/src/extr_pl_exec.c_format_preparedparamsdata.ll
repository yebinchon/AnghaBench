; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_format_preparedparamsdata.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_format_preparedparamsdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32*, i32* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s$%d = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_9__*)* @format_preparedparamsdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_preparedparamsdata(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %94

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @get_eval_mcontext(i32* %15)
  %17 = call i32 @MemoryContextSwitchTo(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = call i32 @initStringInfo(%struct.TYPE_8__* %7)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %86, %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @appendStringInfo(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 110
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = call i32 @appendStringInfoString(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %85

44:                                               ; preds = %25
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @convert_value_to_string(i32* %45, i32 %52, i32 %59)
  store i8* %60, i8** %9, align 8
  %61 = call i32 @appendStringInfoCharMacro(%struct.TYPE_8__* %7, i8 signext 39)
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %80, %44
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 39
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @appendStringInfoCharMacro(%struct.TYPE_8__* %7, i8 signext %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @appendStringInfoCharMacro(%struct.TYPE_8__* %7, i8 signext %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  br label %63

83:                                               ; preds = %63
  %84 = call i32 @appendStringInfoCharMacro(%struct.TYPE_8__* %7, i8 signext 39)
  br label %85

85:                                               ; preds = %83, %42
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %19

89:                                               ; preds = %19
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @MemoryContextSwitchTo(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %89, %13
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @convert_value_to_string(i32*, i32, i32) #1

declare dso_local i32 @appendStringInfoCharMacro(%struct.TYPE_8__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
