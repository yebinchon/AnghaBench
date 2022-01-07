; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_exec.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Blocking some signals before reexec\00", align 1
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"concurrent reloads may be unstable\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"reloading: execvp(\22%s\22, {\22%s\22%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s})\00", align 1
@saved_argv = common dso_local global i32* null, align 8
@FPM_CLEANUP_PARENT_EXEC = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to reload: execvp() failed\00", align 1
@FPM_EXIT_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpm_pctl_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_pctl_exec() #0 {
  %1 = load i32, i32* @ZLOG_DEBUG, align 4
  %2 = call i32 (i32, i8*, ...) @zlog(i32 %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %3 = call i64 (...) @fpm_signals_block()
  %4 = icmp sgt i64 0, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ZLOG_WARNING, align 4
  %7 = call i32 (i32, i8*, ...) @zlog(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @ZLOG_NOTICE, align 4
  %10 = load i32*, i32** @saved_argv, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @saved_argv, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @optional_arg(i32 1)
  %17 = call i32 @optional_arg(i32 2)
  %18 = call i32 @optional_arg(i32 3)
  %19 = call i32 @optional_arg(i32 4)
  %20 = call i32 @optional_arg(i32 5)
  %21 = call i32 @optional_arg(i32 6)
  %22 = call i32 @optional_arg(i32 7)
  %23 = call i32 @optional_arg(i32 8)
  %24 = call i32 @optional_arg(i32 9)
  %25 = call i32 @optional_arg(i32 10)
  %26 = call i32 (i32, i8*, ...) @zlog(i32 %9, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @FPM_CLEANUP_PARENT_EXEC, align 4
  %28 = call i32 @fpm_cleanups_run(i32 %27)
  %29 = load i32*, i32** @saved_argv, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @saved_argv, align 8
  %33 = call i32 @execvp(i32 %31, i32* %32)
  %34 = load i32, i32* @ZLOG_SYSERROR, align 4
  %35 = call i32 (i32, i8*, ...) @zlog(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable
}

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i64 @fpm_signals_block(...) #1

declare dso_local i32 @optional_arg(i32) #1

declare dso_local i32 @fpm_cleanups_run(i32) #1

declare dso_local i32 @execvp(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
