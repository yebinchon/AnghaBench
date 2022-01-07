; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c___vgic_put_lpi_locked.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c___vgic_put_lpi_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@vgic_irq_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__vgic_put_lpi_locked(%struct.kvm* %0, %struct.vgic_irq* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_irq*, align 8
  %5 = alloca %struct.vgic_dist*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %4, align 8
  %6 = load %struct.kvm*, %struct.kvm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.vgic_dist* %8, %struct.vgic_dist** %5, align 8
  %9 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %10 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %9, i32 0, i32 1
  %11 = load i32, i32* @vgic_irq_release, align 4
  %12 = call i32 @kref_put(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %17 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %20 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %24 = call i32 @kfree(%struct.vgic_irq* %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
