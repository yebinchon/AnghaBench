; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no memory for DMA buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"buf:%p size:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar934x_nfc*, i32)* @ar934x_nfc_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_alloc_buf(%struct.ar934x_nfc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar934x_nfc*, align 8
  %5 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %7 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %11 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %10, i32 0, i32 3
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @dma_alloc_coherent(i32 %8, i32 %9, i32* %11, i32 %12)
  %14 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %15 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %17 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %22 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %30 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %32 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %33 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %36 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nfc_dbg(%struct.ar934x_nfc* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
