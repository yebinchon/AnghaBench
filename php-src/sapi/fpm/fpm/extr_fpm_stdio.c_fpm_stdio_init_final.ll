; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_init_final.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_init_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STDERR_FILENO = common dso_local global i64 0, align 8
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to init stdio: dup2()\00", align 1
@STDOUT_FILENO = common dso_local global i64 0, align 8
@ZLOG_SYSLOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_stdio_init_final() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @fpm_use_error_log()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %9 = load i64, i64* @STDERR_FILENO, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %13 = load i64, i64* @STDERR_FILENO, align 8
  %14 = call i64 @dup2(i64 %12, i64 %13)
  %15 = icmp sgt i64 0, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @ZLOG_SYSERROR, align 4
  %18 = call i32 @zlog(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %23

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %7, %4
  br label %21

21:                                               ; preds = %20, %0
  %22 = call i32 (...) @zlog_set_launched()
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @fpm_use_error_log(...) #1

declare dso_local i64 @dup2(i64, i64) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @zlog_set_launched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
