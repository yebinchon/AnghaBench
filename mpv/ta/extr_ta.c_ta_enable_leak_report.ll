; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_enable_leak_report.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_enable_leak_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@ta_dbg_mutex = common dso_local global i32 0, align 4
@enable_leak_check = common dso_local global i32 0, align 4
@leak_node = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@print_leak_report = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ta_enable_leak_report() #0 {
  %1 = call i32 @pthread_mutex_lock(i32* @ta_dbg_mutex)
  store i32 1, i32* @enable_leak_check, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leak_node, i32 0, i32 1), align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leak_node, i32 0, i32 0), align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  store %struct.TYPE_2__* @leak_node, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leak_node, i32 0, i32 1), align 8
  store %struct.TYPE_2__* @leak_node, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leak_node, i32 0, i32 0), align 8
  %8 = load i32, i32* @print_leak_report, align 4
  %9 = call i32 @atexit(i32 %8)
  br label %10

10:                                               ; preds = %7, %4, %0
  %11 = call i32 @pthread_mutex_unlock(i32* @ta_dbg_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
