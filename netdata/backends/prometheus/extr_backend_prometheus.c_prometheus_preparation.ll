; ModuleID = '/home/carl/AnghaBench/netdata/backends/prometheus/extr_backend_prometheus.c_prometheus_preparation.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/prometheus/extr_backend_prometheus.c_prometheus_preparation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@global_backend_update_every = common dso_local global i64 0, align 8
@PROMETHEUS_OUTPUT_HELP = common dso_local global i32 0, align 4
@BACKEND_SOURCE_DATA_AS_COLLECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"as collected\00", align 1
@BACKEND_SOURCE_DATA_AVERAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@BACKEND_SOURCE_DATA_SUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"# COMMENT netdata \22%s\22 to %sprometheus \22%s\22, source \22%s\22, last seen %lu %s, time range %lu to %lu\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"FIRST SEEN \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"seconds ago\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, i32, i8*, i64, i32)* @prometheus_preparation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prometheus_preparation(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @prometheus_server_last_access(i8* %24, %struct.TYPE_4__* %25, i64 %26)
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @global_backend_update_every, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %13, align 8
  store i32 1, i32* %14, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @global_backend_update_every, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @PROMETHEUS_OUTPUT_HELP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @BACKEND_OPTIONS_DATA_SOURCE(i32 %48)
  %50 = load i64, i64* @BACKEND_SOURCE_DATA_AS_COLLECTED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @BACKEND_OPTIONS_DATA_SOURCE(i32 %54)
  %56 = load i64, i64* @BACKEND_SOURCE_DATA_AVERAGE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %67

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @BACKEND_OPTIONS_DATA_SOURCE(i32 %60)
  %62 = load i64, i64* @BACKEND_SOURCE_DATA_SUM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %66

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %86

82:                                               ; preds = %68
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %83, %84
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i64 [ 0, %81 ], [ %85, %82 ]
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @buffer_sprintf(i32* %69, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0), i32 %72, i8* %76, i8* %77, i8* %78, i64 %87, i8* %91, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %86, %42
  %96 = load i64, i64* %13, align 8
  ret i64 %96
}

declare dso_local i64 @prometheus_server_last_access(i8*, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @BACKEND_OPTIONS_DATA_SOURCE(i32) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32, i8*, i8*, i8*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
