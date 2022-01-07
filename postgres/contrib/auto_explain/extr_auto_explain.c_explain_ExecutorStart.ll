; ModuleID = '/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c_explain_ExecutorStart.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c_explain_ExecutorStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@nesting_level = common dso_local global i64 0, align 8
@auto_explain_log_min_duration = common dso_local global i64 0, align 8
@auto_explain_sample_rate = common dso_local global double 0.000000e+00, align 8
@MAX_RANDOM_VALUE = common dso_local global i64 0, align 8
@current_query_sampled = common dso_local global i32 0, align 4
@auto_explain_log_analyze = common dso_local global i64 0, align 8
@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@auto_explain_log_timing = common dso_local global i64 0, align 8
@INSTRUMENT_TIMER = common dso_local global i32 0, align 4
@INSTRUMENT_ROWS = common dso_local global i32 0, align 4
@auto_explain_log_buffers = common dso_local global i64 0, align 8
@INSTRUMENT_BUFFERS = common dso_local global i32 0, align 4
@INSTRUMENT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @explain_ExecutorStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_ExecutorStart(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @nesting_level, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i64, i64* @auto_explain_log_min_duration, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = call i32 (...) @IsParallelWorker()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = call double (...) @random()
  %16 = load double, double* @auto_explain_sample_rate, align 8
  %17 = load i64, i64* @MAX_RANDOM_VALUE, align 8
  %18 = sitofp i64 %17 to double
  %19 = fadd double %18, 1.000000e+00
  %20 = fmul double %16, %19
  %21 = fcmp olt double %15, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @current_query_sampled, align 4
  br label %24

23:                                               ; preds = %11, %8
  store i32 0, i32* @current_query_sampled, align 4
  br label %24

24:                                               ; preds = %23, %14
  br label %25

25:                                               ; preds = %24, %2
  %26 = call i64 (...) @auto_explain_enabled()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load i64, i64* @auto_explain_log_analyze, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load i64, i64* @auto_explain_log_timing, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @INSTRUMENT_TIMER, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @INSTRUMENT_ROWS, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i64, i64* @auto_explain_log_buffers, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @INSTRUMENT_BUFFERS, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %51
  br label %61

61:                                               ; preds = %60, %31, %28
  br label %62

62:                                               ; preds = %61, %25
  br i1 true, label %63, label %67

63:                                               ; preds = %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @prev_ExecutorStart(%struct.TYPE_7__* %64, i32 %65)
  br label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @standard_ExecutorStart(%struct.TYPE_7__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = call i64 (...) @auto_explain_enabled()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MemoryContextSwitchTo(i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @INSTRUMENT_ALL, align 4
  %87 = call i32* @InstrAlloc(i32 1, i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @MemoryContextSwitchTo(i32 %90)
  br label %92

92:                                               ; preds = %79, %74
  br label %93

93:                                               ; preds = %92, %71
  ret void
}

declare dso_local i32 @IsParallelWorker(...) #1

declare dso_local double @random(...) #1

declare dso_local i64 @auto_explain_enabled(...) #1

declare dso_local i32 @prev_ExecutorStart(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @standard_ExecutorStart(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @InstrAlloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
