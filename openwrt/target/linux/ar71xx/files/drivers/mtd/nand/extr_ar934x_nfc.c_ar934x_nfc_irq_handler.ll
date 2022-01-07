; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i32, i32, i32 }

@AR934X_NFC_REG_INT_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_REG_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"got IRQ, status:%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ar934x_nfc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ar934x_nfc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ar934x_nfc*
  store %struct.ar934x_nfc* %8, %struct.ar934x_nfc** %5, align 8
  %9 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %10 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %11 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %13 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %14 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %12, i32 %13, i32 0)
  %15 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %16 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %17 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %15, i32 %16)
  %18 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %19 = load i32, i32* @AR934X_NFC_REG_INT_MASK, align 4
  %20 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nfc_dbg(%struct.ar934x_nfc* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %31 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %33 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %35 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %34, i32 0, i32 3
  %36 = call i32 @wake_up(i32* %35)
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %39 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %44 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %47 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_warn(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @ar934x_nfc_rr(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
