; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_find_tzone_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_find_tzone_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tz_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"trip_point\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@MAX_TEMP_KC = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"tzone %s trip %d temp %lu tpnode %s\00", align 1
@MAX_NR_TRIP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to find TP inst %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.tz_info*, i32)* @find_tzone_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tzone_tp(i8* %0, i8* %1, %struct.tz_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tz_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tz_info* %2, %struct.tz_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sysfs_get_ulong(i8* %20, i8* %21, i64* %11)
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @MAX_TEMP_KC, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %19
  %27 = load %struct.tz_info*, %struct.tz_info** %8, align 8
  %28 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @get_instance_id(i8* %31, i32 2, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @LOG_DEBUG, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %35, i64 %36, i8* %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MAX_NR_TRIP, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %26
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 -1, i32* %5, align 4
  br label %64

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @get_trip_point_data(i8* %50, i32 %51, i32 %52)
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.tz_info*, %struct.tz_info** %8, align 8
  %56 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %54, i64* %61, align 8
  br label %62

62:                                               ; preds = %49, %19
  br label %63

63:                                               ; preds = %62, %15, %4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @sysfs_get_ulong(i8*, i8*, i64*) #1

declare dso_local i32 @get_instance_id(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @get_trip_point_data(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
