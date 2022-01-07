; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@RGBLIGHT_MODE_RAINBOW_SWIRL = common dso_local global i32 0, align 4
@_SYMB = common dso_local global i32 0, align 4
@tap_tog_count = common dso_local global i32 0, align 4
@tap_tog_layer_other_key_pressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @RGBLIGHT_MODE_RAINBOW_SWIRL, align 4
  %15 = call i32 @rgblight_mode(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 1, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @_SYMB, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @process_tap_tog(i32 %18, %struct.TYPE_6__* %19)
  store i32 0, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  store i32 0, i32* @tap_tog_count, align 4
  store i32 1, i32* @tap_tog_layer_other_key_pressed, align 4
  br label %22

22:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %17, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @process_tap_tog(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
