; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_mask.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_signals.c_fpm_signals_init_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_sigset = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to prepare signal block mask: sigemptyset()\00", align 1
@NSIG = common dso_local global i32 0, align 4
@fpm_signal_names = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to prepare signal block mask: sigaddset(%s)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to prepare signal block mask: sigaddset(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_signals_init_mask(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = call i64 @sigemptyset(i32* @block_sigset)
  %9 = icmp sgt i64 0, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ZLOG_SYSERROR, align 4
  %12 = call i32 (i32, i8*, ...) @zlog(i32 %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @sigaddset(i32* @block_sigset, i32 %23)
  %25 = icmp sgt i64 0, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NSIG, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32**, i32*** @fpm_signal_names, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @ZLOG_SYSERROR, align 4
  %39 = load i32**, i32*** @fpm_signal_names, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (i32, i8*, ...) @zlog(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  br label %49

45:                                               ; preds = %30, %26
  %46 = load i32, i32* @ZLOG_SYSERROR, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @zlog(i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  store i32 -1, i32* %3, align 4
  br label %55

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %14

54:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
