; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_child.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32*, i32 }

@sig_soft_quit = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32* null, align 8
@sp = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to init child signals: sigaction()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_signals_init_child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 16)
  %5 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 16)
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32* @sig_soft_quit, i32** %6, align 8
  %7 = load i32, i32* @SA_RESTART, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %7
  store i32 %10, i32* %8, align 8
  %11 = load i32*, i32** @SIG_DFL, align 8
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** @sp, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @close(i32 %15)
  %17 = load i32*, i32** @sp, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @close(i32 %19)
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = call i64 @sigaction(i32 %21, %struct.sigaction* %3, i32 0)
  %23 = icmp sgt i64 0, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* @SIGINT, align 4
  %26 = call i64 @sigaction(i32 %25, %struct.sigaction* %3, i32 0)
  %27 = icmp sgt i64 0, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SIGUSR1, align 4
  %30 = call i64 @sigaction(i32 %29, %struct.sigaction* %3, i32 0)
  %31 = icmp sgt i64 0, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @SIGUSR2, align 4
  %34 = call i64 @sigaction(i32 %33, %struct.sigaction* %3, i32 0)
  %35 = icmp sgt i64 0, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @SIGCHLD, align 4
  %38 = call i64 @sigaction(i32 %37, %struct.sigaction* %3, i32 0)
  %39 = icmp sgt i64 0, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @SIGQUIT, align 4
  %42 = call i64 @sigaction(i32 %41, %struct.sigaction* %2, i32 0)
  %43 = icmp sgt i64 0, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36, %32, %28, %24, %0
  %45 = load i32, i32* @ZLOG_SYSERROR, align 4
  %46 = call i32 @zlog(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @zend_signal_init()
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @zend_signal_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
