; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_set_ctrl_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_set_ctrl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@no_control = common dso_local global i64 0, align 8
@ptdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CDEV_FLAG_IN_CONTROL = common dso_local global i32 0, align 4
@ctrl_cdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"None.\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ctrl cdev %d set state %lu scaled to %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/%s%d\00", align 1
@THERMAL_SYSFS = common dso_local global i8* null, align 8
@CDEV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"ctrl cdev path %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ctrl_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @no_control, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %78

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %75, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CDEV_FLAG_IN_CONTROL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ctrl_cdev, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %78

35:                                               ; preds = %24
  %36 = load i64, i64* %2, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %36, %43
  %45 = udiv i64 %44, 100
  store i64 %45, i64* %5, align 8
  %46 = load i32, i32* @LOG_DEBUG, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %54, i64 %55, i64 %56)
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %59 = load i8*, i8** @THERMAL_SYSFS, align 8
  %60 = load i8*, i8** @CDEV, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snprintf(i8* %58, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60, i32 %66)
  %68 = load i32, i32* @LOG_DEBUG, align 4
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %70 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @sysfs_set_ulong(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %35, %14
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %10

78:                                               ; preds = %8, %32, %10
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sysfs_set_ulong(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
