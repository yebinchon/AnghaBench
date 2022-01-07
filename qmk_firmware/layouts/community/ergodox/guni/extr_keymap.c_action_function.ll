; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/guni/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/guni/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEENSY_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0A\0AJump to bootloader... \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @TEENSY_KEY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = call i32 (...) @clear_keyboard()
  %12 = call i32 @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @wait_ms(i32 250)
  %14 = call i32 (...) @bootloader_jump()
  %15 = call i32 @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @bootloader_jump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
