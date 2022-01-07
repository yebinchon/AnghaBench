; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_processXactStats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_processXactStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { double, i64, i32, i32 }

@progress = common dso_local global i64 0, align 8
@throttle_delay = common dso_local global i64 0, align 8
@latency_limit = common dso_local global double 0.000000e+00, align 8
@use_log = common dso_local global i64 0, align 8
@per_script_stats = common dso_local global i64 0, align 8
@sql_script = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32, i32*)* @processXactStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processXactStats(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %15 = load i64, i64* @progress, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* @throttle_delay, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load double, double* @latency_limit, align 8
  %22 = fcmp une double %21, 0.000000e+00
  br label %23

23:                                               ; preds = %20, %17, %5
  %24 = phi i1 [ true, %17 ], [ true, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @use_log, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @per_script_stats, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28, %23
  %35 = phi i1 [ true, %28 ], [ true, %23 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @INSTR_TIME_SET_CURRENT_LAZY(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call double @INSTR_TIME_GET_MICROSEC(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = fsub double %48, %51
  store double %52, double* %11, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call double @INSTR_TIME_GET_MICROSEC(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = fsub double %56, %59
  store double %60, double* %12, align 8
  br label %61

61:                                               ; preds = %42, %39, %34
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = load double, double* %11, align 8
  %69 = load double, double* %12, align 8
  %70 = call i32 @accumStats(%struct.TYPE_12__* %66, i32 %67, double %68, double %69)
  %71 = load double, double* @latency_limit, align 8
  %72 = fcmp une double %71, 0.000000e+00
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load double, double* %11, align 8
  %75 = load double, double* @latency_limit, align 8
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %73, %64
  br label %89

83:                                               ; preds = %61
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %82
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i64, i64* @use_log, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load double, double* %11, align 8
  %102 = load double, double* %12, align 8
  %103 = call i32 @doLog(%struct.TYPE_9__* %97, %struct.TYPE_10__* %98, i32* %99, i32 %100, double %101, double %102)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load i64, i64* @per_script_stats, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sql_script, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %9, align 4
  %115 = load double, double* %11, align 8
  %116 = load double, double* %12, align 8
  %117 = call i32 @accumStats(%struct.TYPE_12__* %113, i32 %114, double %115, double %116)
  br label %118

118:                                              ; preds = %107, %104
  ret void
}

declare dso_local i32 @INSTR_TIME_SET_CURRENT_LAZY(i32) #1

declare dso_local double @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @accumStats(%struct.TYPE_12__*, i32, double, double) #1

declare dso_local i32 @doLog(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
