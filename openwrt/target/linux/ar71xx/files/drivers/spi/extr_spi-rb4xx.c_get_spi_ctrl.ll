; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_get_spi_ctrl.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_get_spi_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb4xx_spi = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"rb4xx: %s SPI clock %u kHz (AHB %u kHz / %u)\0A\00", align 1
@SPI_CTRL_FASTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb4xx_spi*, i32, i8*)* @get_spi_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_spi_ctrl(%struct.rb4xx_spi* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rb4xx_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rb4xx_spi* %0, %struct.rb4xx_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %4, align 8
  %11 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %5, align 4
  %15 = mul i32 2, %14
  %16 = udiv i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %4, align 8
  %27 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 500
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  %33 = mul i32 2, %32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = udiv i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* @SPI_CTRL_FASTEST, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %42, %43
  ret i32 %44
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
