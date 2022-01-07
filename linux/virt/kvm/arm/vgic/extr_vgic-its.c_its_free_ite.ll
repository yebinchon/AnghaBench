; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_its_free_ite.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_its_free_ite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.its_ite = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.its_ite*)* @its_free_ite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_free_ite(%struct.kvm* %0, %struct.its_ite* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.its_ite*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.its_ite* %1, %struct.its_ite** %4, align 8
  %5 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %6 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %5, i32 0, i32 1
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %9 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %14 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %21 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @its_unmap_vlpi(i32 %24)
  %26 = call i32 @WARN_ON(i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load %struct.kvm*, %struct.kvm** %3, align 8
  %29 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %30 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @vgic_put_irq(%struct.kvm* %28, %struct.TYPE_2__* %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %35 = call i32 @kfree(%struct.its_ite* %34)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @its_unmap_vlpi(i32) #1

declare dso_local i32 @vgic_put_irq(%struct.kvm*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.its_ite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
