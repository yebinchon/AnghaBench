; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_eeprom_stm32.c_eeprom_update_dword.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_eeprom_stm32.c_eeprom_update_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_update_dword(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @EEPROM_ReadDataByte(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @EEPROM_ReadDataByte(i32 %12)
  %14 = shl i32 %13, 8
  %15 = or i32 %10, %14
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 2
  %18 = call i32 @EEPROM_ReadDataByte(i32 %17)
  %19 = shl i32 %18, 16
  %20 = or i32 %15, %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 3
  %23 = call i32 @EEPROM_ReadDataByte(i32 %22)
  %24 = shl i32 %23, 24
  %25 = or i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @EEPROM_WriteDataByte(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @EEPROM_WriteDataByte(i32 %34, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 16
  %42 = call i32 @EEPROM_WriteDataByte(i32 %39, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 3
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 24
  %47 = call i32 @EEPROM_WriteDataByte(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @EEPROM_ReadDataByte(i32) #1

declare dso_local i32 @EEPROM_WriteDataByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
