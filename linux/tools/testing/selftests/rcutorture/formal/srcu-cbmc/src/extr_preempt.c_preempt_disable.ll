; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_preempt.c_preempt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_preempt.c_preempt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preempt_disable_count = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@thread_cpu_id = common dso_local global i64 0, align 8
@NR_CPUS = common dso_local global i64 0, align 8
@cpu_preemption_locks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preempt_disable() #0 {
  %1 = load i64, i64* @preempt_disable_count, align 8
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @preempt_disable_count, align 8
  %5 = load i64, i64* @INT_MAX, align 8
  %6 = icmp eq i64 %4, %5
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i1 [ true, %0 ], [ %6, %3 ]
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* @preempt_disable_count, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @preempt_disable_count, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %30

15:                                               ; preds = %7
  %16 = call i64 (...) @nondet_int()
  store i64 %16, i64* @thread_cpu_id, align 8
  %17 = load i64, i64* @thread_cpu_id, align 8
  %18 = icmp uge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assume(i32 %19)
  %21 = load i64, i64* @thread_cpu_id, align 8
  %22 = load i64, i64* @NR_CPUS, align 8
  %23 = icmp ult i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assume(i32 %24)
  %26 = load i32*, i32** @cpu_preemption_locks, align 8
  %27 = load i64, i64* @thread_cpu_id, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @lock_impl_lock(i32* %28)
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @nondet_int(...) #1

declare dso_local i32 @assume(i32) #1

declare dso_local i32 @lock_impl_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
