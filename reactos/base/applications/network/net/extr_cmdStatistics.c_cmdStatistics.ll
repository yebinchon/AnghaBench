; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStatistics.c_cmdStatistics.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStatistics.c_cmdStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i32] [i32 119, i32 111, i32 114, i32 107, i32 115, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_STATISTICS_SYNTAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_STATISTICS_HELP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 32, i32 32, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [16 x i32] [i32 32, i32 32, i32 32, i32 87, i32 111, i32 114, i32 107, i32 115, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 10, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cmdStatistics(i64 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  store i64 2, i64* %6, align 8
  br label %12

12:                                               ; preds = %73, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = load i32**, i32*** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @_wcsicmp(i32* %20, i8* bitcast ([7 x i32]* @.str to i8*))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %27, %23
  br label %73

30:                                               ; preds = %16
  %31 = load i32**, i32*** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @_wcsicmp(i32* %34, i8* bitcast ([12 x i32]* @.str.1 to i8*))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @FALSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %73

44:                                               ; preds = %30
  %45 = load i32**, i32*** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @_wcsicmp(i32* %48, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = call i32 @PrintMessageString(i32 4381)
  %53 = load i32, i32* @StdOut, align 4
  %54 = call i32 @ConPuts(i32 %53, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %55 = load i32, i32* @MSG_STATISTICS_SYNTAX, align 4
  %56 = call i32 @PrintNetMessage(i32 %55)
  store i64 0, i64* %3, align 8
  br label %105

57:                                               ; preds = %44
  %58 = load i32**, i32*** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @_wcsicmp(i32* %61, i8* bitcast ([6 x i32]* @.str.4 to i8*))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = call i32 @PrintMessageString(i32 4381)
  %66 = load i32, i32* @StdOut, align 4
  %67 = call i32 @ConPuts(i32 %66, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %68 = load i32, i32* @MSG_STATISTICS_SYNTAX, align 4
  %69 = call i32 @PrintNetMessage(i32 %68)
  %70 = load i32, i32* @MSG_STATISTICS_HELP, align 4
  %71 = call i32 @PrintNetMessage(i32 %70)
  store i64 0, i64* %3, align 8
  br label %105

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %43, %29
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %12

76:                                               ; preds = %12
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i64 (...) @DisplayServerStatistics()
  store i64 %80, i64* %7, align 8
  br label %97

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i64 (...) @DisplayWorkstationStatistics()
  store i64 %85, i64* %7, align 8
  br label %96

86:                                               ; preds = %81
  %87 = call i32 @PrintMessageString(i32 4379)
  %88 = load i32, i32* @StdOut, align 4
  %89 = call i32 @ConPuts(i32 %88, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %90 = load i32, i32* @StdOut, align 4
  %91 = call i32 @ConPuts(i32 %90, i8* bitcast ([11 x i32]* @.str.5 to i8*))
  %92 = load i32, i32* @StdOut, align 4
  %93 = call i32 @ConPuts(i32 %92, i8* bitcast ([16 x i32]* @.str.6 to i8*))
  %94 = load i32, i32* @StdOut, align 4
  %95 = call i32 @ConPuts(i32 %94, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %96

96:                                               ; preds = %86, %84
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i64, i64* %7, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @ERROR_SUCCESS, align 4
  %102 = call i32 @PrintErrorMessage(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %103, %64, %51
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @DisplayServerStatistics(...) #1

declare dso_local i64 @DisplayWorkstationStatistics(...) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
