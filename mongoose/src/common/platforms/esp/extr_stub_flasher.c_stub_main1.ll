; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_stub_main1.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_stub_main1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@params = common dso_local global i64* null, align 8
@FLASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@FLASH_PAGE_SIZE = common dso_local global i32 0, align 4
@CMD_BOOT_FW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_main1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64*, i64** @params, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %1, align 8
  %8 = load i64*, i64** @params, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %2, align 8
  %11 = call i32 @ets_set_user_start(i32 0)
  %12 = load i32, i32* @FLASH_BLOCK_SIZE, align 4
  %13 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %14 = load i32, i32* @FLASH_PAGE_SIZE, align 4
  %15 = call i32 @esp_rom_spiflash_config_param(i32 0, i32 16777216, i32 %12, i32 %13, i32 %14, i32 65535)
  store i64 0, i64* %4, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = call i32 @ets_delay_us(i32 10000)
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @set_baud_rate(i32 0, i64 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %18, %0
  %24 = call i32 @ets_delay_us(i32 50000)
  %25 = call i32 @SLIP_send(i64* %4, i32 4)
  %26 = call i64 (...) @cmd_loop()
  store i64 %26, i64* %3, align 8
  %27 = call i32 @ets_delay_us(i32 10000)
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @CMD_BOOT_FW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @software_reset()
  br label %34

34:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @ets_set_user_start(i32) #1

declare dso_local i32 @esp_rom_spiflash_config_param(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i64 @set_baud_rate(i32, i64, i64) #1

declare dso_local i32 @SLIP_send(i64*, i32) #1

declare dso_local i64 @cmd_loop(...) #1

declare dso_local i32 @software_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
