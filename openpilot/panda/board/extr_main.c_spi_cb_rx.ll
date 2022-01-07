; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_spi_cb_rx.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_spi_cb_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"SPI data invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_cb_rx(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @UNUSED(i32 %8)
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %35 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %21
    i32 3, label %28
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @usb_cb_control_msg(i32* %15, i32* %16, i32 0)
  store i32 %17, i32* %7, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @usb_cb_ep1_in(i32* %19, i32 64, i32 0)
  store i32 %20, i32* %7, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_cb_ep2_out(i32* %23, i32 %26, i32 0)
  br label %37

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_cb_ep3_out(i32* %30, i32 %33, i32 0)
  br label %37

35:                                               ; preds = %3
  %36 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28, %21, %18, %13
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @usb_cb_control_msg(i32*, i32*, i32) #1

declare dso_local i32 @usb_cb_ep1_in(i32*, i32, i32) #1

declare dso_local i32 @usb_cb_ep2_out(i32*, i32, i32) #1

declare dso_local i32 @usb_cb_ep3_out(i32*, i32, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
