; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecutePlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecutePlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 (i32*, %struct.TYPE_8__*)* }

@CMD_SELECT = common dso_local global i64 0, align 8
@EXEC_FLAG_BACKWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i64, i32, i64, i32, %struct.TYPE_8__*, i32)* @ExecutePlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecutePlan(%struct.TYPE_7__* %0, i32* %1, i32 %2, i64 %3, i32 %4, i64 %5, i32 %6, %struct.TYPE_8__* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %17, align 8
  store i32 %8, i32* %18, align 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %16, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @EnterParallelMode()
  br label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %88, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = call i32 @ResetPerTupleExprContext(%struct.TYPE_7__* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @ExecProcNode(i32* %39)
  store i32* %40, i32** %19, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i64 @TupIsNull(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %89

45:                                               ; preds = %36
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = call i32* @ExecFilterJunk(i32* %53, i32* %54)
  store i32* %55, i32** %19, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (i32*, %struct.TYPE_8__*)*, i32 (i32*, %struct.TYPE_8__*)** %61, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %65 = call i32 %62(i32* %63, %struct.TYPE_8__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %89

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @CMD_SELECT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i64, i64* %20, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %20, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %20, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83, %78
  br label %36

89:                                               ; preds = %87, %67, %44
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @EXEC_FLAG_BACKWARD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @ExecShutdownNode(i32* %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (...) @ExitParallelMode()
  br label %104

104:                                              ; preds = %102, %99
  ret void
}

declare dso_local i32 @EnterParallelMode(...) #1

declare dso_local i32 @ResetPerTupleExprContext(%struct.TYPE_7__*) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32* @ExecFilterJunk(i32*, i32*) #1

declare dso_local i32 @ExecShutdownNode(i32*) #1

declare dso_local i32 @ExitParallelMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
