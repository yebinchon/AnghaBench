; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_dist_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_dist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32, %struct.vgic_irq* }
%struct.vgic_irq = type { i32, i32, i32, i32, %struct.kvm_vcpu*, i32*, i32, i32, i64 }
%struct.kvm_vcpu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VGIC_NR_PRIVATE_IRQS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @kvm_vgic_dist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vgic_dist_init(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_dist*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.vgic_dist* %12, %struct.vgic_dist** %6, align 8
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %13, i32 0)
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.vgic_irq* @kcalloc(i32 %15, i32 48, i32 %16)
  %18 = load %struct.vgic_dist*, %struct.vgic_dist** %6, align 8
  %19 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %18, i32 0, i32 1
  store %struct.vgic_irq* %17, %struct.vgic_irq** %19, align 8
  %20 = load %struct.vgic_dist*, %struct.vgic_dist** %6, align 8
  %21 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %20, i32 0, i32 1
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %21, align 8
  %23 = icmp ne %struct.vgic_irq* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %80, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.vgic_dist*, %struct.vgic_dist** %6, align 8
  %34 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %33, i32 0, i32 1
  %35 = load %struct.vgic_irq*, %struct.vgic_irq** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %35, i64 %37
  store %struct.vgic_irq* %38, %struct.vgic_irq** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %44 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %46 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %45, i32 0, i32 7
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %49 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %48, i32 0, i32 6
  %50 = call i32 @raw_spin_lock_init(i32* %49)
  %51 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %52 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %54 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %55 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %54, i32 0, i32 4
  store %struct.kvm_vcpu* %53, %struct.kvm_vcpu** %55, align 8
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %57 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %56, i32 0, i32 3
  %58 = call i32 @kref_init(i32* %57)
  %59 = load %struct.vgic_dist*, %struct.vgic_dist** %6, align 8
  %60 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %72 [
    i32 129, label %62
    i32 128, label %67
  ]

62:                                               ; preds = %32
  %63 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %64 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %66 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %79

67:                                               ; preds = %32
  %68 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %69 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %71 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %79

72:                                               ; preds = %32
  %73 = load %struct.vgic_dist*, %struct.vgic_dist** %6, align 8
  %74 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %73, i32 0, i32 1
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %74, align 8
  %76 = call i32 @kfree(%struct.vgic_irq* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %67, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %28

83:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %72, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local %struct.vgic_irq* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
