; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_preempt.c_preempt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_preempt.c_preempt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preempt_disable_count = common dso_local global i32 0, align 4
@cpu_preemption_locks = common dso_local global i32* null, align 8
@thread_cpu_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preempt_enable() #0 {
  %1 = load i32, i32* @preempt_disable_count, align 4
  %2 = icmp slt i32 %1, 1
  %3 = zext i1 %2 to i32
  %4 = call i32 @BUG_ON(i32 %3)
  %5 = load i32, i32* @preempt_disable_count, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @preempt_disable_count, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %14

9:                                                ; preds = %0
  %10 = load i32*, i32** @cpu_preemption_locks, align 8
  %11 = load i64, i64* @thread_cpu_id, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @lock_impl_unlock(i32* %12)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_impl_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
