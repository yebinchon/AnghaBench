; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_on_willing_child_test.c_victim_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_on_willing_child_test.c_victim_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.pipe = type { i32 }

@standard_ebb_callee = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sample_period = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @victim_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @victim_child(i32 %0, i32 %1) #0 {
  %3 = alloca %union.pipe, align 4
  %4 = alloca %union.pipe, align 4
  %5 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  %7 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wait_for_parent(i32 %8)
  %10 = call i32 @FAIL_IF(i32 %9)
  %11 = call i32 @ebb_enable_pmc_counting(i32 1)
  %12 = load i32, i32* @standard_ebb_callee, align 4
  %13 = call i32 @setup_ebb_handler(i32 %12)
  %14 = call i32 (...) @ebb_global_enable()
  %15 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @notify_parent(i32 %16)
  %18 = call i32 @FAIL_IF(i32 %17)
  br label %19

19:                                               ; preds = %22, %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %21 = icmp slt i32 %20, 20
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 (...) @core_busy_loop()
  %24 = call i32 @FAIL_IF(i32 %23)
  br label %19

25:                                               ; preds = %19
  %26 = call i32 (...) @ebb_global_disable()
  %27 = call i32 (...) @ebb_freeze_pmcs()
  %28 = load i32, i32* @sample_period, align 4
  %29 = call i32 @count_pmc(i32 1, i32 %28)
  %30 = call i32 (...) @dump_ebb_state()
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @FAIL_IF(i32 %33)
  ret i32 0
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @wait_for_parent(i32) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @notify_parent(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
