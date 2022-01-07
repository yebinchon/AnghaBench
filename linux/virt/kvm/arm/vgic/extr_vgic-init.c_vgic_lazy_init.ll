; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_vgic_lazy_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_vgic_lazy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_lazy_init(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = call i32 @vgic_initialized(%struct.kvm* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %12
  %24 = load %struct.kvm*, %struct.kvm** %3, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.kvm*, %struct.kvm** %3, align 8
  %28 = call i32 @vgic_init(%struct.kvm* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.kvm*, %struct.kvm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vgic_initialized(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_init(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
