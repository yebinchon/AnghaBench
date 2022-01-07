; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_yield_to.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_yield_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.task_struct* null, %struct.task_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pid* @rcu_dereference(i32 %10)
  store %struct.pid* %11, %struct.pid** %4, align 8
  %12 = load %struct.pid*, %struct.pid** %4, align 8
  %13 = icmp ne %struct.pid* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.pid*, %struct.pid** %4, align 8
  %16 = load i32, i32* @PIDTYPE_PID, align 4
  %17 = call %struct.task_struct* @get_pid_task(%struct.pid* %15, i32 %16)
  store %struct.task_struct* %17, %struct.task_struct** %5, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call i32 @yield_to(%struct.task_struct* %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call i32 @put_task_struct(%struct.task_struct* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @rcu_dereference(i32) #1

declare dso_local %struct.task_struct* @get_pid_task(%struct.pid*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @yield_to(%struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
