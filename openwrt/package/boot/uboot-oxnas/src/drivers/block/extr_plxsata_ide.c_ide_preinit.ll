; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_preinit.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SYS_IDE_MAXDEVICE = common dso_local global i32 0, align 4
@disk_present = common dso_local global i32* null, align 8
@SYS_CTRL_RST_SATA = common dso_local global i32 0, align 4
@SYS_CTRL_RST_SATA_LINK = common dso_local global i32 0, align 4
@SYS_CTRL_RST_SATA_PHY = common dso_local global i32 0, align 4
@SYS_CTRL_RST_SGDMA = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_SATA = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_DMA = common dso_local global i32 0, align 4
@SATA_HOST_REGS_BASE = common dso_local global i64 0, align 8
@SATA_INT_ENABLE_CLR_OFF = common dso_local global i32 0, align 4
@SATA_INT_CLR_OFF = common dso_local global i32 0, align 4
@sata_regs_base = common dso_local global i64** null, align 8
@ATA_PORT_NSECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SATA PHY not ready for device %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No FIS received from device %d\0A\00", align 1
@SATA_SCR_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Timed out of wait for SATA device %d to have BUSY clear\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"No SATA device %d found, PHY status = 0x%08x\0A\00", align 1
@SATA_DRIVE_CONTROL_OFF = common dso_local global i32 0, align 4
@SATA_SCR_ERROR = common dso_local global i32 0, align 4
@SATA_SCTL_CLR_ERR = common dso_local global i64 0, align 8
@SATA_CONTROL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_preinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @CONFIG_SYS_IDE_MAXDEVICE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** @disk_present, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* @SYS_CTRL_RST_SATA, align 4
  %20 = call i32 @reset_block(i32 %19, i32 1)
  %21 = load i32, i32* @SYS_CTRL_RST_SATA_LINK, align 4
  %22 = call i32 @reset_block(i32 %21, i32 1)
  %23 = load i32, i32* @SYS_CTRL_RST_SATA_PHY, align 4
  %24 = call i32 @reset_block(i32 %23, i32 1)
  %25 = load i32, i32* @SYS_CTRL_RST_SGDMA, align 4
  %26 = call i32 @reset_block(i32 %25, i32 1)
  %27 = load i32, i32* @SYS_CTRL_CLK_SATA, align 4
  %28 = call i32 @enable_clock(i32 %27)
  %29 = load i32, i32* @SYS_CTRL_CLK_DMA, align 4
  %30 = call i32 @enable_clock(i32 %29)
  %31 = call i32 @udelay(i32 5000)
  %32 = load i32, i32* @SYS_CTRL_RST_SATA_PHY, align 4
  %33 = call i32 @reset_block(i32 %32, i32 0)
  %34 = call i32 @udelay(i32 50)
  %35 = load i32, i32* @SYS_CTRL_RST_SATA, align 4
  %36 = call i32 @reset_block(i32 %35, i32 0)
  %37 = load i32, i32* @SYS_CTRL_RST_SATA_LINK, align 4
  %38 = call i32 @reset_block(i32 %37, i32 0)
  %39 = call i32 @udelay(i32 50)
  %40 = load i32, i32* @SYS_CTRL_RST_SGDMA, align 4
  %41 = call i32 @reset_block(i32 %40, i32 0)
  %42 = call i32 @udelay(i32 100)
  %43 = call i32 (...) @workaround5458()
  %44 = call i32 @udelay(i32 10000)
  %45 = load i64, i64* @SATA_HOST_REGS_BASE, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = load i32, i32* @SATA_INT_ENABLE_CLR_OFF, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 -1, i64* %49, align 8
  %50 = load i64, i64* @SATA_HOST_REGS_BASE, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i32, i32* @SATA_INT_CLR_OFF, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 -1, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %128, %18
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @CONFIG_SYS_IDE_MAXDEVICE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %131

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %60 = load i64**, i64*** @sata_regs_base, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* @SATA_INT_ENABLE_CLR_OFF, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 -1, i64* %67, align 8
  %68 = load i64**, i64*** @sata_regs_base, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* @SATA_INT_CLR_OFF, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 -1, i64* %75, align 8
  br label %76

76:                                               ; preds = %118, %59
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ATA_PORT_NSECT, align 4
  %79 = call i32 @ide_outb(i32 %77, i32 %78, i32 0)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @phy_reset(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %122

86:                                               ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @wait_FIS(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %117

93:                                               ; preds = %86
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SATA_SCR_STATUS, align 4
  %96 = call i32 @scr_read(i32 %94, i32 %95)
  %97 = and i32 %96, 15
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @wait_not_busy(i32 %100, i32 30)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %116

110:                                              ; preds = %93
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @SATA_SCR_STATUS, align 4
  %114 = call i32 @scr_read(i32 %112, i32 %113)
  %115 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %109
  br label %122

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %5, align 4
  %121 = icmp ne i32 %119, 0
  br i1 %121, label %76, label %122

122:                                              ; preds = %118, %116, %83
  %123 = load i32, i32* %4, align 4
  %124 = load i32*, i32** @disk_present, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %55

131:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %175, %131
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @CONFIG_SYS_IDE_MAXDEVICE, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %132
  %137 = load i32*, i32** @disk_present, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %136
  %144 = load i64**, i64*** @sata_regs_base, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64*, i64** %144, i64 %146
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* @SATA_DRIVE_CONTROL_OFF, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @SATA_SCR_ERROR, align 4
  %154 = call i32 @scr_write(i32 %152, i32 %153, i32 -1)
  %155 = load i64, i64* @SATA_SCTL_CLR_ERR, align 8
  %156 = load i64**, i64*** @sata_regs_base, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64*, i64** %156, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* @SATA_CONTROL_OFF, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %155
  store i64 %165, i64* %163, align 8
  %166 = load i64**, i64*** @sata_regs_base, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* @SATA_INT_CLR_OFF, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  store i64 -1, i64* %173, align 8
  br label %174

174:                                              ; preds = %143, %136
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %132

178:                                              ; preds = %132
  %179 = load i32, i32* %1, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  ret i32 %182
}

declare dso_local i32 @reset_block(i32, i32) #1

declare dso_local i32 @enable_clock(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @workaround5458(...) #1

declare dso_local i32 @ide_outb(i32, i32, i32) #1

declare dso_local i32 @phy_reset(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @wait_FIS(i32) #1

declare dso_local i32 @scr_read(i32, i32) #1

declare dso_local i64 @wait_not_busy(i32, i32) #1

declare dso_local i32 @scr_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
