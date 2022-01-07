; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_timer_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_timer_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_timer_context = type { i32, i8*, i8*, i32 }
%struct.arch_timer_cpu = type { i32 }

@SYS_CNTV_CTL = common dso_local global i32 0, align 4
@SYS_CNTV_CVAL = common dso_local global i32 0, align 4
@SYS_CNTP_CTL = common dso_local global i32 0, align 4
@SYS_CNTP_CVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arch_timer_context*)* @timer_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_save_state(%struct.arch_timer_context* %0) #0 {
  %2 = alloca %struct.arch_timer_context*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.arch_timer_context* %0, %struct.arch_timer_context** %2, align 8
  %6 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %7 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.arch_timer_cpu* @vcpu_timer(i32 %8)
  store %struct.arch_timer_cpu* %9, %struct.arch_timer_cpu** %3, align 8
  %10 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %11 = call i32 @arch_timer_ctx_index(%struct.arch_timer_context* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %13 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %21 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %58

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %53 [
    i32 128, label %27
    i32 129, label %39
    i32 130, label %51
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @SYS_CNTV_CTL, align 4
  %29 = call i8* @read_sysreg_el0(i32 %28)
  %30 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %31 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @SYS_CNTV_CVAL, align 4
  %33 = call i8* @read_sysreg_el0(i32 %32)
  %34 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %35 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @SYS_CNTV_CTL, align 4
  %37 = call i32 @write_sysreg_el0(i32 0, i32 %36)
  %38 = call i32 (...) @isb()
  br label %53

39:                                               ; preds = %25
  %40 = load i32, i32* @SYS_CNTP_CTL, align 4
  %41 = call i8* @read_sysreg_el0(i32 %40)
  %42 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %43 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @SYS_CNTP_CVAL, align 4
  %45 = call i8* @read_sysreg_el0(i32 %44)
  %46 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %47 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @SYS_CNTP_CTL, align 4
  %49 = call i32 @write_sysreg_el0(i32 0, i32 %48)
  %50 = call i32 (...) @isb()
  br label %53

51:                                               ; preds = %25
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %25, %39, %27
  %54 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %55 = call i32 @trace_kvm_timer_save_state(%struct.arch_timer_context* %54)
  %56 = load %struct.arch_timer_context*, %struct.arch_timer_context** %2, align 8
  %57 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %24
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  br label %61

61:                                               ; preds = %58, %16
  ret void
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(i32) #1

declare dso_local i32 @arch_timer_ctx_index(%struct.arch_timer_context*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @read_sysreg_el0(i32) #1

declare dso_local i32 @write_sysreg_el0(i32, i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @trace_kvm_timer_save_state(%struct.arch_timer_context*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
