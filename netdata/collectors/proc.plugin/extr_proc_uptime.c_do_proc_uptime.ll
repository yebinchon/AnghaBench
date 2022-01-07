; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_uptime.c_do_proc_uptime.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_uptime.c_do_proc_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_proc_uptime.uptime_filename = internal global i8* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"plugin:proc:/proc/uptime\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"filename to monitor\00", align 1
@do_proc_uptime.st = internal global i32* null, align 8
@do_proc_uptime.rd = internal global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"System Uptime\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_SYSTEM_UPTIME = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_uptime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** @do_proc_uptime.uptime_filename, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @FILENAME_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @FILENAME_MAX, align 4
  %17 = load i32, i32* @netdata_configured_host_prefix, align 4
  %18 = call i32 @snprintfz(i8* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i8* @config_get(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  store i8* %19, i8** @do_proc_uptime.uptime_filename, align 8
  %20 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %20)
  br label %21

21:                                               ; preds = %10, %2
  %22 = load i32*, i32** @do_proc_uptime.st, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %30 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_UPTIME, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %33 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  store i32* %33, i32** @do_proc_uptime.st, align 8
  %34 = load i32*, i32** @do_proc_uptime.st, align 8
  %35 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %36 = call i32* @rrddim_add(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %35)
  store i32* %36, i32** @do_proc_uptime.rd, align 8
  br label %40

37:                                               ; preds = %21
  %38 = load i32*, i32** @do_proc_uptime.st, align 8
  %39 = call i32 @rrdset_next(i32* %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32*, i32** @do_proc_uptime.st, align 8
  %42 = load i32*, i32** @do_proc_uptime.rd, align 8
  %43 = load i8*, i8** @do_proc_uptime.uptime_filename, align 8
  %44 = call i32 @uptime_msec(i8* %43)
  %45 = call i32 @rrddim_set_by_pointer(i32* %41, i32* %42, i32 %44)
  %46 = load i32*, i32** @do_proc_uptime.st, align 8
  %47 = call i32 @rrdset_done(i32* %46)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #2

declare dso_local i8* @config_get(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @rrdset_next(i32*) #2

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #2

declare dso_local i32 @uptime_msec(i8*) #2

declare dso_local i32 @rrdset_done(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
