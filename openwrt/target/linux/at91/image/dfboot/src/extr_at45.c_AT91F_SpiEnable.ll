; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_SpiEnable.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_SpiEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@AT91C_BASE_SPI = common dso_local global %struct.TYPE_3__* null, align 8
@AT91C_SPI_PCS0_SERIAL_DATAFLASH = common dso_local global i32 0, align 4
@AT91C_SPI_PCS = common dso_local global i32 0, align 4
@AT91C_PIO_PB7 = common dso_local global i8* null, align 8
@AT91C_BASE_PIOB = common dso_local global %struct.TYPE_4__* null, align 8
@AT91C_SPI_PCS3_DATAFLASH_CARD = common dso_local global i32 0, align 4
@AT91C_SPI_SPIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @AT91F_SpiEnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AT91F_SpiEnable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %39 [
    i32 0, label %4
    i32 3, label %17
  ]

4:                                                ; preds = %1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_SPI, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -983041
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @AT91C_SPI_PCS0_SERIAL_DATAFLASH, align 4
  %10 = shl i32 %9, 16
  %11 = load i32, i32* @AT91C_SPI_PCS, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_SPI, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load i8*, i8** @AT91C_PIO_PB7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AT91C_BASE_PIOB, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @AT91C_PIO_PB7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AT91C_BASE_PIOB, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @AT91C_PIO_PB7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AT91C_BASE_PIOB, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_SPI, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -983041
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @AT91C_SPI_PCS3_DATAFLASH_CARD, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* @AT91C_SPI_PCS, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_SPI, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %1, %17, %4
  %40 = load i32, i32* @AT91C_SPI_SPIEN, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AT91C_BASE_SPI, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
