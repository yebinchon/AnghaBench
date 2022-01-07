; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vgic_its = type { i32 }
%struct.its_ite = type { %struct.its_ite* }
%struct.kvm_vcpu = type { i32 }
%struct.its_device = type { i32 }
%struct.its_collection = type { i32 }
%struct.vgic_irq = type { %struct.vgic_irq* }

@E_ITS_MAPTI_UNMAPPED_DEVICE = common dso_local global i32 0, align 4
@E_ITS_MAPTI_ID_OOR = common dso_local global i32 0, align 4
@GITS_CMD_MAPTI = common dso_local global i64 0, align 8
@GIC_LPI_OFFSET = common dso_local global i32 0, align 4
@E_ITS_MAPTI_PHYSICALID_OOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_mapi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_mapi(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.its_ite*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca %struct.its_device*, align 8
  %14 = alloca %struct.its_collection*, align 8
  %15 = alloca %struct.its_collection*, align 8
  %16 = alloca %struct.vgic_irq*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @its_cmd_get_deviceid(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @its_cmd_get_id(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @its_cmd_get_collection(i32* %23)
  store i32 %24, i32* %10, align 4
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %12, align 8
  store %struct.its_collection* null, %struct.its_collection** %15, align 8
  %25 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.its_device* @find_its_device(%struct.vgic_its* %25, i32 %26)
  store %struct.its_device* %27, %struct.its_device** %13, align 8
  %28 = load %struct.its_device*, %struct.its_device** %13, align 8
  %29 = icmp ne %struct.its_device* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @E_ITS_MAPTI_UNMAPPED_DEVICE, align 4
  store i32 %31, i32* %4, align 4
  br label %147

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.its_device*, %struct.its_device** %13, align 8
  %35 = getelementptr inbounds %struct.its_device, %struct.its_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BIT_ULL(i32 %36)
  %38 = icmp sge i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @E_ITS_MAPTI_ID_OOR, align 4
  store i32 %40, i32* %4, align 4
  br label %147

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @its_cmd_get_command(i32* %42)
  %44 = load i64, i64* @GITS_CMD_MAPTI, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @its_cmd_get_physical_id(i32* %47)
  store i32 %48, i32* %17, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @GIC_LPI_OFFSET, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @max_lpis_propbaser(i32 %61)
  %63 = icmp sge i32 %56, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55, %51
  %65 = load i32, i32* @E_ITS_MAPTI_PHYSICALID_OOR, align 4
  store i32 %65, i32* %4, align 4
  br label %147

66:                                               ; preds = %55
  %67 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @find_ite(%struct.vgic_its* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %147

73:                                               ; preds = %66
  %74 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.its_collection* @find_collection(%struct.vgic_its* %74, i32 %75)
  store %struct.its_collection* %76, %struct.its_collection** %14, align 8
  %77 = load %struct.its_collection*, %struct.its_collection** %14, align 8
  %78 = icmp ne %struct.its_collection* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @vgic_its_alloc_collection(%struct.vgic_its* %80, %struct.its_collection** %14, i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %4, align 4
  br label %147

87:                                               ; preds = %79
  %88 = load %struct.its_collection*, %struct.its_collection** %14, align 8
  store %struct.its_collection* %88, %struct.its_collection** %15, align 8
  br label %89

89:                                               ; preds = %87, %73
  %90 = load %struct.its_device*, %struct.its_device** %13, align 8
  %91 = load %struct.its_collection*, %struct.its_collection** %14, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.vgic_irq* @vgic_its_alloc_ite(%struct.its_device* %90, %struct.its_collection* %91, i32 %92)
  %94 = bitcast %struct.vgic_irq* %93 to %struct.its_ite*
  store %struct.its_ite* %94, %struct.its_ite** %11, align 8
  %95 = load %struct.its_ite*, %struct.its_ite** %11, align 8
  %96 = bitcast %struct.its_ite* %95 to %struct.vgic_irq*
  %97 = call i64 @IS_ERR(%struct.vgic_irq* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load %struct.its_collection*, %struct.its_collection** %15, align 8
  %101 = icmp ne %struct.its_collection* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @vgic_its_free_collection(%struct.vgic_its* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.its_ite*, %struct.its_ite** %11, align 8
  %108 = bitcast %struct.its_ite* %107 to %struct.vgic_irq*
  %109 = call i32 @PTR_ERR(%struct.vgic_irq* %108)
  store i32 %109, i32* %4, align 4
  br label %147

110:                                              ; preds = %89
  %111 = load %struct.its_collection*, %struct.its_collection** %14, align 8
  %112 = call i64 @its_is_collection_mapped(%struct.its_collection* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.kvm*, %struct.kvm** %5, align 8
  %116 = load %struct.its_collection*, %struct.its_collection** %14, align 8
  %117 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %115, i32 %118)
  store %struct.kvm_vcpu* %119, %struct.kvm_vcpu** %12, align 8
  br label %120

120:                                              ; preds = %114, %110
  %121 = load %struct.kvm*, %struct.kvm** %5, align 8
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %124 = call %struct.vgic_irq* @vgic_add_lpi(%struct.kvm* %121, i32 %122, %struct.kvm_vcpu* %123)
  store %struct.vgic_irq* %124, %struct.vgic_irq** %16, align 8
  %125 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %126 = call i64 @IS_ERR(%struct.vgic_irq* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %120
  %129 = load %struct.its_collection*, %struct.its_collection** %15, align 8
  %130 = icmp ne %struct.its_collection* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @vgic_its_free_collection(%struct.vgic_its* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load %struct.kvm*, %struct.kvm** %5, align 8
  %137 = load %struct.its_ite*, %struct.its_ite** %11, align 8
  %138 = bitcast %struct.its_ite* %137 to %struct.vgic_irq*
  %139 = call i32 @its_free_ite(%struct.kvm* %136, %struct.vgic_irq* %138)
  %140 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %141 = call i32 @PTR_ERR(%struct.vgic_irq* %140)
  store i32 %141, i32* %4, align 4
  br label %147

142:                                              ; preds = %120
  %143 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %144 = bitcast %struct.vgic_irq* %143 to %struct.its_ite*
  %145 = load %struct.its_ite*, %struct.its_ite** %11, align 8
  %146 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %145, i32 0, i32 0
  store %struct.its_ite* %144, %struct.its_ite** %146, align 8
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %135, %106, %85, %72, %64, %39, %30
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @its_cmd_get_deviceid(i32*) #1

declare dso_local i32 @its_cmd_get_id(i32*) #1

declare dso_local i32 @its_cmd_get_collection(i32*) #1

declare dso_local %struct.its_device* @find_its_device(%struct.vgic_its*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @its_cmd_get_command(i32*) #1

declare dso_local i32 @its_cmd_get_physical_id(i32*) #1

declare dso_local i32 @max_lpis_propbaser(i32) #1

declare dso_local i64 @find_ite(%struct.vgic_its*, i32, i32) #1

declare dso_local %struct.its_collection* @find_collection(%struct.vgic_its*, i32) #1

declare dso_local i32 @vgic_its_alloc_collection(%struct.vgic_its*, %struct.its_collection**, i32) #1

declare dso_local %struct.vgic_irq* @vgic_its_alloc_ite(%struct.its_device*, %struct.its_collection*, i32) #1

declare dso_local i64 @IS_ERR(%struct.vgic_irq*) #1

declare dso_local i32 @vgic_its_free_collection(%struct.vgic_its*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.vgic_irq*) #1

declare dso_local i64 @its_is_collection_mapped(%struct.its_collection*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local %struct.vgic_irq* @vgic_add_lpi(%struct.kvm*, i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @its_free_ite(%struct.kvm*, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
