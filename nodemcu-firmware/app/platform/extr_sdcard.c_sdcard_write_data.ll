; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_write_data.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_spi_no = common dso_local global i32 0, align 4
@m_status = common dso_local global i32 0, align 4
@DATA_RES_MASK = common dso_local global i32 0, align 4
@DATA_RES_ACCEPTED = common dso_local global i32 0, align 4
@SD_CARD_ERROR_WRITE = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @sdcard_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdcard_write_data(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 65535, i32* %6, align 4
  %7 = load i32, i32* @m_spi_no, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @platform_spi_transaction(i32 %7, i32 8, i32 %8, i32 0, i32 0, i32 0, i32 0, i32 0)
  %10 = load i32, i32* @m_spi_no, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @platform_spi_blkwrite(i32 %10, i32 512, i32* %11)
  %13 = load i32, i32* @m_spi_no, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @platform_spi_transaction(i32 %13, i32 16, i32 %14, i32 0, i32 0, i32 0, i32 0, i32 0)
  %16 = load i32, i32* @m_spi_no, align 4
  %17 = call i32 @platform_spi_send_recv(i32 %16, i32 8, i32 255)
  store i32 %17, i32* @m_status, align 4
  %18 = load i32, i32* @m_status, align 4
  %19 = load i32, i32* @DATA_RES_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @DATA_RES_ACCEPTED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @SD_CARD_ERROR_WRITE, align 4
  store i32 %24, i32* @m_error, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %23
  %28 = call i32 (...) @sdcard_chipselect_high()
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @platform_spi_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @platform_spi_blkwrite(i32, i32, i32*) #1

declare dso_local i32 @platform_spi_send_recv(i32, i32, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
