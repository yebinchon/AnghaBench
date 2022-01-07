; ModuleID = '/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_request_v1_info_summary_alarm_statuses.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_request_v1_info_summary_alarm_statuses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"\09\09\22normal\22: %d,\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\09\09\22warning\22: %d,\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09\09\22critical\22: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @web_client_api_request_v1_info_summary_alarm_statuses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_client_api_request_v1_info_summary_alarm_statuses(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @rrdhost_rdlock(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  br label %14

14:                                               ; preds = %51, %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %22, %17
  %32 = phi i1 [ true, %17 ], [ %30, %22 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %47 [
    i32 128, label %41
    i32 129, label %44
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %44, %41
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %8, align 8
  br label %14

55:                                               ; preds = %14
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = call i32 @rrdhost_unlock(%struct.TYPE_10__* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @buffer_sprintf(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @buffer_sprintf(i32* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @buffer_sprintf(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @rrdhost_rdlock(%struct.TYPE_10__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rrdhost_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
