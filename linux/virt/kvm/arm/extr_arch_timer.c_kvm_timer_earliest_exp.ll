; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_earliest_exp.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_earliest_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.arch_timer_context* }
%struct.arch_timer_context = type { i32 }

@ULLONG_MAX = common dso_local global i64 0, align 8
@NR_KVM_TIMERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"timer %d loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @kvm_timer_earliest_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_timer_earliest_exp(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arch_timer_context*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load i64, i64* @ULLONG_MAX, align 8
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NR_KVM_TIMERS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.arch_timer_context*, %struct.arch_timer_context** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %17, i64 %19
  store %struct.arch_timer_context* %20, %struct.arch_timer_context** %6, align 8
  %21 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %22 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WARN(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %27 = call i64 @kvm_timer_irq_can_fire(%struct.arch_timer_context* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %32 = call i32 @kvm_timer_compute_delta(%struct.arch_timer_context* %31)
  %33 = call i64 @min(i64 %30, i32 %32)
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @ULLONG_MAX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* %2, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i64 @kvm_timer_irq_can_fire(%struct.arch_timer_context*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @kvm_timer_compute_delta(%struct.arch_timer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
