; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_update_thermal_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_sysfs.c_update_thermal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_10__ = type { double }

@cur_thermal_record = common dso_local global i32 0, align 4
@update_thermal_data.samples = internal global i64 0, align 8
@ptdata = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No thermal zones found!\0A\00", align 1
@NR_THERMAL_RECORDS = common dso_local global i32 0, align 4
@trec = common dso_local global %struct.TYPE_7__* null, align 8
@tmon_log = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%3.1f \00", align 1
@p_param = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%s/%s%d\00", align 1
@THERMAL_SYSFS = common dso_local global i8* null, align 8
@TZONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CDEV = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_thermal_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  %7 = load i32, i32* @cur_thermal_record, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %137

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NR_THERMAL_RECORDS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @trec, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = call i32 @gettimeofday(i32* %24, i32* null)
  %26 = load i64, i64* @tmon_log, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i64, i64* @tmon_log, align 8
  %30 = load i64, i64* @update_thermal_data.samples, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @update_thermal_data.samples, align 8
  %32 = call i32 (i64, i8*, ...) @fprintf(i64 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @tmon_log, align 8
  %34 = load double, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @p_param, i32 0, i32 0), align 8
  %35 = call i32 (i64, i8*, ...) @fprintf(i64 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %34)
  br label %36

36:                                               ; preds = %28, %19
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 0), align 8
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 0, i32 256)
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %45 = load i8*, i8** @THERMAL_SYSFS, align 8
  %46 = load i8*, i8** @TZONE, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i8* %44, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %45, i8* %46, i32 %52)
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @trec, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @sysfs_get_ulong(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %63)
  %65 = load i64, i64* @tmon_log, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %41
  %68 = load i64, i64* @tmon_log, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @trec, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 1000
  %80 = call i32 (i64, i8*, ...) @fprintf(i64 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %67, %41
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %37

85:                                               ; preds = %37
  %86 = load i32, i32* %3, align 4
  store i32 %86, i32* @cur_thermal_record, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %125, %85
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 1), align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %87
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %93 = load i8*, i8** @THERMAL_SYSFS, align 8
  %94 = load i8*, i8** @CDEV, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @snprintf(i8* %92, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %93, i8* %94, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %107 = call i32 @probe_cdev(%struct.TYPE_9__* %105, i8* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ugt i64 %114, 1000000
  br i1 %115, label %116, label %117

116:                                              ; preds = %91
  store i64 0, i64* %6, align 8
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i64, i64* @tmon_log, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i64, i64* @tmon_log, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 (i64, i8*, ...) @fprintf(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %87

128:                                              ; preds = %87
  %129 = load i64, i64* @tmon_log, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i64, i64* @tmon_log, align 8
  %133 = call i32 (i64, i8*, ...) @fprintf(i64 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i64, i64* @tmon_log, align 8
  %135 = call i32 @fflush(i64 %134)
  br label %136

136:                                              ; preds = %131, %128
  store i32 0, i32* %1, align 4
  br label %137

137:                                              ; preds = %136, %11
  %138 = load i32, i32* %1, align 4
  ret i32 %138
}

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sysfs_get_ulong(i8*, i8*, i32*) #1

declare dso_local i32 @probe_cdev(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
