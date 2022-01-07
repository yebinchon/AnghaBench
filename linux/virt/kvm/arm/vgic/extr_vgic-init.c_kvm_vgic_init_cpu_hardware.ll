; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_init_cpu_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_init_cpu_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kvm_vgic_global_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VGIC_V2 = common dso_local global i64 0, align 8
@__vgic_v3_init_lrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vgic_init_cpu_hardware() #0 {
  %1 = call i32 (...) @preemptible()
  %2 = call i32 @BUG_ON(i32 %1)
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %4 = load i64, i64* @VGIC_V2, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @vgic_v2_init_lrs()
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @__vgic_v3_init_lrs, align 4
  %10 = call i32 @kvm_call_hyp(i32 %9)
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @vgic_v2_init_lrs(...) #1

declare dso_local i32 @kvm_call_hyp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
