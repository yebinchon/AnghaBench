; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_counter_or_meter.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_counter_or_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i8*, i32, i8*, i32 }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"updating private chart for %s metric '%s'\00", align 1
@RRD_ID_LENGTH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"statsd_%s.%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"statsd private chart for %s %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"events/s\00", align 1
@NETDATA_CHART_PRIO_STATSD_PRIVATE = common dso_local global i32 0, align 4
@statsd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*)* @statsd_private_chart_counter_or_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statsd_private_chart_counter_or_meter(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @D_STATSD, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @debug(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %3
  %27 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %7, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %32 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %39 = call i32 @statsd_get_metric_type_and_id(%struct.TYPE_6__* %36, i8* %31, i8* %35, i8* %37, i32 %38)
  %40 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %10, align 8
  %44 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snprintfz(i8* %43, i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %11, align 8
  %54 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snprintfz(i8* %53, i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @NETDATA_CHART_PRIO_STATSD_PRIVATE, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @statsd, i32 0, i32 0), align 4
  %64 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %65 = call i64 @statsd_private_rrdset_create(%struct.TYPE_6__* %60, i8* %31, i8* %35, i32* null, i8* %61, i8* %43, i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %73 = call i8* @rrddim_add(i64 %70, i8* %71, i32* null, i32 1, i32 1, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %26
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %87 = call i8* @rrddim_add(i64 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %82, %26
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %97

92:                                               ; preds = %3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @rrdset_next(i64 %95)
  br label %97

97:                                               ; preds = %92, %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @rrddim_set_by_pointer(i64 %100, i8* %103, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %97
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @rrddim_set_by_pointer(i64 %115, i8* %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %97
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @rrdset_done(i64 %126)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @statsd_get_metric_type_and_id(%struct.TYPE_6__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i32) #1

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
