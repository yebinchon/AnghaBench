; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_get_timer_map.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_get_timer_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.timer_map = type { i32*, i32*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.timer_map*)* @get_timer_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_timer_map(%struct.kvm_vcpu* %0, %struct.timer_map* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.timer_map*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.timer_map* %1, %struct.timer_map** %4, align 8
  %5 = call i64 (...) @has_vhe()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i8* @vcpu_vtimer(%struct.kvm_vcpu* %8)
  %10 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %11 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i8* @vcpu_ptimer(%struct.kvm_vcpu* %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %16 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %18 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i8* @vcpu_vtimer(%struct.kvm_vcpu* %20)
  %22 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %23 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %25 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i8* @vcpu_ptimer(%struct.kvm_vcpu* %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %30 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %19, %7
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.timer_map*, %struct.timer_map** %4, align 8
  %36 = call i32 @trace_kvm_get_timer_map(i32 %34, %struct.timer_map* %35)
  ret void
}

declare dso_local i64 @has_vhe(...) #1

declare dso_local i8* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local i8* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_get_timer_map(i32, %struct.timer_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
