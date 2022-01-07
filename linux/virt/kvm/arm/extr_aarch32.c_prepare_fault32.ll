; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_aarch32.c_prepare_fault32.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_aarch32.c_prepare_fault32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PSR_AA32_T_BIT = common dso_local global i64 0, align 8
@return_offsets = common dso_local global i32** null, align 8
@c1_SCTLR = common dso_local global i32 0, align 4
@PSR_AA32_I_BIT = common dso_local global i32 0, align 4
@PSR_AA32_E_BIT = common dso_local global i64 0, align 8
@c12_VBAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32)* @prepare_fault32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_fault32(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %12)
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @PSR_AA32_T_BIT, align 8
  %17 = and i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32**, i32*** @return_offsets, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = load i32, i32* @c1_SCTLR, align 4
  %31 = call i32 @vcpu_cp15(%struct.kvm_vcpu* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PSR_AA32_I_BIT, align 4
  %34 = or i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 1073741824
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i64, i64* @PSR_AA32_T_BIT, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %39, %3
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 33554432
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* @PSR_AA32_E_BIT, align 8
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %53)
  store i64 %52, i64* %54, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @vcpu_write_spsr(%struct.kvm_vcpu* %55, i64 %56)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = call i32* @vcpu_pc(%struct.kvm_vcpu* %58)
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %64 = call i32* @vcpu_reg32(%struct.kvm_vcpu* %63, i32 14)
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 8192
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, -65536
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %51
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = load i32, i32* @c12_VBAR, align 4
  %74 = call i32 @vcpu_cp15(%struct.kvm_vcpu* %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = call i32* @vcpu_pc(%struct.kvm_vcpu* %79)
  store i32 %78, i32* %80, align 4
  ret void
}

declare dso_local i64* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_cp15(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_write_spsr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32* @vcpu_reg32(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
