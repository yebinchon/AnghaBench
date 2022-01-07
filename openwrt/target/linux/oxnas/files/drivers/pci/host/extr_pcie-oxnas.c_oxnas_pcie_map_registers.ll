; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_map_registers.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_map_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.oxnas_pcie = type { i8*, i8*, i32*, i8*, i8* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to parse base register space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to map base register space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to parse inbound register space\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to map inbound register space\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to probe phy\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"phy not attached\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"plxtech,pcie-outbound-offset\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"failed to parse outbound register offset\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"plxtech,pcie-ctrl-offset\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"failed to parse pcie-ctrl register offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*, %struct.oxnas_pcie*)* @oxnas_pcie_map_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_map_registers(%struct.platform_device* %0, %struct.device_node* %1, %struct.oxnas_pcie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.oxnas_pcie*, align 8
  %8 = alloca %struct.resource, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.oxnas_pcie* %2, %struct.oxnas_pcie** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_address_to_resource(%struct.device_node* %12, i32 0, %struct.resource* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i8* @devm_ioremap_resource(i32* %24, %struct.resource* %8)
  %26 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %27 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %29 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %126

38:                                               ; preds = %22
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_address_to_resource(%struct.device_node* %39, i32 1, %struct.resource* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %126

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i8* @devm_ioremap_resource(i32* %51, %struct.resource* %8)
  %53 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %54 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %56 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %126

65:                                               ; preds = %49
  %66 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = call i32* @devm_of_phy_get(i32* %67, %struct.device_node* %68, i32* null)
  %70 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %71 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %73 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @IS_ERR(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %65
  %78 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %79 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  %82 = load i32, i32* @EPROBE_DEFER, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %90 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @PTR_ERR(i32* %91)
  store i32 %92, i32* %4, align 4
  br label %126

93:                                               ; preds = %77
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %98 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %97, i32 0, i32 2
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %93, %65
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = call i64 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8** %10)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %126

109:                                              ; preds = %99
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %112 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.device_node*, %struct.device_node** %6, align 8
  %114 = call i64 @of_property_read_u32(%struct.device_node* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %11)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %126

122:                                              ; preds = %109
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %7, align 8
  %125 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %116, %103, %85, %59, %43, %32, %16
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32* @devm_of_phy_get(i32*, %struct.device_node*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
