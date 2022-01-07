; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_micro_oled_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_micro_oled_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_ADDRESS_SA0_1 = common dso_local global i32 0, align 4
@DISPLAYOFF = common dso_local global i32 0, align 4
@SETDISPLAYCLOCKDIV = common dso_local global i32 0, align 4
@SETMULTIPLEX = common dso_local global i32 0, align 4
@LCDHEIGHT = common dso_local global i32 0, align 4
@SETDISPLAYOFFSET = common dso_local global i32 0, align 4
@SETSTARTLINE = common dso_local global i32 0, align 4
@CHARGEPUMP = common dso_local global i32 0, align 4
@NORMALDISPLAY = common dso_local global i32 0, align 4
@DISPLAYALLONRESUME = common dso_local global i32 0, align 4
@SEGREMAP = common dso_local global i32 0, align 4
@COMSCANDEC = common dso_local global i32 0, align 4
@MEMORYMODE = common dso_local global i32 0, align 4
@SETCOMPINS = common dso_local global i32 0, align 4
@SETCONTRAST = common dso_local global i32 0, align 4
@SETPRECHARGE = common dso_local global i32 0, align 4
@SETVCOMDESELECT = common dso_local global i32 0, align 4
@DISPLAYON = common dso_local global i32 0, align 4
@COMSCANINC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @micro_oled_init() #0 {
  %1 = call i32 (...) @i2c_init()
  %2 = load i32, i32* @I2C_ADDRESS_SA0_1, align 4
  %3 = call i32 @i2c_start(i32 %2)
  %4 = load i32, i32* @DISPLAYOFF, align 4
  %5 = call i32 @send_command(i32 %4)
  %6 = load i32, i32* @SETDISPLAYCLOCKDIV, align 4
  %7 = call i32 @send_command(i32 %6)
  %8 = call i32 @send_command(i32 128)
  %9 = load i32, i32* @SETMULTIPLEX, align 4
  %10 = call i32 @send_command(i32 %9)
  %11 = load i32, i32* @LCDHEIGHT, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @send_command(i32 %12)
  %14 = load i32, i32* @SETDISPLAYOFFSET, align 4
  %15 = call i32 @send_command(i32 %14)
  %16 = call i32 @send_command(i32 0)
  %17 = load i32, i32* @SETSTARTLINE, align 4
  %18 = call i32 @send_command(i32 %17)
  %19 = load i32, i32* @CHARGEPUMP, align 4
  %20 = call i32 @send_command(i32 %19)
  %21 = call i32 @send_command(i32 20)
  %22 = load i32, i32* @NORMALDISPLAY, align 4
  %23 = call i32 @send_command(i32 %22)
  %24 = load i32, i32* @DISPLAYALLONRESUME, align 4
  %25 = call i32 @send_command(i32 %24)
  %26 = load i32, i32* @SEGREMAP, align 4
  %27 = or i32 %26, 1
  %28 = call i32 @send_command(i32 %27)
  %29 = load i32, i32* @COMSCANDEC, align 4
  %30 = call i32 @send_command(i32 %29)
  %31 = load i32, i32* @MEMORYMODE, align 4
  %32 = call i32 @send_command(i32 %31)
  %33 = call i32 @send_command(i32 16)
  %34 = load i32, i32* @SETCOMPINS, align 4
  %35 = call i32 @send_command(i32 %34)
  %36 = load i32, i32* @LCDHEIGHT, align 4
  %37 = icmp sgt i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %0
  %39 = call i32 @send_command(i32 18)
  br label %42

40:                                               ; preds = %0
  %41 = call i32 @send_command(i32 2)
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* @SETCONTRAST, align 4
  %44 = call i32 @send_command(i32 %43)
  %45 = call i32 @send_command(i32 143)
  %46 = load i32, i32* @SETPRECHARGE, align 4
  %47 = call i32 @send_command(i32 %46)
  %48 = call i32 @send_command(i32 241)
  %49 = load i32, i32* @SETVCOMDESELECT, align 4
  %50 = call i32 @send_command(i32 %49)
  %51 = call i32 @send_command(i32 64)
  %52 = load i32, i32* @DISPLAYON, align 4
  %53 = call i32 @send_command(i32 %52)
  %54 = call i32 (...) @clear_screen()
  %55 = call i32 (...) @send_buffer()
  ret void
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @i2c_start(i32) #1

declare dso_local i32 @send_command(i32) #1

declare dso_local i32 @clear_screen(...) #1

declare dso_local i32 @send_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
