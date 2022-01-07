; ModuleID = '/home/carl/AnghaBench/netdata/collectors/idlejitter.plugin/extr_plugin_idlejitter.c_cpuidlejitter_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/idlejitter.plugin/extr_plugin_idlejitter.c_cpuidlejitter_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.timeval = type { i32 }

@cpuidlejitter_main_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"plugin:idlejitter\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"loop time in ms\00", align 1
@CPU_IDLEJITTER_SLEEP_TIME_MS = common dso_local global i64 0, align 8
@USEC_PER_MS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"idlejitter\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CPU Idle Jitter\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"microseconds lost/s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"idlejitter.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_IDLEJITTER = common dso_local global i32 0, align 4
@localhost = common dso_local global %struct.TYPE_2__* null, align 8
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@USEC_PER_SEC = common dso_local global i64 0, align 8
@netdata_exit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpuidlejitter_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %19 = load i32, i32* @cpuidlejitter_main_cleanup, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @netdata_thread_cleanup_push(i32 %19, i8* %20)
  %22 = load i64, i64* @CPU_IDLEJITTER_SLEEP_TIME_MS, align 8
  %23 = call i64 @config_get_number(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @USEC_PER_MS, align 8
  %25 = mul nsw i64 %23, %24
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i64, i64* @CPU_IDLEJITTER_SLEEP_TIME_MS, align 8
  %30 = call i32 @config_set_number(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @CPU_IDLEJITTER_SLEEP_TIME_MS, align 8
  %32 = load i64, i64* @USEC_PER_MS, align 8
  %33 = mul nsw i64 %31, %32
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_IDLEJITTER, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %40 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %35, i64 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %43 = call i32* @rrddim_add(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %46 = call i32* @rrddim_add(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %49 = call i32* @rrddim_add(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %48)
  store i32* %49, i32** %7, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USEC_PER_SEC, align 8
  %54 = mul nsw i64 %52, %53
  store i64 %54, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %137, %34
  br i1 true, label %56, label %140

56:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %57 = load i64, i64* @netdata_exit, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %140

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = call i32 @now_monotonic_timeval(%struct.timeval* %9)
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @sleep_usec(i64 %67)
  %69 = call i32 @now_monotonic_timeval(%struct.timeval* %10)
  %70 = call i64 @dt_usec(%struct.timeval* %10, %struct.timeval* %9)
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %3, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %13, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i64, i64* %18, align 8
  store i64 %87, i64* %14, align 8
  br label %95

88:                                               ; preds = %65
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %18, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* %18, align 8
  store i64 %100, i64* %15, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %61

104:                                              ; preds = %61
  %105 = load i64, i64* @netdata_exit, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %140

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @likely(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @rrdset_next(i32* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @rrddim_set_by_pointer(i32* %119, i32* %120, i64 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @rrddim_set_by_pointer(i32* %123, i32* %124, i64 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = sdiv i64 %129, %131
  %133 = call i32 @rrddim_set_by_pointer(i32* %127, i32* %128, i64 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @rrdset_done(i32* %134)
  br label %136

136:                                              ; preds = %118, %108
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %55

140:                                              ; preds = %107, %59, %55
  %141 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i64 @config_get_number(i8*, i8*, i64) #1

declare dso_local i32 @config_set_number(i8*, i8*, i64) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i32*, i32, i64, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @now_monotonic_timeval(%struct.timeval*) #1

declare dso_local i32 @sleep_usec(i64) #1

declare dso_local i64 @dt_usec(%struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
