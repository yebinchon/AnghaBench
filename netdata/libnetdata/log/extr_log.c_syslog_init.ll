; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_syslog_init.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_syslog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@syslog_init.i = internal global i32 0, align 4
@program_name = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@facility_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syslog_init() #0 {
  %1 = load i32, i32* @syslog_init.i, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @program_name, align 4
  %5 = load i32, i32* @LOG_PID, align 4
  %6 = load i32, i32* @facility_log, align 4
  %7 = call i32 @log_facility_id(i32 %6)
  %8 = call i32 @openlog(i32 %4, i32 %5, i32 %7)
  store i32 1, i32* @syslog_init.i, align 4
  br label %9

9:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i32 @log_facility_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
