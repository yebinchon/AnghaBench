; ModuleID = '/home/carl/AnghaBench/netdata/web/api/health/extr_health_cmdapi.c_health_silencers2json.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/health/extr_health_cmdapi.c_health_silencers2json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [45 x i8] c"{\0A\09\22all\22: %s,\0A\09\22type\22: \22%s\22,\0A\09\22silencers\22: [\00", align 1
@silencers = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@STYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@STYPE_DISABLE_ALARMS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SILENCE\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09\09{\00", align 1
@HEALTH_ALARM_KEY = common dso_local global i32 0, align 4
@HEALTH_CHART_KEY = common dso_local global i32 0, align 4
@HEALTH_CONTEXT_KEY = common dso_local global i32 0, align 4
@HEALTH_HOST_KEY = common dso_local global i32 0, align 4
@HEALTH_FAMILIES_KEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A\09\09}\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"]\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_silencers2json(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @silencers, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @silencers, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STYPE_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @silencers, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STYPE_DISABLE_ALARMS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %27

27:                                               ; preds = %19, %18
  %28 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %18 ], [ %26, %19 ]
  %29 = call i32 @buffer_sprintf(i32* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %28)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @silencers, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  br label %33

33:                                               ; preds = %85, %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @buffer_strcat(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @buffer_strcat(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @HEALTH_ALARM_KEY, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @health_silencers2json_entry(i32* %46, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @HEALTH_CHART_KEY, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @health_silencers2json_entry(i32* %53, i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @HEALTH_CONTEXT_KEY, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @health_silencers2json_entry(i32* %60, i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @HEALTH_HOST_KEY, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @health_silencers2json_entry(i32* %67, i32 %68, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @HEALTH_FAMILIES_KEY, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @health_silencers2json_entry(i32* %74, i32 %75, i32 %78, i32 %79)
  store i32 0, i32* %5, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @buffer_strcat(i32* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %43
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %3, align 8
  br label %33

89:                                               ; preds = %33
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @buffer_strcat(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @buffer_strcat(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_sprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @health_silencers2json_entry(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
