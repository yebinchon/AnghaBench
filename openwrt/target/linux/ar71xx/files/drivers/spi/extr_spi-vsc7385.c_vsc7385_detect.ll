; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_detect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc7385 = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.spi_device = type { i32 }

@VSC73XX_BLOCK_SYSTEM = common dso_local global i32 0, align 4
@VSC73XX_ICPU_MBOX_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to read mailbox, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"assert chip reset\0A\00", align 1
@VSC73XX_ICPU_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to read chip id, err=%d\0A\00", align 1
@VSC73XX_ICPU_CHIPID_ID_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_ICPU_CHIPID_ID_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unsupported chip, id=%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VSC73XX_ICPU_CHIPID_REV_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_ICPU_CHIPID_REV_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"VSC%04X (rev. %d) switch found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc7385*)* @vsc7385_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc7385_detect(%struct.vsc7385* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc7385*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vsc7385* %0, %struct.vsc7385** %3, align 8
  %9 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %10 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %9, i32 0, i32 1
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %4, align 8
  %12 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %13 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %14 = load i32, i32* @VSC73XX_ICPU_MBOX_VAL, align 4
  %15 = call i32 @vsc7385_read(%struct.vsc7385* %12, i32 %13, i32 0, i32 %14, i32* %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %32 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = icmp ne i32 (...)* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %39 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  br label %44

44:                                               ; preds = %37, %27
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %47 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %48 = load i32, i32* @VSC73XX_ICPU_CHIPID, align 4
  %49 = call i32 @vsc7385_read(%struct.vsc7385* %46, i32 %47, i32 0, i32 %48, i32* %5)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %84

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VSC73XX_ICPU_CHIPID_ID_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @VSC73XX_ICPU_CHIPID_ID_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %66 [
    i32 129, label %65
    i32 128, label %65
  ]

65:                                               ; preds = %58, %58
  br label %73

66:                                               ; preds = %58
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %84

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @VSC73XX_ICPU_CHIPID_REV_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, i32* @VSC73XX_ICPU_CHIPID_REV_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %73, %66, %52, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @vsc7385_read(%struct.vsc7385*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
