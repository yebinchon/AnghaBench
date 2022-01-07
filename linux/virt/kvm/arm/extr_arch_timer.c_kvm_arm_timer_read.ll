; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_read.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_context = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, %struct.arch_timer_context*, i32)* @kvm_arm_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_arm_timer_read(%struct.kvm_vcpu* %0, %struct.arch_timer_context* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.arch_timer_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.arch_timer_context* %1, %struct.arch_timer_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %32 [
    i32 128, label %9
    i32 130, label %19
    i32 129, label %22
    i32 131, label %26
  ]

9:                                                ; preds = %3
  %10 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %11 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 (...) @kvm_phys_timer_read()
  %14 = sub nsw i64 %12, %13
  %15 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %16 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %7, align 8
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %21 = call i64 @read_timer_ctl(%struct.arch_timer_context* %20)
  store i64 %21, i64* %7, align 8
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %24 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %34

26:                                               ; preds = %3
  %27 = call i64 (...) @kvm_phys_timer_read()
  %28 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %29 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %7, align 8
  br label %34

32:                                               ; preds = %3
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %26, %22, %19, %9
  %35 = load i64, i64* %7, align 8
  ret i64 %35
}

declare dso_local i64 @kvm_phys_timer_read(...) #1

declare dso_local i64 @read_timer_ctl(%struct.arch_timer_context*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
