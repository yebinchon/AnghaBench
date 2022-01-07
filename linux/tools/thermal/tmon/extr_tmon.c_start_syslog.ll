; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_start_syslog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_start_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_on = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tmon.log\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TMON started by User %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_syslog() #0 {
  %1 = load i64, i64* @debug_on, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @LOG_DEBUG, align 4
  %5 = call i32 @LOG_UPTO(i32 %4)
  %6 = call i32 @setlogmask(i32 %5)
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @LOG_ERR, align 4
  %9 = call i32 @LOG_UPTO(i32 %8)
  %10 = call i32 @setlogmask(i32 %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = load i32, i32* @LOG_CONS, align 4
  %13 = load i32, i32* @LOG_PID, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LOG_NDELAY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LOG_LOCAL0, align 4
  %18 = call i32 @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @LOG_NOTICE, align 4
  %20 = call i32 (...) @getuid()
  %21 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  ret void
}

declare dso_local i32 @setlogmask(i32) #1

declare dso_local i32 @LOG_UPTO(i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
