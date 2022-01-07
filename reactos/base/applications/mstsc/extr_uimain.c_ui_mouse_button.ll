; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_mouse_button.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_mouse_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOUSE_FLAG_DOWN = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON1 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON2 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON3 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON4 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON5 = common dso_local global i32 0, align 4
@RDP_INPUT_MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_mouse_button(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %14 = load i32, i32* %9, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %38 [
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
    i32 4, label %30
    i32 5, label %34
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @MOUSE_FLAG_BUTTON1, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i32, i32* @MOUSE_FLAG_BUTTON2, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %38

26:                                               ; preds = %16
  %27 = load i32, i32* @MOUSE_FLAG_BUTTON3, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %38

30:                                               ; preds = %16
  %31 = load i32, i32* @MOUSE_FLAG_BUTTON4, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load i32, i32* @MOUSE_FLAG_BUTTON5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %16, %34, %30, %26, %22, %18
  %39 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @rdp_send_input(i32 0, i32 %39, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
