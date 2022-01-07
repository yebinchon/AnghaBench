; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_setlocal.c_cmd_setlocal.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_setlocal.c_cmd_setlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i8*, %struct.TYPE_5__* }

@bc = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot allocate memory for Saved!\0A\00", align 1
@bEnableExtensions = common dso_local global i8* null, align 8
@bDelayedExpansion = common dso_local global i8* null, align 8
@nErrorLevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"enableextensions\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"disableextensions\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"enabledelayedexpansion\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"disabledelayedexpansion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_setlocal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bc, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

11:                                               ; preds = %1
  %12 = call %struct.TYPE_5__* @cmd_alloc(i32 32)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @error_out_of_memory()
  store i32 1, i32* %2, align 4
  br label %113

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bc, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load i8*, i8** @bEnableExtensions, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @bDelayedExpansion, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = call i32 (...) @DuplicateEnvironment()
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %18
  %38 = call i32 (...) @error_out_of_memory()
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @cmd_free(%struct.TYPE_5__* %39)
  store i32 1, i32* %2, align 4
  br label %113

41:                                               ; preds = %18
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bc, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  store i32 0, i32* @nErrorLevel, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32* @splitspace(i32 %45, i32* %6)
  store i32* %46, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %106, %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @_tcsicmp(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** @bEnableExtensions, align 8
  br label %105

62:                                               ; preds = %51
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @_tcsicmp(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load i8*, i8** @FALSE, align 8
  store i8* %72, i8** @bEnableExtensions, align 8
  br label %104

73:                                               ; preds = %62
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @_tcsicmp(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** @TRUE, align 8
  store i8* %83, i8** @bDelayedExpansion, align 8
  br label %103

84:                                               ; preds = %73
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @_tcsicmp(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load i8*, i8** @FALSE, align 8
  store i8* %94, i8** @bDelayedExpansion, align 8
  br label %102

95:                                               ; preds = %84
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @error_invalid_parameter_format(i32 %100)
  br label %109

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %47

109:                                              ; preds = %95, %47
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @freep(i32* %110)
  %112 = load i32, i32* @nErrorLevel, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %37, %15, %10
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_5__* @cmd_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @error_out_of_memory(...) #1

declare dso_local i32 @DuplicateEnvironment(...) #1

declare dso_local i32 @cmd_free(%struct.TYPE_5__*) #1

declare dso_local i32* @splitspace(i32, i32*) #1

declare dso_local i32 @_tcsicmp(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @error_invalid_parameter_format(i32) #1

declare dso_local i32 @freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
