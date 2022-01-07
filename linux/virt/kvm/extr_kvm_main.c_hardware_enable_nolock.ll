; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hardware_enable_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hardware_enable_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpus_hardware_enabled = common dso_local global i32 0, align 4
@hardware_enable_failed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"kvm: enabling virtualization on CPU%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hardware_enable_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hardware_enable_nolock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @cpus_hardware_enabled, align 4
  %8 = call i64 @cpumask_test_cpu(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @cpus_hardware_enabled, align 4
  %14 = call i32 @cpumask_set_cpu(i32 %12, i32 %13)
  %15 = call i32 (...) @kvm_arch_hardware_enable()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @cpus_hardware_enabled, align 4
  %21 = call i32 @cpumask_clear_cpu(i32 %19, i32 %20)
  %22 = call i32 @atomic_inc(i32* @hardware_enable_failed)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %10, %18, %11
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @kvm_arch_hardware_enable(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
