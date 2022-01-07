; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_alarms2json.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_json.c_health_alarms2json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [98 x i8] c"{\0A\09\22hostname\22: \22%s\22,\0A\09\22latest_alarm_log_unique_id\22: %u,\0A\09\22status\22: %s,\0A\09\22now\22: %lu,\0A\09\22alarms\22: {\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@RRDCALC_STATUS_WARNING = common dso_local global i64 0, align 8
@RRDCALC_STATUS_CRITICAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A\09}\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_alarms2json(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i32 @rrdhost_rdlock(%struct.TYPE_14__* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i64 [ %25, %20 ], [ 0, %26 ]
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i64 (...) @now_realtime_sec()
  %36 = call i32 @buffer_sprintf(i32* %11, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %28, i8* %34, i64 %35)
  store i32 0, i32* %7, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %8, align 8
  br label %40

40:                                               ; preds = %101, %27
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %48, %43
  %58 = phi i1 [ true, %43 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %101

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RRDCALC_STATUS_CRITICAL, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi i1 [ true, %66 ], [ %77, %72 ]
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %78, %63
  %82 = phi i1 [ false, %63 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %101

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @likely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @buffer_strcat(i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = call i32 @health_rrdcalc2json_nolock(%struct.TYPE_14__* %95, i32* %96, %struct.TYPE_15__* %97)
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %94, %86, %62
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %8, align 8
  br label %40

105:                                              ; preds = %40
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @buffer_strcat(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = call i32 @rrdhost_unlock(%struct.TYPE_14__* %108)
  ret void
}

declare dso_local i32 @rrdhost_rdlock(%struct.TYPE_14__*) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32, i64, i8*, i64) #1

declare dso_local i64 @now_realtime_sec(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @health_rrdcalc2json_nolock(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @rrdhost_unlock(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
