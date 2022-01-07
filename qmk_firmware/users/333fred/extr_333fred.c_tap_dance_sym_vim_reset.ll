; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_sym_vim_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_sym_vim_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tap_dance_state = common dso_local global i32 0, align 4
@ONESHOT_PRESSED = common dso_local global i32 0, align 4
@SYMB = common dso_local global i32 0, align 4
@VIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_dance_sym_vim_reset(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @tap_dance_state, align 4
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 129, label %9
    i32 130, label %12
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @ONESHOT_PRESSED, align 4
  %8 = call i32 @clear_oneshot_layer_state(i32 %7)
  br label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @SYMB, align 4
  %11 = call i32 @layer_off(i32 %10)
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @VIM, align 4
  %14 = call i32 @layer_off(i32 %13)
  br label %15

15:                                               ; preds = %2, %12, %9, %6
  ret void
}

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
