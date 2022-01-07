; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_write.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_coalesced_mmio_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.kvm_coalesced_mmio_ring* }
%struct.kvm_coalesced_mmio_ring = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_COALESCED_MMIO_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @coalesced_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesced_mmio_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  %13 = alloca %struct.kvm_coalesced_mmio_ring*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %16 = call %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device* %15)
  store %struct.kvm_coalesced_mmio_dev* %16, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %17 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %18 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %20, align 8
  store %struct.kvm_coalesced_mmio_ring* %21, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %22 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %103

30:                                               ; preds = %5
  %31 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %32 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %37 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @READ_ONCE(i64 %38)
  store i64 %39, i64* %14, align 8
  %40 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @coalesced_mmio_has_room(%struct.kvm_coalesced_mmio_dev* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @KVM_COALESCED_MMIO_MAX, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %30
  %49 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %50 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %103

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %59 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %66 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %72 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @memcpy(i32 %77, i8* %78, i32 %79)
  %81 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %82 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %86 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %84, i32* %90, align 4
  %91 = call i32 (...) @smp_wmb()
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, 1
  %94 = load i64, i64* @KVM_COALESCED_MMIO_MAX, align 8
  %95 = urem i64 %93, %94
  %96 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %13, align 8
  %97 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %12, align 8
  %99 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %56, %48, %27
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device*) #1

declare dso_local i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @coalesced_mmio_has_room(%struct.kvm_coalesced_mmio_dev*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
