; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_rseq.c_rseq_unregister_current_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_rseq.c_rseq_unregister_current_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rseq_ownership = common dso_local global i32 0, align 4
@__rseq_refcount = common dso_local global i32 0, align 4
@__rseq_abi = common dso_local global i32 0, align 4
@RSEQ_FLAG_UNREGISTER = common dso_local global i32 0, align 4
@RSEQ_SIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rseq_unregister_current_thread() #0 {
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
  br label %30

8:                                                ; preds = %0
  %9 = call i32 @signal_off_save(i32* %4)
  %10 = load i32, i32* @__rseq_refcount, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %26

13:                                               ; preds = %8
  %14 = load i32, i32* @__rseq_refcount, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @__rseq_refcount, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @RSEQ_FLAG_UNREGISTER, align 4
  %20 = load i32, i32* @RSEQ_SIG, align 4
  %21 = call i32 @sys_rseq(i32* @__rseq_abi, i32 4, i32 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %26

25:                                               ; preds = %18
  store i32 1, i32* @__rseq_refcount, align 4
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %17, %12
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @signal_restore(i32 %27)
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %26, %7
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @signal_off_save(i32*) #1

declare dso_local i32 @sys_rseq(i32*, i32, i32, i32) #1

declare dso_local i32 @signal_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
