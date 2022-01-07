; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt753x_sw_id = type { i32 (%struct.gsw_mt753x.0*)*, i32 (%struct.gsw_mt753x.1*)*, i32, i32 (%struct.gsw_mt753x.2*, %struct.chip_rev*)* }
%struct.gsw_mt753x.0 = type opaque
%struct.gsw_mt753x.1 = type opaque
%struct.gsw_mt753x.2 = type opaque
%struct.chip_rev = type opaque
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gsw_mt753x = type { i32, i64, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, %struct.mii_bus* }
%struct.mii_bus = type { i32 }
%struct.chip_rev.3 = type { i32, i32 }
%struct.mt753x_mapping = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mediatek,mdio\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mediatek,smi-addr\00", align 1
@MT753X_DFL_SMI_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LAN/WAN VLAN setting=%s\0A\00", align 1
@mt753x_sw_ids = common dso_local global %struct.mt753x_sw_id** null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Switch is MediaTek %s rev %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No mt753x switch found\0A\00", align 1
@mt753x_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to request irq %d\0A\00", align 1
@mt753x_irq_worker = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"mediatek,phy-poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt753x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca %struct.mt753x_sw_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mii_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chip_rev.3, align 4
  %11 = alloca %struct.mt753x_mapping*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %236

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call %struct.mii_bus* @of_mdio_find_bus(%struct.device_node* %27)
  store %struct.mii_bus* %28, %struct.mii_bus** %8, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %30 = icmp ne %struct.mii_bus* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %236

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.gsw_mt753x* @devm_kzalloc(%struct.TYPE_7__* %36, i32 56, i32 %37)
  store %struct.gsw_mt753x* %38, %struct.gsw_mt753x** %4, align 8
  %39 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %40 = icmp ne %struct.gsw_mt753x* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %236

44:                                               ; preds = %34
  %45 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %47 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %46, i32 0, i32 9
  store %struct.mii_bus* %45, %struct.mii_bus** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %51 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %50, i32 0, i32 2
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %53 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %52, i32 0, i32 8
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %56 = call i64 @mt753x_hw_reset(%struct.gsw_mt753x* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %230

59:                                               ; preds = %44
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %62 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %61, i32 0, i32 7
  %63 = call i64 @of_property_read_u32(%struct.device_node* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @MT753X_DFL_SMI_ADDR, align 4
  %67 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %68 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = call %struct.mt753x_mapping* @mt753x_find_mapping(%struct.device_node* %70)
  store %struct.mt753x_mapping* %71, %struct.mt753x_mapping** %11, align 8
  %72 = load %struct.mt753x_mapping*, %struct.mt753x_mapping** %11, align 8
  %73 = icmp ne %struct.mt753x_mapping* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %76 = load %struct.mt753x_mapping*, %struct.mt753x_mapping** %11, align 8
  %77 = call i32 @mt753x_apply_mapping(%struct.gsw_mt753x* %75, %struct.mt753x_mapping* %76)
  %78 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %79 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %81 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.mt753x_mapping*, %struct.mt753x_mapping** %11, align 8
  %84 = getelementptr inbounds %struct.mt753x_mapping, %struct.mt753x_mapping* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %89 = call i32 @mt753x_load_port_cfg(%struct.gsw_mt753x* %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %143, %87
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.mt753x_sw_id**, %struct.mt753x_sw_id*** @mt753x_sw_ids, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.mt753x_sw_id** %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %90
  %96 = load %struct.mt753x_sw_id**, %struct.mt753x_sw_id*** @mt753x_sw_ids, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %96, i64 %98
  %100 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %99, align 8
  %101 = getelementptr inbounds %struct.mt753x_sw_id, %struct.mt753x_sw_id* %100, i32 0, i32 3
  %102 = load i32 (%struct.gsw_mt753x.2*, %struct.chip_rev*)*, i32 (%struct.gsw_mt753x.2*, %struct.chip_rev*)** %101, align 8
  %103 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %104 = bitcast %struct.gsw_mt753x* %103 to %struct.gsw_mt753x.2*
  %105 = bitcast %struct.chip_rev.3* %10 to %struct.chip_rev*
  %106 = call i32 %102(%struct.gsw_mt753x.2* %104, %struct.chip_rev* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %95
  %109 = load %struct.mt753x_sw_id**, %struct.mt753x_sw_id*** @mt753x_sw_ids, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %109, i64 %111
  %113 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %112, align 8
  store %struct.mt753x_sw_id* %113, %struct.mt753x_sw_id** %5, align 8
  %114 = getelementptr inbounds %struct.chip_rev.3, %struct.chip_rev.3* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %117 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %5, align 8
  %119 = getelementptr inbounds %struct.mt753x_sw_id, %struct.mt753x_sw_id* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %122 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %124 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %127 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.chip_rev.3, %struct.chip_rev.3* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %5, align 8
  %133 = getelementptr inbounds %struct.mt753x_sw_id, %struct.mt753x_sw_id* %132, i32 0, i32 0
  %134 = load i32 (%struct.gsw_mt753x.0*)*, i32 (%struct.gsw_mt753x.0*)** %133, align 8
  %135 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %136 = bitcast %struct.gsw_mt753x* %135 to %struct.gsw_mt753x.0*
  %137 = call i32 %134(%struct.gsw_mt753x.0* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %108
  br label %230

141:                                              ; preds = %108
  br label %146

142:                                              ; preds = %95
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %90

146:                                              ; preds = %141, %90
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.mt753x_sw_id**, %struct.mt753x_sw_id*** @mt753x_sw_ids, align 8
  %149 = call i32 @ARRAY_SIZE(%struct.mt753x_sw_id** %148)
  %150 = icmp sge i32 %147, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %153 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %230

156:                                              ; preds = %146
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = call i64 @platform_get_irq(%struct.platform_device* %157, i32 0)
  %159 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %160 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %162 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sge i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %156
  %166 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %167 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %170 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @mt753x_irq_handler, align 4
  %173 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %174 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i32 @dev_name(%struct.TYPE_7__* %175)
  %177 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %178 = call i32 @devm_request_irq(%struct.TYPE_7__* %168, i64 %171, i32 %172, i32 0, i32 %176, %struct.gsw_mt753x* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %165
  %182 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %183 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %186 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %187)
  br label %230

189:                                              ; preds = %165
  %190 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %191 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %190, i32 0, i32 4
  %192 = load i32, i32* @mt753x_irq_worker, align 4
  %193 = call i32 @INIT_WORK(i32* %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %156
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %197 = call i32 @platform_set_drvdata(%struct.platform_device* %195, %struct.gsw_mt753x* %196)
  %198 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %199 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %198, i32 0, i32 2
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load %struct.device_node*, %struct.device_node** %201, align 8
  %203 = call i32 @of_property_read_bool(%struct.device_node* %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %204 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %205 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  %206 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %207 = call i32 @mt753x_add_gsw(%struct.gsw_mt753x* %206)
  %208 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %209 = call i32 @mt753x_swconfig_init(%struct.gsw_mt753x* %208)
  %210 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %5, align 8
  %211 = getelementptr inbounds %struct.mt753x_sw_id, %struct.mt753x_sw_id* %210, i32 0, i32 1
  %212 = load i32 (%struct.gsw_mt753x.1*)*, i32 (%struct.gsw_mt753x.1*)** %211, align 8
  %213 = icmp ne i32 (%struct.gsw_mt753x.1*)* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %194
  %215 = load %struct.mt753x_sw_id*, %struct.mt753x_sw_id** %5, align 8
  %216 = getelementptr inbounds %struct.mt753x_sw_id, %struct.mt753x_sw_id* %215, i32 0, i32 1
  %217 = load i32 (%struct.gsw_mt753x.1*)*, i32 (%struct.gsw_mt753x.1*)** %216, align 8
  %218 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %219 = bitcast %struct.gsw_mt753x* %218 to %struct.gsw_mt753x.1*
  %220 = call i32 %217(%struct.gsw_mt753x.1* %219)
  br label %221

221:                                              ; preds = %214, %194
  %222 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %223 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp sge i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %228 = call i32 @mt753x_irq_enable(%struct.gsw_mt753x* %227)
  br label %229

229:                                              ; preds = %226, %221
  store i32 0, i32* %2, align 4
  br label %236

230:                                              ; preds = %181, %151, %140, %58
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %234 = call i32 @devm_kfree(%struct.TYPE_7__* %232, %struct.gsw_mt753x* %233)
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %230, %229, %41, %31, %23
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.mii_bus* @of_mdio_find_bus(%struct.device_node*) #1

declare dso_local %struct.gsw_mt753x* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @mt753x_hw_reset(%struct.gsw_mt753x*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.mt753x_mapping* @mt753x_find_mapping(%struct.device_node*) #1

declare dso_local i32 @mt753x_apply_mapping(%struct.gsw_mt753x*, %struct.mt753x_mapping*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @mt753x_load_port_cfg(%struct.gsw_mt753x*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mt753x_sw_id**) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i64, i32, i32, i32, %struct.gsw_mt753x*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gsw_mt753x*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @mt753x_add_gsw(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt753x_swconfig_init(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt753x_irq_enable(%struct.gsw_mt753x*) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_7__*, %struct.gsw_mt753x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
