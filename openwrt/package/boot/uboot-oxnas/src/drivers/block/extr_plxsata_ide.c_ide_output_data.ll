; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_output_data.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_ide_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disk_present = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"Timed out of wait for DMA channel for SATA device %d to have in-progress clear\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Timed out of wait for SATA device %d to have BUSY clear\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"oxnas_sata_output_data() Wait for ATA no-error timed-out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_output_data(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @disk_present, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_select(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 2
  %20 = call i32 @dma_start_write(i32* %17, i32 %19)
  %21 = call i32 @udelay(i32 1000)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @wait_dma_not_busy(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @wait_not_busy(i32 %29, i32 30)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @wait_no_error(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %13, %39, %35
  ret void
}

declare dso_local i32 @device_select(i32) #1

declare dso_local i32 @dma_start_write(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_dma_not_busy(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @wait_not_busy(i32, i32) #1

declare dso_local i32 @wait_no_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
