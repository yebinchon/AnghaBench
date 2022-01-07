; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_i2c.c_i2c_master_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_i2c.c_i2c_master_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWEA = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@TWDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_master_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @TWINT, align 4
  %4 = shl i32 1, %3
  %5 = load i32, i32* @TWEN, align 4
  %6 = shl i32 1, %5
  %7 = or i32 %4, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @TWEA, align 4
  %10 = shl i32 %8, %9
  %11 = or i32 %7, %10
  store i32 %11, i32* @TWCR, align 4
  %12 = call i32 (...) @i2c_delay()
  %13 = load i32, i32* @TWDR, align 4
  ret i32 %13
}

declare dso_local i32 @i2c_delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
