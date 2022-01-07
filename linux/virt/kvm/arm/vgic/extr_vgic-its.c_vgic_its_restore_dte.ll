; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_dte.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.its_device = type { i32 }

@KVM_ITS_DTE_VALID_SHIFT = common dso_local global i32 0, align 4
@KVM_ITS_DTE_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_ITS_DTE_ITTADDR_MASK = common dso_local global i32 0, align 4
@KVM_ITS_DTE_ITTADDR_SHIFT = common dso_local global i32 0, align 4
@KVM_ITS_DTE_NEXT_MASK = common dso_local global i32 0, align 4
@KVM_ITS_DTE_NEXT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i32, i8*, i8*)* @vgic_its_restore_dte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_dte(%struct.vgic_its* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.its_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @KVM_ITS_DTE_VALID_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @KVM_ITS_DTE_SIZE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @KVM_ITS_DTE_ITTADDR_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @KVM_ITS_DTE_ITTADDR_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = shl i32 %33, 8
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %72

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @KVM_ITS_DTE_NEXT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @KVM_ITS_DTE_NEXT_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.its_device* @vgic_its_alloc_device(%struct.vgic_its* %44, i32 %45, i32 %46, i32 %47)
  store %struct.its_device* %48, %struct.its_device** %10, align 8
  %49 = load %struct.its_device*, %struct.its_device** %10, align 8
  %50 = call i64 @IS_ERR(%struct.its_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.its_device*, %struct.its_device** %10, align 8
  %54 = call i32 @PTR_ERR(%struct.its_device* %53)
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %38
  %56 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %57 = load %struct.its_device*, %struct.its_device** %10, align 8
  %58 = call i32 @vgic_its_restore_itt(%struct.vgic_its* %56, %struct.its_device* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %63 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.its_device*, %struct.its_device** %10, align 8
  %68 = call i32 @vgic_its_free_device(i32 %66, %struct.its_device* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %55
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %61, %52, %37
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.its_device* @vgic_its_alloc_device(%struct.vgic_its*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.its_device*) #1

declare dso_local i32 @PTR_ERR(%struct.its_device*) #1

declare dso_local i32 @vgic_its_restore_itt(%struct.vgic_its*, %struct.its_device*) #1

declare dso_local i32 @vgic_its_free_device(i32, %struct.its_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
