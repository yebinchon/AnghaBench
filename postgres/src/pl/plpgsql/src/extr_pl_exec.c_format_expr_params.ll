; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_format_expr_params.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_format_expr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s%s = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, %struct.TYPE_16__*)* @format_expr_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_expr_params(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %96

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = call i32 @get_eval_mcontext(%struct.TYPE_17__* %23)
  %25 = call i32 @MemoryContextSwitchTo(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = call i32 @initStringInfo(%struct.TYPE_14__* %8)
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %27

27:                                               ; preds = %88, %22
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bms_next_member(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %27
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %14, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %45 = bitcast %struct.TYPE_15__* %44 to i32*
  %46 = call i32 @exec_eval_datum(%struct.TYPE_17__* %43, i32* %45, i32* %11, i32* %13, i32* %10, i32* %12)
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @appendStringInfo(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = call i32 @appendStringInfoString(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %88

59:                                               ; preds = %34
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @convert_value_to_string(%struct.TYPE_17__* %60, i32 %61, i32 %62)
  store i8* %63, i8** %15, align 8
  %64 = call i32 @appendStringInfoCharMacro(%struct.TYPE_14__* %8, i8 signext 39)
  %65 = load i8*, i8** %15, align 8
  store i8* %65, i8** %16, align 8
  br label %66

66:                                               ; preds = %83, %59
  %67 = load i8*, i8** %16, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i8*, i8** %16, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %16, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @appendStringInfoCharMacro(%struct.TYPE_14__* %8, i8 signext %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i8*, i8** %16, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @appendStringInfoCharMacro(%struct.TYPE_14__* %8, i8 signext %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %16, align 8
  br label %66

86:                                               ; preds = %66
  %87 = call i32 @appendStringInfoCharMacro(%struct.TYPE_14__* %8, i8 signext 39)
  br label %88

88:                                               ; preds = %86, %57
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %27

91:                                               ; preds = %27
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @MemoryContextSwitchTo(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %3, align 8
  br label %96

96:                                               ; preds = %91, %21
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_17__*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i32 @exec_eval_datum(%struct.TYPE_17__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_14__*, i8*, i8*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @convert_value_to_string(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @appendStringInfoCharMacro(%struct.TYPE_14__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
