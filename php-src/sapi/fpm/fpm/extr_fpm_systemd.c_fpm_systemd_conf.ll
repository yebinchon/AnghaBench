; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd_conf.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"WATCHDOG_USEC\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"WATCHDOG_USEC=%s, interval=%d\00", align 1
@fpm_global_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"systemd_interval option ignored\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"systemd watchdog configured to %.3gsec\00", align 1
@FPM_SYSTEMD_DEFAULT_HEARTBEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_systemd_conf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @atol(i8* %7)
  %9 = sdiv i64 %8, 2000
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @ZLOG_DEBUG, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i32, i8*, ...) @zlog(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %13)
  br label %15

15:                                               ; preds = %6, %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 1000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ZLOG_WARNING, align 4
  %23 = call i32 (i32, i8*, ...) @zlog(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ZLOG_NOTICE, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sitofp i32 %26 to float
  %28 = fpext float %27 to double
  %29 = fdiv double %28, 1.000000e+03
  %30 = call i32 (i32, i8*, ...) @zlog(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), double %29)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 1), align 4
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  br label %41

32:                                               ; preds = %15
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @FPM_SYSTEMD_DEFAULT_HEARTBEAT, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  %39 = mul nsw i32 %38, 1000
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 4
  br label %40

40:                                               ; preds = %37, %35
  br label %41

41:                                               ; preds = %40, %24
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
