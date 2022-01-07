; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/hacker_dvorak/tap_dance/mod_tap_layer_dances/extr_m_chords_hyper.c_m_chords_hyper_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/hacker_dvorak/tap_dance/mod_tap_layer_dances/extr_m_chords_hyper.c_m_chords_hyper_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m_chords_hyper_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KC_M = common dso_local global i32 0, align 4
@CHORD = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_chords_hyper_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @current_dance(i32* %5)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_chords_hyper_state, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_chords_hyper_state, i32 0, i32 0), align 4
  switch i32 %7, label %23 [
    i32 128, label %8
    i32 129, label %11
    i32 130, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @KC_M, align 4
  %10 = call i32 @register_code(i32 %9)
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* @CHORD, align 4
  %13 = call i32 @layer_on(i32 %12)
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @KC_LCTL, align 4
  %16 = call i32 @register_code(i32 %15)
  %17 = load i32, i32* @KC_LSFT, align 4
  %18 = call i32 @register_code(i32 %17)
  %19 = load i32, i32* @KC_LALT, align 4
  %20 = call i32 @register_code(i32 %19)
  %21 = load i32, i32* @KC_LGUI, align 4
  %22 = call i32 @register_code(i32 %21)
  br label %23

23:                                               ; preds = %2, %14, %11, %8
  ret void
}

declare dso_local i32 @current_dance(i32*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
