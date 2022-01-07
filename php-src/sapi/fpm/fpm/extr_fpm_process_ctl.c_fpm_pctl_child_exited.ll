; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_child_exited.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_child_exited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fpm_state = common dso_local global i64 0, align 8
@FPM_PCTL_STATE_NORMAL = common dso_local global i64 0, align 8
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FPM_PCTL_STATE_UNSPECIFIED = common dso_local global i32 0, align 4
@FPM_PCTL_ACTION_LAST_CHILD_EXITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_pctl_child_exited() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @fpm_state, align 8
  %3 = load i64, i64* @FPM_PCTL_STATE_NORMAL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @FPM_PCTL_STATE_UNSPECIFIED, align 4
  %11 = load i32, i32* @FPM_PCTL_ACTION_LAST_CHILD_EXITED, align 4
  %12 = call i32 @fpm_pctl(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %6
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @fpm_pctl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
