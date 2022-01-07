; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_cns3xxx_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_cns3xxx_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@boot_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@pen_release = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @cns3xxx_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = call i32 @spin_lock(i32* @boot_lock)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @write_pen_release(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cpumask_of(i32 %9)
  %11 = call i32 @arch_send_wakeup_ipi_mask(i32 %10)
  %12 = load i32, i32* @jiffies, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 1, %13
  %15 = add nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %27, %2
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @time_before(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = call i32 (...) @smp_rmb()
  %24 = load i32, i32* @pen_release, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %29

27:                                               ; preds = %22
  %28 = call i32 @udelay(i32 10)
  br label %17

29:                                               ; preds = %26, %17
  %30 = call i32 @spin_unlock(i32* @boot_lock)
  %31 = load i32, i32* @pen_release, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_pen_release(i32) #1

declare dso_local i32 @arch_send_wakeup_ipi_mask(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
