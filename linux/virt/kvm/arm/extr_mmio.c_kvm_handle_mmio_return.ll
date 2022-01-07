; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_kvm_handle_mmio_return.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_kvm_handle_mmio_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.kvm_run = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_handle_mmio_return(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %18
  %27 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @kvm_mmio_read_buf(i32 %41, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = icmp ult i64 %52, 8
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %55, 8
  %57 = sub i32 %56, 1
  %58 = shl i32 1, %57
  store i32 %58, i32* %8, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = xor i64 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %62, %64
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %54, %50, %37
  %67 = load i32, i32* @KVM_TRACE_MMIO_READ, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @trace_kvm_mmio(i32 %67, i32 %68, i32 %72, i64* %6)
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @vcpu_data_host_to_guest(%struct.kvm_vcpu* %74, i64 %75, i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %78, i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %66, %18
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = call i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %88)
  %90 = call i32 @kvm_skip_instr(%struct.kvm_vcpu* %87, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %34, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kvm_mmio_read_buf(i32, i32) #1

declare dso_local i32 @trace_kvm_mmio(i32, i32, i32, i64*) #1

declare dso_local i64 @vcpu_data_host_to_guest(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @kvm_skip_instr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
