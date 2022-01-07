; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.ar934x_nfc = type { i64, %struct.nand_chip, i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.resource = type { i32 }
%struct.mtd_info = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@ar934x_nfc_dma_mask = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to allocate driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no IRQ resource specified\0A\00", align 1
@ar934x_nfc_irq_handler = common dso_local global i32 0, align 4
@AR934X_NFC_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"devm_request_irq failed, err:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to get reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"qca,nand-swap-dma\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ar934x_nfc_dev_ready = common dso_local global i32 0, align 4
@ar934x_nfc_cmdfunc = common dso_local global i32 0, align 4
@ar934x_nfc_cmd_ctrl = common dso_local global i32 0, align 4
@ar934x_nfc_read_byte = common dso_local global i32 0, align 4
@ar934x_nfc_write_buf = common dso_local global i32 0, align 4
@ar934x_nfc_read_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@AR934X_NFC_ID_BUF_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"hardware init failed, err:%d\0A\00", align 1
@ar934x_nfc_controller_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"nand_scan failed, err:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"unable to register mtd, err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ar934x_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ar934x_nfc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* @ar934x_nfc_dma_mask, i32** %11, align 8
  %12 = call i32 @DMA_BIT_MASK(i32 32)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %223

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ar934x_nfc* @devm_kzalloc(%struct.TYPE_12__* %29, i32 88, i32 %30)
  store %struct.ar934x_nfc* %31, %struct.ar934x_nfc** %4, align 8
  %32 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %33 = icmp ne %struct.ar934x_nfc* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %223

40:                                               ; preds = %27
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %42, %struct.resource* %43)
  %45 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %46 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %48 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %57 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %223

60:                                               ; preds = %40
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i64 @platform_get_irq(%struct.platform_device* %61, i32 0)
  %63 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %64 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %66 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %223

75:                                               ; preds = %60
  %76 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %77 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %76, i32 0, i32 5
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %82 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ar934x_nfc_irq_handler, align 4
  %85 = load i32, i32* @AR934X_NFC_DRIVER_NAME, align 4
  %86 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %87 = call i32 @devm_request_irq(%struct.TYPE_12__* %80, i64 %83, i32 %84, i32 0, i32 %85, %struct.ar934x_nfc* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %223

96:                                               ; preds = %75
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @devm_reset_control_get(%struct.TYPE_12__* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %101 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %103 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @IS_ERR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %96
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %111 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %112 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %223

115:                                              ; preds = %96
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %119 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %118, i32 0, i32 3
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @of_property_read_bool(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %126 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %128 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %127, i32 0, i32 1
  store %struct.nand_chip* %128, %struct.nand_chip** %7, align 8
  %129 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %130 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %129)
  store %struct.mtd_info* %130, %struct.mtd_info** %6, align 8
  %131 = load i32, i32* @THIS_MODULE, align 4
  %132 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %133 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %137 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %138, align 8
  %139 = load i32, i32* @AR934X_NFC_DRIVER_NAME, align 4
  %140 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %143 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %144 = call i32 @nand_set_controller_data(%struct.nand_chip* %142, %struct.ar934x_nfc* %143)
  %145 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @nand_set_flash_node(%struct.nand_chip* %145, i32 %149)
  %151 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %152 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %151, i32 0, i32 0
  store i32 25, i32* %152, align 8
  %153 = load i32, i32* @ar934x_nfc_dev_ready, align 4
  %154 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %155 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @ar934x_nfc_cmdfunc, align 4
  %157 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %158 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @ar934x_nfc_cmd_ctrl, align 4
  %160 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @ar934x_nfc_read_byte, align 4
  %163 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @ar934x_nfc_write_buf, align 4
  %166 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %167 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @ar934x_nfc_read_buf, align 4
  %169 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %170 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @NAND_ECC_HW, align 4
  %172 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %177 = call i32 @platform_set_drvdata(%struct.platform_device* %175, %struct.ar934x_nfc* %176)
  %178 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %179 = load i32, i32* @AR934X_NFC_ID_BUF_SIZE, align 4
  %180 = call i32 @ar934x_nfc_alloc_buf(%struct.ar934x_nfc* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %115
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %223

185:                                              ; preds = %115
  %186 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %187 = call i32 @ar934x_nfc_hw_init(%struct.ar934x_nfc* %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i32, i32* %8, align 4
  %194 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  br label %219

195:                                              ; preds = %185
  %196 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %197 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i32* @ar934x_nfc_controller_ops, i32** %198, align 8
  %199 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %200 = call i32 @nand_scan(%struct.mtd_info* %199, i32 1)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %205, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %206)
  br label %219

208:                                              ; preds = %195
  %209 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %210 = call i32 @mtd_device_register(%struct.mtd_info* %209, i32* null, i32 0)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %216)
  br label %219

218:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %223

219:                                              ; preds = %213, %203, %190
  %220 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %221 = call i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %218, %183, %107, %90, %69, %52, %34, %21
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.ar934x_nfc* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i64, i32, i32, i32, %struct.ar934x_nfc*) #1

declare dso_local i32 @devm_reset_control_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.ar934x_nfc*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_alloc_buf(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_hw_init(%struct.ar934x_nfc*) #1

declare dso_local i32 @nand_scan(%struct.mtd_info*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
