; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_pid.c_controller_reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_pid.c_controller_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TC inactive, relax p-state\0A\00", align 1
@p_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xk_1 = common dso_local global double 0.000000e+00, align 8
@xk_2 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @controller_reset() #0 {
  %1 = load i32, i32* @LOG_DEBUG, align 4
  %2 = call i32 @syslog(i32 %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p_param, i32 0, i32 0), align 8
  store double 0.000000e+00, double* @xk_1, align 8
  store double 0.000000e+00, double* @xk_2, align 8
  %3 = call i32 @set_ctrl_state(i32 0)
  ret void
}

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @set_ctrl_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
