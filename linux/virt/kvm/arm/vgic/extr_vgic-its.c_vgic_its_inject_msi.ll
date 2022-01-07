; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_inject_msi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_inject_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_msi = type { i32, i32 }
%struct.vgic_its = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_its_inject_msi(%struct.kvm* %0, %struct.kvm_msi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_msi*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_msi* %1, %struct.kvm_msi** %5, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %10 = call i32 @vgic_its_inject_cached_translation(%struct.kvm* %8, %struct.kvm_msi* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %16 = call %struct.vgic_its* @vgic_msi_to_its(%struct.kvm* %14, %struct.kvm_msi* %15)
  store %struct.vgic_its* %16, %struct.vgic_its** %6, align 8
  %17 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %18 = call i64 @IS_ERR(%struct.vgic_its* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.vgic_its* %21)
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %13
  %24 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %25 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %29 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vgic_its_trigger_msi(%struct.kvm* %27, %struct.vgic_its* %28, i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %37 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %41, %20, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @vgic_its_inject_cached_translation(%struct.kvm*, %struct.kvm_msi*) #1

declare dso_local %struct.vgic_its* @vgic_msi_to_its(%struct.kvm*, %struct.kvm_msi*) #1

declare dso_local i64 @IS_ERR(%struct.vgic_its*) #1

declare dso_local i32 @PTR_ERR(%struct.vgic_its*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_its_trigger_msi(%struct.kvm*, %struct.vgic_its*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
