; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_kvm_vm_ioctl_register_coalesced_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_kvm_vm_ioctl_register_coalesced_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.kvm_coalesced_mmio_zone = type { i32, i32, i32 }
%struct.kvm_coalesced_mmio_dev = type { i32, i32, %struct.kvm_coalesced_mmio_zone, %struct.kvm* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@coalesced_mmio_ops = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_register_coalesced_mmio(%struct.kvm* %0, %struct.kvm_coalesced_mmio_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_coalesced_mmio_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_coalesced_mmio_zone* %1, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %8 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %12, %2
  %21 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %22 = call %struct.kvm_coalesced_mmio_dev* @kzalloc(i32 32, i32 %21)
  store %struct.kvm_coalesced_mmio_dev* %22, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %23 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %24 = icmp ne %struct.kvm_coalesced_mmio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %20
  %29 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %29, i32 0, i32 1
  %31 = call i32 @kvm_iodevice_init(i32* %30, i32* @coalesced_mmio_ops)
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %33, i32 0, i32 3
  store %struct.kvm* %32, %struct.kvm** %34, align 8
  %35 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %36 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %35, i32 0, i32 2
  %37 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %38 = bitcast %struct.kvm_coalesced_mmio_zone* %36 to i8*
  %39 = bitcast %struct.kvm_coalesced_mmio_zone* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = load %struct.kvm*, %struct.kvm** %4, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.kvm*, %struct.kvm** %4, align 8
  %44 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i32, i32* @KVM_PIO_BUS, align 4
  br label %52

50:                                               ; preds = %28
  %51 = load i32, i32* @KVM_MMIO_BUS, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %60, i32 0, i32 1
  %62 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %43, i32 %53, i32 %56, i32 %59, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %75

66:                                               ; preds = %52
  %67 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %67, i32 0, i32 0
  %69 = load %struct.kvm*, %struct.kvm** %4, align 8
  %70 = getelementptr inbounds %struct.kvm, %struct.kvm* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.kvm*, %struct.kvm** %4, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %82

75:                                               ; preds = %65
  %76 = load %struct.kvm*, %struct.kvm** %4, align 8
  %77 = getelementptr inbounds %struct.kvm, %struct.kvm* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %80 = call i32 @kfree(%struct.kvm_coalesced_mmio_dev* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %66, %25, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.kvm_coalesced_mmio_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_coalesced_mmio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
