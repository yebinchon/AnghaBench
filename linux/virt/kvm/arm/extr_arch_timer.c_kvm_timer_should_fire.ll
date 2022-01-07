; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_should_fire.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_should_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_timer_context = type { i64, i64, i64 }

@SYS_CNTV_CTL = common dso_local global i32 0, align 4
@SYS_CNTP_CTL = common dso_local global i32 0, align 4
@ARCH_TIMER_CTRL_ENABLE = common dso_local global i32 0, align 4
@ARCH_TIMER_CTRL_IT_STAT = common dso_local global i32 0, align 4
@ARCH_TIMER_CTRL_IT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_timer_context*)* @kvm_timer_should_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_timer_should_fire(%struct.arch_timer_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arch_timer_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.arch_timer_context* %0, %struct.arch_timer_context** %3, align 8
  %8 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %9 = icmp ne %struct.arch_timer_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %13 = call i32 @arch_timer_ctx_index(%struct.arch_timer_context* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %15 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %27 [
    i32 128, label %20
    i32 129, label %23
    i32 130, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @SYS_CNTV_CTL, align 4
  %22 = call i32 @read_sysreg_el0(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @SYS_CNTP_CTL, align 4
  %25 = call i32 @read_sysreg_el0(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %18, %26, %23, %20
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ARCH_TIMER_CTRL_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ARCH_TIMER_CTRL_IT_STAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ARCH_TIMER_CTRL_IT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %32, %27
  %44 = phi i1 [ false, %32 ], [ false, %27 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %64

46:                                               ; preds = %11
  %47 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %48 = call i32 @kvm_timer_irq_can_fire(%struct.arch_timer_context* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %46
  %52 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %53 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  %55 = call i64 (...) @kvm_phys_timer_read()
  %56 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %57 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sle i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %51, %50, %43, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @arch_timer_ctx_index(%struct.arch_timer_context*) #1

declare dso_local i32 @read_sysreg_el0(i32) #1

declare dso_local i32 @kvm_timer_irq_can_fire(%struct.arch_timer_context*) #1

declare dso_local i64 @kvm_phys_timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
