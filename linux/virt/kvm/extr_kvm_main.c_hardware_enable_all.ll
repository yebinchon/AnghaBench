; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hardware_enable_all.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hardware_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kvm_count_lock = common dso_local global i32 0, align 4
@kvm_usage_count = common dso_local global i32 0, align 4
@hardware_enable_failed = common dso_local global i32 0, align 4
@hardware_enable_nolock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hardware_enable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hardware_enable_all() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @raw_spin_lock(i32* @kvm_count_lock)
  %3 = load i32, i32* @kvm_usage_count, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @kvm_usage_count, align 4
  %5 = load i32, i32* @kvm_usage_count, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = call i32 @atomic_set(i32* @hardware_enable_failed, i32 0)
  %9 = load i32, i32* @hardware_enable_nolock, align 4
  %10 = call i32 @on_each_cpu(i32 %9, i32* null, i32 1)
  %11 = call i64 @atomic_read(i32* @hardware_enable_failed)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 (...) @hardware_disable_all_nolock()
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i32 @raw_spin_unlock(i32* @kvm_count_lock)
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hardware_disable_all_nolock(...) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
