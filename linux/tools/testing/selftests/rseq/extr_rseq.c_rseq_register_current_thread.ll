; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_rseq.c_rseq_register_current_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_rseq.c_rseq_register_current_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@rseq_ownership = common dso_local global i32 0, align 4
@__rseq_refcount = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@__rseq_abi = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RSEQ_SIG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@RSEQ_CPU_ID_REGISTRATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rseq_register_current_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @rseq_ownership, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %42

8:                                                ; preds = %0
  %9 = call i32 @signal_off_save(i32* %4)
  %10 = load i64, i64* @__rseq_refcount, align 8
  %11 = load i64, i64* @UINT_MAX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %38

14:                                               ; preds = %8
  %15 = load i64, i64* @__rseq_refcount, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @__rseq_refcount, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %38

19:                                               ; preds = %14
  %20 = load i32, i32* @RSEQ_SIG, align 4
  %21 = call i32 @sys_rseq(%struct.TYPE_3__* @__rseq_abi, i32 4, i32 0, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = call i64 (...) @rseq_current_cpu_raw()
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %38

29:                                               ; preds = %19
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EBUSY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @RSEQ_CPU_ID_REGISTRATION_FAILED, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__rseq_abi, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %33, %29
  store i32 -1, i32* %3, align 4
  %36 = load i64, i64* @__rseq_refcount, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @__rseq_refcount, align 8
  br label %38

38:                                               ; preds = %35, %24, %18, %13
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @signal_restore(i32 %39)
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %38, %7
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @signal_off_save(i32*) #1

declare dso_local i32 @sys_rseq(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rseq_current_cpu_raw(...) #1

declare dso_local i32 @signal_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
