; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_cpu = type { i32 }
%struct.timer_map = type { i64, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@has_gic_active_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_timer_vcpu_load(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca %struct.timer_map, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu* %5)
  store %struct.arch_timer_cpu* %6, %struct.arch_timer_cpu** %3, align 8
  %7 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i32 @get_timer_map(%struct.kvm_vcpu* %17, %struct.timer_map* %4)
  %19 = call i64 @static_branch_likely(i32* @has_gic_active_state)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @kvm_timer_vcpu_load_gic(%struct.TYPE_3__* %23)
  %25 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @kvm_timer_vcpu_load_gic(%struct.TYPE_3__* %30)
  br label %32

32:                                               ; preds = %28, %21
  br label %36

33:                                               ; preds = %16
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = call i32 @kvm_timer_vcpu_load_nogic(%struct.kvm_vcpu* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_cntvoff(i32 %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i32 @kvm_timer_unblocking(%struct.kvm_vcpu* %42)
  %44 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @timer_restore_state(%struct.TYPE_3__* %45)
  %47 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @timer_restore_state(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %50, %36
  %55 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @timer_emulate(i64 %60)
  br label %62

62:                                               ; preds = %15, %58, %54
  ret void
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_timer_map(%struct.kvm_vcpu*, %struct.timer_map*) #1

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @kvm_timer_vcpu_load_gic(%struct.TYPE_3__*) #1

declare dso_local i32 @kvm_timer_vcpu_load_nogic(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_cntvoff(i32) #1

declare dso_local i32 @kvm_timer_unblocking(%struct.kvm_vcpu*) #1

declare dso_local i32 @timer_restore_state(%struct.TYPE_3__*) #1

declare dso_local i32 @timer_emulate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
