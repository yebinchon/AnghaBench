; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsginidx.c_TS_execute_ternary.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsginidx.c_TS_execute_ternary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@QI_VAL = common dso_local global i64 0, align 8
@GIN_MAYBE = common dso_local global i32 0, align 4
@GIN_FALSE = common dso_local global i32 0, align 4
@GIN_TRUE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized operator: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @TS_execute_ternary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TS_execute_ternary(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @check_stack_depth()
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QI_VAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = bitcast %struct.TYPE_8__* %19 to i32*
  %21 = call i32 @checkcondition_gin_internal(%struct.TYPE_9__* %18, i32* %20, i32* null)
  store i32 %21, i32* %4, align 4
  br label %138

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %130 [
    i32 130, label %27
    i32 128, label %48
    i32 131, label %52
    i32 129, label %91
  ]

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @GIN_MAYBE, align 4
  store i32 %31, i32* %4, align 4
  br label %138

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 1
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @TS_execute_ternary(%struct.TYPE_9__* %33, %struct.TYPE_8__* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GIN_MAYBE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %138

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %138

48:                                               ; preds = %22
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32 1, i32* %51, align 4
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %22, %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %59
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @TS_execute_ternary(%struct.TYPE_9__* %53, %struct.TYPE_8__* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @GIN_FALSE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @GIN_FALSE, align 4
  store i32 %67, i32* %4, align 4
  br label %138

68:                                               ; preds = %52
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @TS_execute_ternary(%struct.TYPE_9__* %69, %struct.TYPE_8__* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @GIN_FALSE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @GIN_FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %138

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @GIN_TRUE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @GIN_TRUE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @GIN_TRUE, align 4
  store i32 %88, i32* %4, align 4
  br label %138

89:                                               ; preds = %83, %79
  %90 = load i32, i32* @GIN_MAYBE, align 4
  store i32 %90, i32* %4, align 4
  br label %138

91:                                               ; preds = %22
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @TS_execute_ternary(%struct.TYPE_9__* %92, %struct.TYPE_8__* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @GIN_TRUE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* @GIN_TRUE, align 4
  store i32 %106, i32* %4, align 4
  br label %138

107:                                              ; preds = %91
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 1
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @TS_execute_ternary(%struct.TYPE_9__* %108, %struct.TYPE_8__* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @GIN_TRUE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @GIN_TRUE, align 4
  store i32 %117, i32* %4, align 4
  br label %138

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @GIN_FALSE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @GIN_FALSE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @GIN_FALSE, align 4
  store i32 %127, i32* %4, align 4
  br label %138

128:                                              ; preds = %122, %118
  %129 = load i32, i32* @GIN_MAYBE, align 4
  store i32 %129, i32* %4, align 4
  br label %138

130:                                              ; preds = %22
  %131 = load i32, i32* @ERROR, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %128, %126, %116, %105, %89, %87, %77, %66, %43, %41, %30, %17
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @checkcondition_gin_internal(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
