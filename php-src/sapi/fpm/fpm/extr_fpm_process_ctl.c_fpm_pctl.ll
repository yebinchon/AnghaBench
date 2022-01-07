; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fpm_state = common dso_local global i32 0, align 4
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"not switching to '%s' state, because already in '%s' state\00", align 1
@fpm_state_names = common dso_local global i32* null, align 8
@fpm_signal_sent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"switching to '%s' state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_pctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %50 [
    i32 133, label %6
    i32 132, label %46
    i32 134, label %48
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @fpm_state, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %50

11:                                               ; preds = %6
  %12 = load i32, i32* @fpm_state, align 4
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 129, label %14
    i32 131, label %19
    i32 128, label %24
  ]

13:                                               ; preds = %11
  br label %37

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %37

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %11, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %37

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %11, %23
  %25 = load i32, i32* @ZLOG_DEBUG, align 4
  %26 = load i32*, i32** @fpm_state_names, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @fpm_state_names, align 8
  %32 = load i32, i32* @fpm_state, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @zlog(i32 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  br label %50

37:                                               ; preds = %11, %22, %17, %13
  store i32 0, i32* @fpm_signal_sent, align 4
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* @fpm_state, align 4
  %39 = load i32, i32* @ZLOG_DEBUG, align 4
  %40 = load i32*, i32** @fpm_state_names, align 8
  %41 = load i32, i32* @fpm_state, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @zlog(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %2, %37
  %47 = call i32 (...) @fpm_pctl_action_next()
  br label %50

48:                                               ; preds = %2
  %49 = call i32 (...) @fpm_pctl_action_last()
  br label %50

50:                                               ; preds = %10, %24, %2, %48, %46
  ret void
}

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

declare dso_local i32 @fpm_pctl_action_next(...) #1

declare dso_local i32 @fpm_pctl_action_last(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
