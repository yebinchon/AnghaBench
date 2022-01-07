; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_do_rw_command.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_do_rw_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"len=%d > buf_size=%d\00", align 1
@AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@AR934X_NFC_DMA_CTRL_DMA_DIR_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@AR934X_NFC_DMA_CTRL_DMA_START = common dso_local global i32 0, align 4
@AR934X_NFC_DMA_CTRL_DMA_BURST_3 = common dso_local global i32 0, align 4
@AR934X_NFC_DMA_CTRL_DMA_BURST_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_INPUT_SEL_DMA = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_ADDR_SEL_0 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_INT_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s a0:%08x a1:%08x len:%x cmd:%08x dma:%08x ctrl:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@AR934X_NFC_REG_INT_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ADDR0_0 = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ADDR0_1 = common dso_local global i32 0, align 4
@AR934X_NFC_REG_DMA_ADDR = common dso_local global i32 0, align 4
@AR934X_NFC_REG_DMA_COUNT = common dso_local global i32 0, align 4
@AR934X_NFC_REG_DATA_SIZE = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_DMA_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ECC_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ECC_OFFSET = common dso_local global i32 0, align 4
@AR934X_NFC_REG_INT_MASK = common dso_local global i32 0, align 4
@AR934X_NFC_IRQ_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s operation stuck at page %d\0A\00", align 1
@AR934X_NFC_DMA_RETRIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%s operation failed on page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar934x_nfc*, i32, i32, i32, i32, i32, i32)* @ar934x_nfc_do_rw_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_do_rw_command(%struct.ar934x_nfc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ar934x_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, 3
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %26 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %7
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %34 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %38 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %32, %7
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE, align 4
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %46, i32* %18, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @AR934X_NFC_DMA_CTRL_DMA_DIR_READ, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ar934x_nfc_get_addr(%struct.ar934x_nfc* %51, i32 %52, i32 %53, i32* %15, i32* %16)
  %55 = load i32, i32* @AR934X_NFC_DMA_CTRL_DMA_START, align 4
  %56 = load i32, i32* @AR934X_NFC_DMA_CTRL_DMA_BURST_3, align 4
  %57 = load i32, i32* @AR934X_NFC_DMA_CTRL_DMA_BURST_S, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* %17, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* @AR934X_NFC_CMD_INPUT_SEL_DMA, align 4
  %63 = load i32, i32* @AR934X_NFC_CMD_ADDR_SEL_0, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @AR934X_NFC_CTRL_INT_EN, align 4
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @nfc_dbg(%struct.ar934x_nfc* %70, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %163, %50
  %83 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %84 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %85 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %83, i32 %84, i32 0)
  %86 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %87 = load i32, i32* @AR934X_NFC_REG_ADDR0_0, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %86, i32 %87, i32 %88)
  %90 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %91 = load i32, i32* @AR934X_NFC_REG_ADDR0_1, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %90, i32 %91, i32 %92)
  %94 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %95 = load i32, i32* @AR934X_NFC_REG_DMA_ADDR, align 4
  %96 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %97 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %94, i32 %95, i32 %98)
  %100 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %101 = load i32, i32* @AR934X_NFC_REG_DMA_COUNT, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %100, i32 %101, i32 %102)
  %104 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %105 = load i32, i32* @AR934X_NFC_REG_DATA_SIZE, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %104, i32 %105, i32 %106)
  %108 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %109 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %108, i32 %109, i32 %110)
  %112 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %113 = load i32, i32* @AR934X_NFC_REG_DMA_CTRL, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %112, i32 %113, i32 %114)
  %116 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %117 = load i32, i32* @AR934X_NFC_REG_ECC_CTRL, align 4
  %118 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %119 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %116, i32 %117, i32 %120)
  %122 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %123 = load i32, i32* @AR934X_NFC_REG_ECC_OFFSET, align 4
  %124 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %125 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %122, i32 %123, i32 %126)
  %128 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %129 = call i64 @ar934x_nfc_use_irq(%struct.ar934x_nfc* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %82
  %132 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %133 = load i32, i32* @AR934X_NFC_REG_INT_MASK, align 4
  %134 = load i32, i32* @AR934X_NFC_IRQ_MASK, align 4
  %135 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %132, i32 %133, i32 %134)
  %136 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %137 = load i32, i32* @AR934X_NFC_REG_INT_MASK, align 4
  %138 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %82
  %140 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc* %140, i32 %141)
  %143 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %144 = call i32 @ar934x_nfc_wait_done(%struct.ar934x_nfc* %143)
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %139
  %148 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %149 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @dev_dbg(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %154, i32 %155)
  %157 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %158 = call i32 @ar934x_nfc_restart(%struct.ar934x_nfc* %157)
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* @AR934X_NFC_DMA_RETRIES, align 4
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %147
  br label %82

164:                                              ; preds = %147
  %165 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %166 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %171, i32 %172)
  br label %174

174:                                              ; preds = %164, %139
  %175 = load i32, i32* %19, align 4
  ret i32 %175
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ar934x_nfc_get_addr(%struct.ar934x_nfc*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i64 @ar934x_nfc_use_irq(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_rr(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_wait_done(%struct.ar934x_nfc*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @ar934x_nfc_restart(%struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
