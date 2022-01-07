; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_blkget.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_blkget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_USR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mast_blkget(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = lshr i64 %8, 3
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @SPI_CMD(i32 %11)
  %13 = call i32 @READ_PERI_REG(i32 %12)
  %14 = load i32, i32* @SPI_USR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %10

18:                                               ; preds = %10
  %19 = load i64, i64* %7, align 8
  %20 = urem i64 %19, 4
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = urem i64 %23, 4
  %25 = sub i64 4, %24
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @SPI_W0(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @os_memcpy(i8* %30, i8* %33, i64 %34)
  ret void
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @SPI_CMD(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @SPI_W0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
