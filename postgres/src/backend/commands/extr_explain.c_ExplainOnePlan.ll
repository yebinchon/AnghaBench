; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainOnePlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainOnePlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64 }

@CMD_UTILITY = common dso_local global i64 0, align 8
@INSTRUMENT_TIMER = common dso_local global i32 0, align 4
@INSTRUMENT_ROWS = common dso_local global i32 0, align 4
@INSTRUMENT_BUFFERS = common dso_local global i32 0, align 4
@None_Receiver = common dso_local global i32* null, align 8
@InvalidSnapshot = common dso_local global i32 0, align 4
@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@NoMovementScanDirection = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Query\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Planning Time\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Execution Time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExplainOnePlan(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CMD_UTILITY, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %7
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @INSTRUMENT_TIMER, align 4
  %41 = load i32, i32* %20, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %20, align 4
  br label %53

43:                                               ; preds = %34, %7
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @INSTRUMENT_ROWS, align 4
  %50 = load i32, i32* %20, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @INSTRUMENT_BUFFERS, align 4
  %60 = load i32, i32* %20, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @INSTR_TIME_SET_CURRENT(i32 %63)
  %65 = call i32 (...) @GetActiveSnapshot()
  %66 = call i32 @PushCopiedSnapshot(i32 %65)
  %67 = call i32 (...) @UpdateActiveSnapshotCommandId()
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = icmp ne %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = call i32* @CreateIntoRelDestReceiver(%struct.TYPE_17__* %71)
  store i32* %72, i32** %15, align 8
  br label %75

73:                                               ; preds = %62
  %74 = load i32*, i32** @None_Receiver, align 8
  store i32* %74, i32** %15, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (...) @GetActiveSnapshot()
  %79 = load i32, i32* @InvalidSnapshot, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i32* @CreateQueryDesc(%struct.TYPE_16__* %76, i8* %77, i32 %78, i32 %79, i32* %80, i32 %81, i32* %82, i32 %83)
  store i32* %84, i32** %16, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  store i32 0, i32* %19, align 4
  br label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = icmp ne %struct.TYPE_17__* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = call i32 @GetIntoRelEFlags(%struct.TYPE_17__* %96)
  %98 = load i32, i32* %19, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @ExecutorStart(i32* %101, i32 %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %110 = icmp ne %struct.TYPE_17__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @NoMovementScanDirection, align 4
  store i32 %117, i32* %21, align 4
  br label %120

118:                                              ; preds = %111, %108
  %119 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %119, i32* %21, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @ExecutorRun(i32* %121, i32 %122, i64 0, i32 1)
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @ExecutorFinish(i32* %124)
  %126 = call i64 @elapsed_time(i32* %17)
  %127 = sitofp i64 %126 to double
  %128 = load double, double* %18, align 8
  %129 = fadd double %128, %127
  store double %129, double* %18, align 8
  br label %130

130:                                              ; preds = %120, %100
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 1, %struct.TYPE_18__* %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @ExplainPrintPlan(%struct.TYPE_18__* %133, i32* %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load i32*, i32** %14, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call double @INSTR_TIME_GET_DOUBLE(i32 %145)
  store double %146, double* %22, align 8
  %147 = load double, double* %22, align 8
  %148 = fmul double 1.000000e+03, %147
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %150 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %148, i32 3, %struct.TYPE_18__* %149)
  br label %151

151:                                              ; preds = %143, %140, %130
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @ExplainPrintTriggers(%struct.TYPE_18__* %157, i32* %158)
  br label %160

160:                                              ; preds = %156, %151
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = call i32 @ExplainPrintJITSummary(%struct.TYPE_18__* %166, i32* %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @INSTR_TIME_SET_CURRENT(i32 %170)
  %172 = load i32*, i32** %16, align 8
  %173 = call i32 @ExecutorEnd(i32* %172)
  %174 = load i32*, i32** %16, align 8
  %175 = call i32 @FreeQueryDesc(i32* %174)
  %176 = call i32 (...) @PopActiveSnapshot()
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = call i32 (...) @CommandCounterIncrement()
  br label %183

183:                                              ; preds = %181, %169
  %184 = call i64 @elapsed_time(i32* %17)
  %185 = sitofp i64 %184 to double
  %186 = load double, double* %18, align 8
  %187 = fadd double %186, %185
  store double %187, double* %18, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %183
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load double, double* %18, align 8
  %199 = fmul double 1.000000e+03, %198
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %201 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %199, i32 3, %struct.TYPE_18__* %200)
  br label %202

202:                                              ; preds = %197, %192, %183
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %204 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 1, %struct.TYPE_18__* %203)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @PushCopiedSnapshot(i32) #1

declare dso_local i32 @GetActiveSnapshot(...) #1

declare dso_local i32 @UpdateActiveSnapshotCommandId(...) #1

declare dso_local i32* @CreateIntoRelDestReceiver(%struct.TYPE_17__*) #1

declare dso_local i32* @CreateQueryDesc(%struct.TYPE_16__*, i8*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @GetIntoRelEFlags(%struct.TYPE_17__*) #1

declare dso_local i32 @ExecutorStart(i32*, i32) #1

declare dso_local i32 @ExecutorRun(i32*, i32, i64, i32) #1

declare dso_local i32 @ExecutorFinish(i32*) #1

declare dso_local i64 @elapsed_time(i32*) #1

declare dso_local i32 @ExplainOpenGroup(i8*, i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ExplainPrintPlan(%struct.TYPE_18__*, i32*) #1

declare dso_local double @INSTR_TIME_GET_DOUBLE(i32) #1

declare dso_local i32 @ExplainPropertyFloat(i8*, i8*, double, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ExplainPrintTriggers(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ExplainPrintJITSummary(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ExecutorEnd(i32*) #1

declare dso_local i32 @FreeQueryDesc(i32*) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @ExplainCloseGroup(i8*, i32*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
