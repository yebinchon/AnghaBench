; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_find_tzone_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_find_tzone_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i64, i8* }
%struct.tz_info = type { i32, i32*, i32 }

@DT_LNK = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TZ%d: cdev: %s cid %d\0A\00", align 1
@ptdata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Err: Too many cdev? %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cdev %s linked to %s : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"_trip_point\00", align 1
@MAX_NR_TRIP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"cdev %s -> trip:%lu: 0x%lx %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*, i8*, %struct.tz_info*, i32, i32)* @find_tzone_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tzone_cdev(%struct.dirent* %0, i8* %1, %struct.tz_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tz_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.tz_info* %2, %struct.tz_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %17 = load %struct.dirent*, %struct.dirent** %7, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT_LNK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %5
  %23 = load i32, i32* @LOG_DEBUG, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.dirent*, %struct.dirent** %7, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i32, i8*, ...) @syslog(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %27, i32 %28)
  %30 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %31 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %35 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ptdata, i32 0, i32 0), align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %22
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %42 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %114

47:                                               ; preds = %22
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.dirent*, %struct.dirent** %7, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @snprintf(i8* %48, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %52)
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %55 = call i32 @memset(i8* %54, i32 0, i32 256)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %58 = call i32 @readlink(i8* %56, i8* %57, i32 255)
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %110

60:                                               ; preds = %47
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %62 = call i32 @get_instance_id(i8* %61, i32 1, i32 6)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* @LOG_DEBUG, align 4
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %66 = load i32, i32* %16, align 4
  %67 = call i32 (i32, i8*, ...) @syslog(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = shl i32 1, %68
  %70 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %71 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %75 = load %struct.dirent*, %struct.dirent** %7, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @snprintf(i8* %74, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %81 = call i32 @sysfs_get_ulong(i8* %79, i8* %80, i64* %12)
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @MAX_NR_TRIP, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %60
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i64, i64* %12, align 8
  %88 = trunc i64 %87 to i32
  %89 = shl i32 1, %88
  %90 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %91 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %89
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @LOG_DEBUG, align 4
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.tz_info*, %struct.tz_info** %9, align 8
  %102 = getelementptr inbounds %struct.tz_info, %struct.tz_info* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 (i32, i8*, ...) @syslog(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %99, i64 %100, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %86, %47
  store i32 0, i32* %6, align 4
  br label %114

111:                                              ; preds = %5
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %110, %39
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @get_instance_id(i8*, i32, i32) #1

declare dso_local i32 @sysfs_get_ulong(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
