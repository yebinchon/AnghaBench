; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_open_error_log.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_open_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to open error_log (%s)\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@F_SETFD = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to change attribute of error_log\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@ZLOG_SYSLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_stdio_open_error_log(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 4
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = load i32, i32* @O_APPEND, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IWUSR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i32 %5, i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 0, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ZLOG_SYSERROR, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 4
  %20 = call i32 (i32, i8*, ...) @zlog(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = call i64 (...) @fpm_use_error_log()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @STDERR_FILENO, align 4
  %30 = call i32 @dup2(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 4
  %34 = call i32 @dup2(i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 4
  %40 = call i64 (...) @fpm_use_error_log()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 4
  %44 = call i32 @zlog_set_fd(i32 %43)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @F_SETFD, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @F_GETFD, align 4
  %51 = call i32 (i32, i32, ...) @fcntl(i32 %49, i32 %50)
  %52 = load i32, i32* @FD_CLOEXEC, align 4
  %53 = or i32 %51, %52
  %54 = call i32 (i32, i32, ...) @fcntl(i32 %47, i32 %48, i32 %53)
  %55 = icmp sgt i32 0, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @ZLOG_WARNING, align 4
  %58 = call i32 (i32, i8*, ...) @zlog(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i64 @fpm_use_error_log(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @zlog_set_fd(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
