; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_spi_flasher.h_usb_cb_ep2_out.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_spi_flasher.h_usb_cb_ep2_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@current_board = common dso_local global %struct.TYPE_3__* null, align 8
@LED_RED = common dso_local global i32 0, align 4
@FLASH_CR_PSIZE_1 = common dso_local global i32 0, align 4
@FLASH_CR_PG = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@prog_ptr = common dso_local global i32* null, align 8
@FLASH_SR_BSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_cb_ep2_out(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @UNUSED(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_board, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load i32, i32* @LED_RED, align 4
  %14 = call i32 %12(i32 %13, i32 0)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load i32, i32* @FLASH_CR_PSIZE_1, align 4
  %22 = load i32, i32* @FLASH_CR_PG, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %26, i64 %29
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @prog_ptr, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %41, %20
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FLASH_SR_BSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %34

42:                                               ; preds = %34
  %43 = load i32*, i32** @prog_ptr, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** @prog_ptr, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_board, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load i32, i32* @LED_RED, align 4
  %53 = call i32 %51(i32 %52, i32 1)
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
