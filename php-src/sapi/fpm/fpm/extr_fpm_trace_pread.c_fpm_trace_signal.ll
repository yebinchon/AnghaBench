; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace_pread.c_fpm_trace_signal.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace_pread.c_fpm_trace_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPM_PCTL_STOP = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to send SIGSTOP to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_trace_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FPM_PCTL_STOP, align 4
  %6 = call i64 @fpm_pctl_kill(i32 %4, i32 %5)
  %7 = icmp sgt i64 0, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ZLOG_SYSERROR, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @zlog(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 -1, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i64 @fpm_pctl_kill(i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
