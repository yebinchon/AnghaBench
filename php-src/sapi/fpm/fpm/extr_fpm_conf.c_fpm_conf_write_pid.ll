; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_write_pid.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_write_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to create the PID file (%s).\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to write to the PID file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_conf_write_pid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %9 = call i32 @unlink(i64 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IWUSR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S_IRGRP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IROTH, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @creat(i64 %10, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* @ZLOG_SYSERROR, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %24 = call i32 (i32, i8*, ...) @zlog(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 -1, i32* %1, align 4
  br label %45

25:                                               ; preds = %7
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @write(i32 %31, i8* %32, i32 %33)
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @ZLOG_SYSERROR, align 4
  %38 = call i32 (i32, i8*, ...) @zlog(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %1, align 4
  br label %45

41:                                               ; preds = %25
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %0
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %36, %21
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @creat(i64, i32) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
