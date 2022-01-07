; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_action_next.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_action_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@fpm_signal_sent = common dso_local global i64 0, align 8
@fpm_state = common dso_local global i64 0, align 8
@FPM_PCTL_STATE_TERMINATING = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i64 0, align 8
@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpm_pctl_action_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_pctl_action_next() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @fpm_pctl_action_last()
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @fpm_signal_sent, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i64, i64* @fpm_state, align 8
  %12 = load i64, i64* @FPM_PCTL_STATE_TERMINATING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @SIGTERM, align 4
  store i32 %15, i32* %1, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load i64, i64* @SIGQUIT, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %7
  %22 = load i64, i64* @fpm_signal_sent, align 8
  %23 = load i64, i64* @SIGQUIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SIGTERM, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SIGKILL, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %25
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @fpm_pctl_kill_all(i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* @fpm_signal_sent, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @fpm_pctl_timeout_set(i32 %35)
  ret void
}

declare dso_local i32 @fpm_pctl_action_last(...) #1

declare dso_local i32 @fpm_pctl_kill_all(i32) #1

declare dso_local i32 @fpm_pctl_timeout_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
