; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_find_or_add_metric.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_find_or_add_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, i64, %struct.TYPE_11__, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_12__*, i32, i32, i32 }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"searching for metric '%s' under '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Creating new %s metric '%s'\00", align 1
@STATSD_METRIC_TYPE_HISTOGRAM = common dso_local global i64 0, align 8
@STATSD_METRIC_TYPE_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, i8*, i64)* @statsd_find_or_add_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @statsd_find_or_add_metric(%struct.TYPE_13__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @D_STATSD, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @debug(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @simple_hash(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_12__* @statsd_metric_index_find(%struct.TYPE_13__* %18, i8* %19, i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %117

28:                                               ; preds = %3
  %29 = load i32, i32* @D_STATSD, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @debug(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %33)
  %35 = call %struct.TYPE_14__* @callocz(i32 48, i32 1)
  %36 = bitcast %struct.TYPE_14__* %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strdupz(i8* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @STATSD_METRIC_TYPE_HISTOGRAM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %28
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @STATSD_METRIC_TYPE_TIMER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55, %28
  %60 = call %struct.TYPE_14__* @callocz(i32 4, i32 1)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 @netdata_mutex_init(i32* %68)
  br label %70

70:                                               ; preds = %59, %55
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = bitcast %struct.TYPE_12__* %73 to i32*
  %75 = call i64 @STATSD_AVL_INSERT(i32* %72, i32* %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %9, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = icmp ne %struct.TYPE_12__* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %70
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = bitcast %struct.TYPE_14__* %87 to i8*
  %89 = call i32 @freez(i8* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @freez(i8* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = bitcast %struct.TYPE_12__* %95 to i8*
  %97 = call i32 @freez(i8* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %8, align 8
  br label %116

99:                                               ; preds = %70
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = call i32 @STATSD_FIRST_PTR_MUTEX_LOCK(%struct.TYPE_13__* %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = call i32 @STATSD_FIRST_PTR_MUTEX_UNLOCK(%struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %99, %83
  br label %117

117:                                              ; preds = %116, %3
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  ret %struct.TYPE_12__* %122
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*) #1

declare dso_local i32 @simple_hash(i8*) #1

declare dso_local %struct.TYPE_12__* @statsd_metric_index_find(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_14__* @callocz(i32, i32) #1

declare dso_local i64 @strdupz(i8*) #1

declare dso_local i32 @netdata_mutex_init(i32*) #1

declare dso_local i64 @STATSD_AVL_INSERT(i32*, i32*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @STATSD_FIRST_PTR_MUTEX_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @STATSD_FIRST_PTR_MUTEX_UNLOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
