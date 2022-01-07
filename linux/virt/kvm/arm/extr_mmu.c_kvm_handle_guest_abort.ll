; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_handle_guest_abort.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_handle_guest_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_run = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@FSC_FAULT = common dso_local global i64 0, align 8
@FSC_PERM = common dso_local global i64 0, align 8
@FSC_ACCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unsupported FSC: EC=%#x xFSC=%#lx ESR_EL2=%#lx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_handle_guest_abort(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = call i64 @kvm_vcpu_trap_get_fault_type(%struct.kvm_vcpu* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @kvm_vcpu_get_fault_ipa(%struct.kvm_vcpu* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = call i32 @kvm_vcpu_trap_is_iabt(%struct.kvm_vcpu* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = call i64 @kvm_vcpu_dabt_isextabt(%struct.kvm_vcpu* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = call i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %27)
  %29 = call i32 @kvm_handle_guest_sea(i32 %26, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %164

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call i32 @kvm_inject_vabt(%struct.kvm_vcpu* %40)
  store i32 1, i32* %3, align 4
  br label %164

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = call i32* @vcpu_pc(%struct.kvm_vcpu* %44)
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = call i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = call i32 @kvm_vcpu_get_hfar(%struct.kvm_vcpu* %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @trace_kvm_guest_fault(i32 %46, i64 %48, i32 %50, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @FSC_FAULT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %43
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @FSC_PERM, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @FSC_ACCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = call i32 @kvm_vcpu_trap_get_class(%struct.kvm_vcpu* %65)
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = call i64 @kvm_vcpu_trap_get_fault(%struct.kvm_vcpu* %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %69)
  %71 = call i32 @kvm_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %68, i64 %70)
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %164

74:                                               ; preds = %60, %56, %43
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @srcu_read_lock(i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.TYPE_3__* %85, i32 %86)
  store %struct.kvm_memory_slot* %87, %struct.kvm_memory_slot** %8, align 8
  %88 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @gfn_to_hva_memslot_prot(%struct.kvm_memory_slot* %88, i32 %89, i32* %12)
  store i64 %90, i64* %9, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = call i32 @kvm_is_write_fault(%struct.kvm_vcpu* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @kvm_is_error_hva(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %99, %74
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %108 = call i32 @kvm_vcpu_get_hfar(%struct.kvm_vcpu* %107)
  %109 = call i32 @kvm_inject_pabt(%struct.kvm_vcpu* %106, i32 %108)
  store i32 1, i32* %14, align 4
  br label %156

110:                                              ; preds = %102
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %112 = call i64 @kvm_vcpu_dabt_is_cm(%struct.kvm_vcpu* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = call i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %116)
  %118 = call i32 @kvm_skip_instr(%struct.kvm_vcpu* %115, i32 %117)
  store i32 1, i32* %14, align 4
  br label %156

119:                                              ; preds = %110
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = call i32 @kvm_vcpu_get_hfar(%struct.kvm_vcpu* %120)
  %122 = and i32 %121, 4095
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @io_mem_abort(%struct.kvm_vcpu* %125, %struct.kvm_run* %126, i32 %127)
  store i32 %128, i32* %14, align 4
  br label %156

129:                                              ; preds = %99, %96
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = call i32 @kvm_phys_size(%struct.TYPE_3__* %133)
  %135 = icmp sge i32 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @VM_BUG_ON(i32 %136)
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @FSC_ACCESS, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %129
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @handle_access_fault(%struct.kvm_vcpu* %142, i32 %143)
  store i32 1, i32* %14, align 4
  br label %156

145:                                              ; preds = %129
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @user_mem_abort(%struct.kvm_vcpu* %146, i32 %147, %struct.kvm_memory_slot* %148, i64 %149, i64 %150)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %155

155:                                              ; preds = %154, %145
  br label %156

156:                                              ; preds = %155, %141, %119, %114, %105
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @srcu_read_unlock(i32* %160, i32 %161)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %156, %64, %39, %31
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @kvm_vcpu_trap_get_fault_type(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_get_fault_ipa(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_trap_is_iabt(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_dabt_isextabt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_handle_guest_sea(i32, i64) #1

declare dso_local i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_inject_vabt(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_guest_fault(i32, i64, i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_get_hfar(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, i32, i64, i64) #1

declare dso_local i32 @kvm_vcpu_trap_get_class(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_trap_get_fault(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @gfn_to_hva_memslot_prot(%struct.kvm_memory_slot*, i32, i32*) #1

declare dso_local i32 @kvm_is_write_fault(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @kvm_inject_pabt(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_dabt_is_cm(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_skip_instr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

declare dso_local i32 @io_mem_abort(%struct.kvm_vcpu*, %struct.kvm_run*, i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @kvm_phys_size(%struct.TYPE_3__*) #1

declare dso_local i32 @handle_access_fault(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @user_mem_abort(%struct.kvm_vcpu*, i32, %struct.kvm_memory_slot*, i64, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
