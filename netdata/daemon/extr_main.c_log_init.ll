; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_log_init.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/debug.log\00", align 1
@netdata_configured_log_dir = common dso_local global i8* null, align 8
@CONFIG_SECTION_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"debug log\00", align 1
@stdout_filename = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/error.log\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"error log\00", align 1
@stderr_filename = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"%s/access.log\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"access log\00", align 1
@stdaccess_filename = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"facility log\00", align 1
@facility_log = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"errors flood protection period\00", align 1
@error_log_throttle_period = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"errors to trigger flood protection\00", align 1
@error_log_errors_per_period = common dso_local global i64 0, align 8
@error_log_errors_per_period_backup = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"NETDATA_ERRORS_THROTTLE_PERIOD\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"NETDATA_ERRORS_PER_PERIOD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [8 x i8], align 1
  %4 = load i32, i32* @FILENAME_MAX, align 4
  %5 = add nsw i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @FILENAME_MAX, align 4
  %10 = load i8*, i8** @netdata_configured_log_dir, align 8
  %11 = call i32 @snprintfz(i8* %8, i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %13 = call i8* @config_get(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  store i8* %13, i8** @stdout_filename, align 8
  %14 = load i32, i32* @FILENAME_MAX, align 4
  %15 = load i8*, i8** @netdata_configured_log_dir, align 8
  %16 = call i32 @snprintfz(i8* %8, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %18 = call i8* @config_get(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %8)
  store i8* %18, i8** @stderr_filename, align 8
  %19 = load i32, i32* @FILENAME_MAX, align 4
  %20 = load i8*, i8** @netdata_configured_log_dir, align 8
  %21 = call i32 @snprintfz(i8* %8, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %23 = call i8* @config_get(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  store i8* %23, i8** @stdaccess_filename, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %25 = call i32 @snprintfz(i8* %24, i32 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %28 = call i8* @config_get(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %27)
  store i8* %28, i8** @facility_log, align 8
  %29 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %30 = load i64, i64* @error_log_throttle_period, align 8
  %31 = call i64 @config_get_number(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %30)
  store i64 %31, i64* @error_log_throttle_period, align 8
  %32 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %33 = load i64, i64* @error_log_errors_per_period, align 8
  %34 = call i64 @config_get_number(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %33)
  store i64 %34, i64* @error_log_errors_per_period, align 8
  %35 = load i64, i64* @error_log_errors_per_period, align 8
  store i64 %35, i64* @error_log_errors_per_period_backup, align 8
  %36 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %37 = call i8* @config_get(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %38 = call i32 @setenv(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %37, i32 1)
  %39 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %40 = call i8* @config_get(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %41 = call i32 @setenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %40, i32 1)
  %42 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #2

declare dso_local i8* @config_get(i32, i8*, i8*) #2

declare dso_local i64 @config_get_number(i32, i8*, i64) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
