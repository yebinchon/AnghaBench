; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_lcd_9bit_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_lcd_9bit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_USR_COMMAND_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN_S = common dso_local global i32 0, align 4
@BIT15 = common dso_local global i32 0, align 4
@SPI_USR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_lcd_9bit_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %55

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 1
  %18 = or i32 %17, 128
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 1
  %22 = and i32 %21, 127
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @SPI_USR_COMMAND_BITLEN, align 4
  %25 = and i32 8, %24
  %26 = load i32, i32* @SPI_USR_COMMAND_BITLEN_S, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @BIT15, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %23
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @SPI_CMD(i32 %39)
  %41 = call i32 @READ_PERI_REG(i32 %40)
  %42 = load i32, i32* @SPI_USR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @SPI_USER2(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @WRITE_PERI_REG(i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @SPI_CMD(i32 %51)
  %53 = load i32, i32* @SPI_USR, align 4
  %54 = call i32 @SET_PERI_REG_MASK(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @SPI_CMD(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_USER2(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
