; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.oxnas_pcie = type { i32, i64, i32, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"oxsemi,ox820-sys-ctrl\00", align 1
@GPIOF_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot request gpio pin %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot map registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.oxnas_pcie*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.oxnas_pcie* @devm_kzalloc(%struct.TYPE_6__* %12, i32 32, i32 %13)
  store %struct.oxnas_pcie* %14, %struct.oxnas_pcie** %4, align 8
  %15 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %16 = icmp ne %struct.oxnas_pcie* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %135

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %23 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %22, i32 0, i32 4
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %31 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %33 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %39 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %135

42:                                               ; preds = %20
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call i32 @oxnas_pcie_init_res(%struct.platform_device* %43, %struct.oxnas_pcie* %44, %struct.device_node* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %135

51:                                               ; preds = %42
  %52 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %53 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %58 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GPIOF_DIR_IN, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_name(%struct.TYPE_6__* %62)
  %64 = call i32 @gpio_request_one(i64 %59, i32 %60, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %71 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %135

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %80 = call i32 @oxnas_pcie_map_registers(%struct.platform_device* %77, %struct.device_node* %78, %struct.oxnas_pcie* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %123

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %90 = call i32 @oxnas_pcie_shared_init(%struct.platform_device* %88, %struct.oxnas_pcie* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %123

94:                                               ; preds = %87
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %97 = call i32 @oxnas_pcie_init_hw(%struct.platform_device* %95, %struct.oxnas_pcie* %96)
  %98 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %99 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %94
  %103 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %104 = call i64 @oxnas_pcie_link_up(%struct.oxnas_pcie* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %108 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_info(%struct.TYPE_6__* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %118

112:                                              ; preds = %102, %94
  %113 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %114 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_info(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %122 = call i32 @oxnas_pcie_enable(%struct.TYPE_6__* %120, %struct.oxnas_pcie* %121)
  store i32 0, i32* %2, align 4
  br label %135

123:                                              ; preds = %93, %83
  %124 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %125 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %130 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @gpio_free(i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %118, %67, %49, %37, %17
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.oxnas_pcie* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @oxnas_pcie_init_res(%struct.platform_device*, %struct.oxnas_pcie*, %struct.device_node*) #1

declare dso_local i32 @gpio_request_one(i64, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @oxnas_pcie_map_registers(%struct.platform_device*, %struct.device_node*, %struct.oxnas_pcie*) #1

declare dso_local i32 @oxnas_pcie_shared_init(%struct.platform_device*, %struct.oxnas_pcie*) #1

declare dso_local i32 @oxnas_pcie_init_hw(%struct.platform_device*, %struct.oxnas_pcie*) #1

declare dso_local i64 @oxnas_pcie_link_up(%struct.oxnas_pcie*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @oxnas_pcie_enable(%struct.TYPE_6__*, %struct.oxnas_pcie*) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
