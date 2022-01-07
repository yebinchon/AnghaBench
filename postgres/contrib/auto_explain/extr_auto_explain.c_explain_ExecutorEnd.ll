; ModuleID = '/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c_explain_ExecutorEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c_explain_ExecutorEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { double }
%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_19__*, i64, i32, i64, i32 }
%struct.TYPE_19__ = type { i32, i8* }

@auto_explain_log_min_duration = common dso_local global double 0.000000e+00, align 8
@auto_explain_log_analyze = common dso_local global i64 0, align 8
@auto_explain_log_verbose = common dso_local global i32 0, align 4
@auto_explain_log_buffers = common dso_local global i64 0, align 8
@auto_explain_log_timing = common dso_local global i64 0, align 8
@auto_explain_log_format = common dso_local global i64 0, align 8
@auto_explain_log_settings = common dso_local global i32 0, align 4
@auto_explain_log_triggers = common dso_local global i64 0, align 8
@EXPLAIN_FORMAT_JSON = common dso_local global i64 0, align 8
@auto_explain_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"duration: %.3f ms  plan:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @explain_ExecutorEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_ExecutorEnd(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %8 = icmp ne %struct.TYPE_22__* %7, null
  br i1 %8, label %9, label %188

9:                                                ; preds = %1
  %10 = call i64 (...) @auto_explain_enabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %188

12:                                               ; preds = %9
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %16 = call i32 @InstrEndLoop(%struct.TYPE_22__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, 1.000000e+03
  store double %22, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = load double, double* @auto_explain_log_min_duration, align 8
  %25 = fcmp oge double %23, %24
  br i1 %25, label %26, label %187

26:                                               ; preds = %12
  %27 = call %struct.TYPE_21__* (...) @NewExplainState()
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %4, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* @auto_explain_log_analyze, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i1 [ false, %26 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @auto_explain_log_verbose, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i64, i64* @auto_explain_log_buffers, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %35
  %51 = phi i1 [ false, %35 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i64, i64* @auto_explain_log_timing, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %59, %50
  %63 = phi i1 [ false, %50 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* @auto_explain_log_format, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 7
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @auto_explain_log_settings, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = call i32 @ExplainBeginOutput(%struct.TYPE_21__* %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = call i32 @ExplainQueryText(%struct.TYPE_21__* %80, %struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %85 = call i32 @ExplainPrintPlan(%struct.TYPE_21__* %83, %struct.TYPE_20__* %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %62
  %91 = load i64, i64* @auto_explain_log_triggers, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = call i32 @ExplainPrintTriggers(%struct.TYPE_21__* %94, %struct.TYPE_20__* %95)
  br label %97

97:                                               ; preds = %93, %90, %62
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %105 = call i32 @ExplainPrintJITSummary(%struct.TYPE_21__* %103, %struct.TYPE_20__* %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = call i32 @ExplainEndOutput(%struct.TYPE_21__* %107)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %106
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %120, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %146

132:                                              ; preds = %115
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %137, i64 %144
  store i8 0, i8* %145, align 1
  br label %146

146:                                              ; preds = %132, %115, %106
  %147 = load i64, i64* @auto_explain_log_format, align 8
  %148 = load i64, i64* @EXPLAIN_FORMAT_JSON, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 123, i8* %156, align 1
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %161, i64 %168
  store i8 125, i8* %169, align 1
  br label %170

170:                                              ; preds = %150, %146
  %171 = load i32, i32* @auto_explain_log_level, align 4
  %172 = load double, double* %3, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), double %172, i8* %177)
  %179 = call i32 @errhidestmt(i32 1)
  %180 = call i32 @ereport(i32 %171, i32 %179)
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @pfree(i8* %185)
  br label %187

187:                                              ; preds = %170, %12
  br label %188

188:                                              ; preds = %187, %9, %1
  br i1 true, label %189, label %192

189:                                              ; preds = %188
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %191 = call i32 @prev_ExecutorEnd(%struct.TYPE_20__* %190)
  br label %195

192:                                              ; preds = %188
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %194 = call i32 @standard_ExecutorEnd(%struct.TYPE_20__* %193)
  br label %195

195:                                              ; preds = %192, %189
  ret void
}

declare dso_local i64 @auto_explain_enabled(...) #1

declare dso_local i32 @InstrEndLoop(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @NewExplainState(...) #1

declare dso_local i32 @ExplainBeginOutput(%struct.TYPE_21__*) #1

declare dso_local i32 @ExplainQueryText(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ExplainPrintPlan(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ExplainPrintTriggers(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ExplainPrintJITSummary(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ExplainEndOutput(%struct.TYPE_21__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, double, i8*) #1

declare dso_local i32 @errhidestmt(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @prev_ExecutorEnd(%struct.TYPE_20__*) #1

declare dso_local i32 @standard_ExecutorEnd(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
