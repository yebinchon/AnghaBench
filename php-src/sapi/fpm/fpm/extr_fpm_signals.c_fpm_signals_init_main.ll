; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@sp = common dso_local global i32* null, align 8
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to init signals: socketpair()\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to init signals: fd_set_blocked()\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"falied to init signals: fcntl(F_SETFD, FD_CLOEXEC)\00", align 1
@sig_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to init signals: sigaction()\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unblocking all signals\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_signals_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = load i32, i32* @AF_UNIX, align 4
  %4 = load i32, i32* @SOCK_STREAM, align 4
  %5 = load i32*, i32** @sp, align 8
  %6 = call i64 @socketpair(i32 %3, i32 %4, i32 0, i32* %5)
  %7 = icmp sgt i64 0, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ZLOG_SYSERROR, align 4
  %10 = call i32 @zlog(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

11:                                               ; preds = %0
  %12 = load i32*, i32** @sp, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @fd_set_blocked(i32 %14, i32 0)
  %16 = icmp sgt i64 0, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** @sp, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @fd_set_blocked(i32 %20, i32 0)
  %22 = icmp sgt i64 0, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11
  %24 = load i32, i32* @ZLOG_SYSERROR, align 4
  %25 = call i32 @zlog(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

26:                                               ; preds = %17
  %27 = load i32*, i32** @sp, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @F_SETFD, align 4
  %31 = load i32, i32* @FD_CLOEXEC, align 4
  %32 = call i64 @fcntl(i32 %29, i32 %30, i32 %31)
  %33 = icmp sgt i64 0, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** @sp, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @F_SETFD, align 4
  %39 = load i32, i32* @FD_CLOEXEC, align 4
  %40 = call i64 @fcntl(i32 %37, i32 %38, i32 %39)
  %41 = icmp sgt i64 0, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @ZLOG_SYSERROR, align 4
  %44 = call i32 @zlog(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

45:                                               ; preds = %34
  %46 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 8)
  %47 = load i32, i32* @sig_handler, align 4
  %48 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %50 = call i32 @sigfillset(i32* %49)
  %51 = load i32, i32* @SIGTERM, align 4
  %52 = call i64 @sigaction(i32 %51, %struct.sigaction* %2, i32 0)
  %53 = icmp sgt i64 0, %52
  br i1 %53, label %74, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @SIGINT, align 4
  %56 = call i64 @sigaction(i32 %55, %struct.sigaction* %2, i32 0)
  %57 = icmp sgt i64 0, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @SIGUSR1, align 4
  %60 = call i64 @sigaction(i32 %59, %struct.sigaction* %2, i32 0)
  %61 = icmp sgt i64 0, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @SIGUSR2, align 4
  %64 = call i64 @sigaction(i32 %63, %struct.sigaction* %2, i32 0)
  %65 = icmp sgt i64 0, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @SIGCHLD, align 4
  %68 = call i64 @sigaction(i32 %67, %struct.sigaction* %2, i32 0)
  %69 = icmp sgt i64 0, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @SIGQUIT, align 4
  %72 = call i64 @sigaction(i32 %71, %struct.sigaction* %2, i32 0)
  %73 = icmp sgt i64 0, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66, %62, %58, %54, %45
  %75 = load i32, i32* @ZLOG_SYSERROR, align 4
  %76 = call i32 @zlog(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

77:                                               ; preds = %70
  %78 = load i32, i32* @ZLOG_DEBUG, align 4
  %79 = call i32 @zlog(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i64 (...) @fpm_signals_unblock()
  %81 = icmp sgt i64 0, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %1, align 4
  br label %84

83:                                               ; preds = %77
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %83, %82, %74, %42, %23, %8
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i64 @fd_set_blocked(i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i64 @fpm_signals_unblock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
