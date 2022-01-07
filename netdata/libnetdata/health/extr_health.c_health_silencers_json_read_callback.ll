; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/health/extr_health.c_health_silencers_json_read_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/health/extr_health.c_health_silencers_json_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, {}*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_HEALTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"JSON: Got object with a name, initializing new silencer for %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"JSON: Processing type=%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SILENCE\00", align 1
@STYPE_SILENCE_NOTIFICATIONS = common dso_local global i32 0, align 4
@silencers = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@STYPE_DISABLE_ALARMS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"JSON: Adding %s=%s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"JSON: Processing all_alarms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @health_silencers_json_read_callback(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %112 [
    i32 129, label %7
    i32 133, label %36
    i32 128, label %40
    i32 132, label %99
    i32 130, label %111
    i32 131, label %111
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = bitcast {}** %9 to i32 (%struct.TYPE_6__*)**
  store i32 (%struct.TYPE_6__*)* @health_silencers_json_read_callback, i32 (%struct.TYPE_6__*)** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %7
  %17 = load i32, i32* @D_HEALTH, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @debug(i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @create_silencer()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @health_silencers_add(i32 %32)
  br label %34

34:                                               ; preds = %29, %16
  br label %35

35:                                               ; preds = %34, %7
  br label %112

36:                                               ; preds = %1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_6__*)**
  store i32 (%struct.TYPE_6__*)* @health_silencers_json_read_callback, i32 (%struct.TYPE_6__*)** %39, align 8
  br label %112

40:                                               ; preds = %1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @D_HEALTH, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @debug(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @STYPE_SILENCE_NOTIFICATIONS, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @silencers, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %46
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcmp(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @STYPE_DISABLE_ALARMS, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @silencers, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74, %59
  br label %98

76:                                               ; preds = %40
  %77 = load i32, i32* @D_HEALTH, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @debug(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @health_silencers_addparam(i32 %88, i32 %91, i32 %95)
  store i32* %96, i32** %3, align 8
  %97 = load i32*, i32** %3, align 8
  br label %98

98:                                               ; preds = %76, %75
  br label %112

99:                                               ; preds = %1
  %100 = load i32, i32* @D_HEALTH, align 4
  %101 = call i32 (i32, i8*, ...) @debug(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @silencers, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %112

111:                                              ; preds = %1, %1
  br label %112

112:                                              ; preds = %1, %111, %99, %98, %36, %35
  ret i32 0
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @create_silencer(...) #1

declare dso_local i32 @health_silencers_add(i32) #1

declare dso_local i32* @health_silencers_addparam(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
