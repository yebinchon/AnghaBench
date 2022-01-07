; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.switch_dev = type { i8*, i8*, i32*, i32, i32, i32, %struct.device_node* }
%struct.rt305x_esw = type { i32, i32, i32, i32, i32, i32, %struct.switch_dev, i32, i32, %struct.TYPE_5__* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mediatek,portmap\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mediatek,portdisable\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ralink,fct2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ralink,fpa2\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"mediatek,led_polarity\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rt305x-esw\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rt305x\00", align 1
@RT305X_ESW_PORT6 = common dso_local global i32 0, align 4
@RT305X_ESW_NUM_PORTS = common dso_local global i32 0, align 4
@RT305X_ESW_NUM_VIDS = common dso_local global i32 0, align 4
@esw_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"register_switch failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ralink,rgmii\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"RGMII mode, not exporting switch device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@esw_interrupt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"esw\00", align 1
@RT305X_ESW_PORT_ST_CHG = common dso_local global i32 0, align 4
@RT305X_ESW_REG_ISR = common dso_local global i32 0, align 4
@RT305X_ESW_REG_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.switch_dev*, align 8
  %10 = alloca %struct.rt305x_esw*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rt305x_esw* @devm_kzalloc(%struct.TYPE_5__* %20, i32 88, i32 %21)
  store %struct.rt305x_esw* %22, %struct.rt305x_esw** %10, align 8
  %23 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %24 = icmp ne %struct.rt305x_esw* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %193

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %32 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %31, i32 0, i32 9
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i32 @irq_of_parse_and_map(%struct.device_node* %33, i32 0)
  %35 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %36 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %38, %struct.resource* %39)
  %41 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %42 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %44 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %28
  %49 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %50 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %193

53:                                               ; preds = %28
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32* @of_get_property(%struct.device_node* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %63 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32* @of_get_property(%struct.device_node* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %74 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i32* @of_get_property(%struct.device_node* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %85 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = call i32* @of_get_property(%struct.device_node* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %88, i32** %8, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %96 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.device_node*, %struct.device_node** %5, align 8
  %99 = call i32* @of_get_property(%struct.device_node* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  %106 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %107 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %110 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %109, i32 0, i32 6
  store %struct.switch_dev* %110, %struct.switch_dev** %9, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.device_node*, %struct.device_node** %113, align 8
  %115 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %116 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %115, i32 0, i32 6
  store %struct.device_node* %114, %struct.device_node** %116, align 8
  %117 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %118 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %118, align 8
  %119 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %120 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %119, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %120, align 8
  %121 = load i32, i32* @RT305X_ESW_PORT6, align 4
  %122 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %123 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @RT305X_ESW_NUM_PORTS, align 4
  %125 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %126 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @RT305X_ESW_NUM_VIDS, align 4
  %128 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %129 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %131 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %130, i32 0, i32 2
  store i32* @esw_ops, i32** %131, align 8
  %132 = load %struct.switch_dev*, %struct.switch_dev** %9, align 8
  %133 = call i32 @register_switch(%struct.switch_dev* %132, i32* null)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %108
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @dev_err(%struct.TYPE_5__* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %2, align 4
  br label %193

141:                                              ; preds = %108
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.rt305x_esw* %143)
  %145 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %146 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %145, i32 0, i32 7
  %147 = call i32 @spin_lock_init(i32* %146)
  %148 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %149 = call i32 @esw_hw_init(%struct.rt305x_esw* %148)
  %150 = load %struct.device_node*, %struct.device_node** %5, align 8
  %151 = call i32* @of_get_property(%struct.device_node* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* null)
  store i32* %151, i32** %8, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %141
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @be32_to_cpu(i32 %156)
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @dev_err(%struct.TYPE_5__* %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %163 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %164 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %163, i32 0, i32 6
  %165 = call i32 @unregister_switch(%struct.switch_dev* %164)
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %166, %struct.rt305x_esw* null)
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %193

170:                                              ; preds = %154, %141
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %174 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @esw_interrupt, align 4
  %177 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %178 = call i32 @devm_request_irq(%struct.TYPE_5__* %172, i32 %175, i32 %176, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.rt305x_esw* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %170
  %182 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %183 = load i32, i32* @RT305X_ESW_PORT_ST_CHG, align 4
  %184 = load i32, i32* @RT305X_ESW_REG_ISR, align 4
  %185 = call i32 @esw_w32(%struct.rt305x_esw* %182, i32 %183, i32 %184)
  %186 = load %struct.rt305x_esw*, %struct.rt305x_esw** %10, align 8
  %187 = load i32, i32* @RT305X_ESW_PORT_ST_CHG, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* @RT305X_ESW_REG_IMR, align 4
  %190 = call i32 @esw_w32(%struct.rt305x_esw* %186, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %181, %170
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %159, %136, %48, %25
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.rt305x_esw* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @register_switch(%struct.switch_dev*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rt305x_esw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @esw_hw_init(%struct.rt305x_esw*) #1

declare dso_local i32 @unregister_switch(%struct.switch_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_5__*, i32, i32, i32, i8*, %struct.rt305x_esw*) #1

declare dso_local i32 @esw_w32(%struct.rt305x_esw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
