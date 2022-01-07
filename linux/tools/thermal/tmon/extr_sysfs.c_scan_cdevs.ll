; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_scan_cdevs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_scan_cdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dirent = type opaque

@ptdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No cooling devices found\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/%s%d\00", align 1
@THERMAL_SYSFS = common dso_local global i8* null, align 8
@CDEV = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cooling dev %s skipped\0A\00", align 1
@alphasort = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"scandir failed in %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@ctrl_cdev = common dso_local global i32 0, align 4
@CDEV_FLAG_IN_CONTROL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"control cdev id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scan_cdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_cdevs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent**, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %107

13:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %103, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %14
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 256)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %22 = load i8*, i8** @THERMAL_SYSFS, align 8
  %23 = load i8*, i8** @CDEV, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @snprintf(i8* %21, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23, i32 %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %27 = call i32* @opendir(i8* %26)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @LOG_INFO, align 4
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %33 = call i32 (i32, i8*, ...) @syslog(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %103

34:                                               ; preds = %18
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %36 = bitcast %struct.dirent*** %3 to i32*******
  %37 = load i32, i32* @alphasort, align 4
  %38 = call i32 @scandir(i8* %35, i32******* %36, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %44 = call i32 (i32, i8*, ...) @syslog(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %98

45:                                               ; preds = %34
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sysfs_get_string(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ctrl_cdev, align 4
  %67 = call i64 @strstr(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %45
  %70 = load i32, i32* @CDEV_FLAG_IN_CONTROL, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @LOG_DEBUG, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i32, i8*, ...) @syslog(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %69, %45
  br label %82

82:                                               ; preds = %86, %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.dirent**, %struct.dirent*** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dirent*, %struct.dirent** %87, i64 %89
  %91 = load %struct.dirent*, %struct.dirent** %90, align 8
  %92 = bitcast %struct.dirent* %91 to i32******
  %93 = call i32 @free(i32****** %92)
  br label %82

94:                                               ; preds = %82
  %95 = load %struct.dirent**, %struct.dirent*** %3, align 8
  %96 = bitcast %struct.dirent** %95 to i32******
  %97 = call i32 @free(i32****** %96)
  br label %98

98:                                               ; preds = %94, %41
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @closedir(i32* %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %30
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %14

106:                                              ; preds = %14
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %106, %10
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @scandir(i8*, i32*******, i32, i32) #1

declare dso_local i32 @sysfs_get_string(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i32, i32) #1

declare dso_local i32 @free(i32******) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
