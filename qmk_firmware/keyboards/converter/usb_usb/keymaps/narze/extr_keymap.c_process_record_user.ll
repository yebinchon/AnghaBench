; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/usb_usb/keymaps/narze/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/usb_usb/keymaps/narze/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_QWOC = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %70 [
    i32 131, label %7
    i32 134, label %19
    i32 130, label %31
    i32 128, label %43
    i32 133, label %52
    i32 132, label %58
    i32 129, label %64
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  %16 = load i32, i32* @_QWERTY, align 4
  %17 = call i32 @set_superduper_key_combo_layer(i32 %16)
  br label %18

18:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @_COLEMAK, align 4
  %27 = call i32 @set_single_persistent_default_layer(i32 %26)
  %28 = load i32, i32* @_COLEMAK, align 4
  %29 = call i32 @set_superduper_key_combo_layer(i32 %28)
  br label %30

30:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @_QWOC, align 4
  %39 = call i32 @set_single_persistent_default_layer(i32 %38)
  %40 = load i32, i32* @_QWOC, align 4
  %41 = call i32 @set_superduper_key_combo_layer(i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  store i32 0, i32* %3, align 4
  br label %71

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @toggle_superduper_mode()
  br label %51

51:                                               ; preds = %49, %43
  store i32 0, i32* %3, align 4
  br label %71

52:                                               ; preds = %2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load i32, i32* @KC_LGUI, align 4
  %55 = load i32, i32* @KC_LSFT, align 4
  %56 = load i32, i32* @KC_MINS, align 4
  %57 = call i32 @perform_space_cadet(%struct.TYPE_6__* %53, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %71

58:                                               ; preds = %2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = load i32, i32* @KC_LSFT, align 4
  %61 = load i32, i32* @KC_LSFT, align 4
  %62 = load i32, i32* @KC_9, align 4
  %63 = call i32 @perform_space_cadet(%struct.TYPE_6__* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %71

64:                                               ; preds = %2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = load i32, i32* @KC_RSFT, align 4
  %67 = load i32, i32* @KC_RSFT, align 4
  %68 = load i32, i32* @KC_0, align 4
  %69 = call i32 @perform_space_cadet(%struct.TYPE_6__* %65, i32 %66, i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64, %58, %52, %51, %42, %30, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @set_superduper_key_combo_layer(i32) #1

declare dso_local i32 @toggle_superduper_mode(...) #1

declare dso_local i32 @perform_space_cadet(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
