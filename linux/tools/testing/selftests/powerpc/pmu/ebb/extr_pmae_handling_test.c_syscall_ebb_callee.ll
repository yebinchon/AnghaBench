; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmae_handling_test.c_syscall_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmae_handling_test.c_syscall_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@before = common dso_local global i64 0, align 8
@after = common dso_local global i64 0, align 8
@mmcr0_mismatch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @syscall_ebb_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscall_ebb_callee() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPRN_BESCR, align 4
  %3 = call i8* @mfspr(i32 %2)
  %4 = ptrtoint i8* %3 to i32
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @BESCR_PMEO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  br label %29

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* @sample_period, align 4
  %16 = call i32 @count_pmc(i32 1, i32 %15)
  %17 = load i32, i32* @SPRN_MMCR0, align 4
  %18 = call i8* @mfspr(i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* @before, align 8
  %20 = call i32 (...) @sched_yield()
  %21 = load i32, i32* @SPRN_MMCR0, align 4
  %22 = call i8* @mfspr(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* @after, align 8
  %24 = load i64, i64* @before, align 8
  %25 = load i64, i64* @after, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i32 1, i32* @mmcr0_mismatch, align 4
  br label %28

28:                                               ; preds = %27, %12
  br label %29

29:                                               ; preds = %28, %9
  %30 = call i32 (...) @reset_ebb()
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @reset_ebb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
