; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_ReadBlockSwab.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_ReadBlockSwab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFER_SIZE_MCI_DEVICE = common dso_local global i32 0, align 4
@MCI_Device = common dso_local global i32 0, align 4
@AT91C_MCI_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_ReadBlockSwab(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %22, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @BUFFER_SIZE_MCI_DEVICE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  store i8 0, i8* %20, align 1
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %15

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @AT91F_MCI_ReadBlock(i32* @MCI_Device, i32 %26, i32* %27, i32 %28)
  %30 = load i32, i32* @AT91C_MCI_TIMEOUT, align 4
  %31 = call i32 @AT91F_MCIDeviceWaitReady(i32 %30)
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %47, %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @swab32(i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %33

50:                                               ; preds = %33
  ret i32 1
}

declare dso_local i32 @AT91F_MCI_ReadBlock(i32*, i32, i32*, i32) #1

declare dso_local i32 @AT91F_MCIDeviceWaitReady(i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
