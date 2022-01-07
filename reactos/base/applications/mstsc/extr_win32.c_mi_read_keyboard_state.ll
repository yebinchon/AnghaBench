; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_mi_read_keyboard_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_mi_read_keyboard_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VK_SCROLL = common dso_local global i32 0, align 4
@VK_NUMLOCK = common dso_local global i32 0, align 4
@VK_CAPITAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_read_keyboard_state() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @VK_SCROLL, align 4
  %4 = call signext i16 @GetKeyState(i32 %3)
  store i16 %4, i16* %1, align 2
  %5 = load i16, i16* %1, align 2
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @VK_NUMLOCK, align 4
  %14 = call signext i16 @GetKeyState(i32 %13)
  store i16 %14, i16* %1, align 2
  %15 = load i16, i16* %1, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = or i32 %20, 2
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* @VK_CAPITAL, align 4
  %24 = call signext i16 @GetKeyState(i32 %23)
  store i16 %24, i16* %1, align 2
  %25 = load i16, i16* %1, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local signext i16 @GetKeyState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
