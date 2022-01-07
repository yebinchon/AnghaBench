; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_irq_can_fire.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_irq_can_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_timer_context = type { i32, i64 }

@ARCH_TIMER_CTRL_IT_MASK = common dso_local global i32 0, align 4
@ARCH_TIMER_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_timer_context*)* @kvm_timer_irq_can_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_timer_irq_can_fire(%struct.arch_timer_context* %0) #0 {
  %2 = alloca %struct.arch_timer_context*, align 8
  store %struct.arch_timer_context* %0, %struct.arch_timer_context** %2, align 8
  %3 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %4 = icmp ne %struct.arch_timer_context* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %7 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %15 = icmp ne %struct.arch_timer_context* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %18 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ARCH_TIMER_CTRL_IT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %25 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ARCH_TIMER_CTRL_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %16, %10
  %31 = phi i1 [ false, %16 ], [ false, %10 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
