; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_write_verify.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_write_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc7385 = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"register write error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc7385*, i32, i32, i32, i32, i32, i32)* @vsc7385_write_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc7385_write_verify(%struct.vsc7385* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vsc7385*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.spi_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vsc7385* %0, %struct.vsc7385** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.vsc7385*, %struct.vsc7385** %9, align 8
  %20 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %19, i32 0, i32 0
  %21 = load %struct.spi_device*, %struct.spi_device** %20, align 8
  store %struct.spi_device* %21, %struct.spi_device** %16, align 8
  %22 = load %struct.vsc7385*, %struct.vsc7385** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @vsc7385_write(%struct.vsc7385* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %8, align 4
  br label %55

32:                                               ; preds = %7
  %33 = load %struct.vsc7385*, %struct.vsc7385** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @vsc7385_read(%struct.vsc7385* %33, i32 %34, i32 %35, i32 %36, i32* %17)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %32
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.spi_device*, %struct.spi_device** %16, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %55

54:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %48, %40, %30
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @vsc7385_write(%struct.vsc7385*, i32, i32, i32, i32) #1

declare dso_local i32 @vsc7385_read(%struct.vsc7385*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
