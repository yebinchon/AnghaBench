; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/chimera_ortho/keymaps/gordon/extr_keymap.c_TTT_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/chimera_ortho/keymaps/gordon/extr_keymap.c_TTT_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ttt_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_FUNCTION = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4
@_MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TTT_reset(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ttt_state, i32 0, i32 0), align 4
  switch i32 %5, label %19 [
    i32 130, label %6
    i32 131, label %7
    i32 132, label %10
    i32 134, label %11
    i32 133, label %14
    i32 128, label %15
    i32 129, label %16
  ]

6:                                                ; preds = %2
  br label %19

7:                                                ; preds = %2
  %8 = load i32, i32* @_FUNCTION, align 4
  %9 = call i32 @layer_off(i32 %8)
  br label %19

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @_NUMPAD, align 4
  %13 = call i32 @layer_off(i32 %12)
  br label %19

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @_MOUSE, align 4
  %18 = call i32 @layer_off(i32 %17)
  br label %19

19:                                               ; preds = %2, %16, %15, %14, %11, %10, %7, %6
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ttt_state, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
