; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oeywil/extr_keymap.c_rsft_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oeywil/extr_keymap.c_rsft_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@xtap_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_NUBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsft_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @cur_dance(i32* %5)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtap_state, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtap_state, i32 0, i32 0), align 4
  switch i32 %7, label %23 [
    i32 128, label %8
    i32 129, label %12
    i32 130, label %15
    i32 131, label %19
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @KC_9, align 4
  %10 = call i32 @LSFT(i32 %9)
  %11 = call i32 @register_code16(i32 %10)
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* @KC_RSFT, align 4
  %14 = call i32 @register_code(i32 %13)
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @KC_NUBS, align 4
  %17 = call i32 @LSFT(i32 %16)
  %18 = call i32 @register_code16(i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @KC_NUBS, align 4
  %21 = call i32 @LSFT(i32 %20)
  %22 = call i32 @register_code16(i32 %21)
  br label %23

23:                                               ; preds = %2, %19, %15, %12, %8
  ret void
}

declare dso_local i32 @cur_dance(i32*) #1

declare dso_local i32 @register_code16(i32) #1

declare dso_local i32 @LSFT(i32) #1

declare dso_local i32 @register_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
