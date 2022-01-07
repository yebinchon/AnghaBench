; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_standard_ExecutorRun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_standard_ExecutorRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*, i64, i32)* }
%struct.TYPE_12__ = type { i32, i64, i32 }

@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@CMD_SELECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"can't re-execute query flagged for single execution\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standard_ExecutorRun(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MemoryContextSwitchTo(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @InstrStartNode(i64 %45)
  br label %47

47:                                               ; preds = %42, %4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %11, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @CMD_SELECT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %47
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi i1 [ true, %47 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_13__*, i64, i32)*, i32 (%struct.TYPE_13__*, i64, i32)** %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %74(%struct.TYPE_13__* %75, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %71, %66
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ScanDirectionIsNoMovement(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @ERROR, align 4
  %95 = call i32 @elog(i32 %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %88, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @ExecutePlan(%struct.TYPE_12__* %99, i32 %102, i32 %107, i64 %108, i32 %109, i32 %110, i32 %111, %struct.TYPE_13__* %112, i32 %113)
  br label %115

115:                                              ; preds = %96, %81
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = call i32 %121(%struct.TYPE_13__* %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @InstrStopNode(i64 %132, i64 %135)
  br label %137

137:                                              ; preds = %129, %124
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @MemoryContextSwitchTo(i32 %138)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @InstrStartNode(i64) #1

declare dso_local i32 @ScanDirectionIsNoMovement(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecutePlan(%struct.TYPE_12__*, i32, i32, i64, i32, i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @InstrStopNode(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
