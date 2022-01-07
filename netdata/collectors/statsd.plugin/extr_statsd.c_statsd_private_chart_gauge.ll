; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_gauge.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_gauge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i8*, i32, i8*, i32 }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"updating private chart for gauge metric '%s'\00", align 1
@RRD_ID_LENGTH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"gauge\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"statsd_gauge.%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"statsd private chart for gauge %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gauges\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@NETDATA_CHART_PRIO_STATSD_PRIVATE = common dso_local global i32 0, align 4
@statsd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @statsd_private_chart_gauge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statsd_private_chart_gauge(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @D_STATSD, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @debug(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %1
  %22 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %3, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %4, align 8
  %27 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %33 = call i32 @statsd_get_metric_type_and_id(%struct.TYPE_6__* %31, i8* %26, i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %6, align 8
  %38 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @snprintfz(i8* %37, i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %7, align 8
  %47 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintfz(i8* %46, i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = load i32, i32* @NETDATA_CHART_PRIO_STATSD_PRIVATE, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @statsd, i32 0, i32 1), align 4
  %55 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %56 = call i64 @statsd_private_rrdset_create(%struct.TYPE_6__* %52, i8* %26, i8* %30, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %37, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @statsd, i32 0, i32 0), align 4
  %63 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %64 = call i8* @rrddim_add(i64 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 1, i32 %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %21
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %78 = call i8* @rrddim_add(i64 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %73, %21
  %82 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %88

83:                                               ; preds = %1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @rrdset_next(i64 %86)
  br label %88

88:                                               ; preds = %83, %81
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @rrddim_set_by_pointer(i64 %91, i8* %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %88
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @rrddim_set_by_pointer(i64 %106, i8* %109, i32 %112)
  br label %114

114:                                              ; preds = %103, %88
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @rrdset_done(i64 %117)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @statsd_get_metric_type_and_id(%struct.TYPE_6__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i64 @statsd_private_rrdset_create(%struct.TYPE_6__*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @rrddim_add(i64, i8*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rrdset_next(i64) #1

declare dso_local i32 @rrddim_set_by_pointer(i64, i8*, i32) #1

declare dso_local i32 @rrdset_done(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
