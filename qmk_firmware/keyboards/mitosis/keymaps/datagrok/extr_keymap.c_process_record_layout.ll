; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/datagrok/extr_keymap.c_process_record_layout.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/datagrok/extr_keymap.c_process_record_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_LAYO = common dso_local global i64 0, align 8
@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@default_layer_state = common dso_local global i32 0, align 4
@defaultlayers_n = common dso_local global i64 0, align 8
@defaultlayers = common dso_local global i64* null, align 8
@COIN_SOUND = common dso_local global i32 0, align 4
@default_layer_songs = common dso_local global float*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_layout(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @KC_LAYO, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %70

18:                                               ; preds = %11
  %19 = call i32 (...) @get_mods()
  %20 = load i32, i32* @KC_LSHIFT, align 4
  %21 = call i32 @MOD_BIT(i32 %20)
  %22 = load i32, i32* @KC_RSHIFT, align 4
  %23 = call i32 @MOD_BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @default_layer_state, align 4
  %29 = call i32 @eeconfig_update_default_layer(i32 %28)
  br label %69

30:                                               ; preds = %18
  %31 = load i32, i32* @default_layer_state, align 4
  %32 = call i64 @biton32(i32 %31)
  store i64 %32, i64* %6, align 8
  store i64 1, i64* %7, align 8
  br label %33

33:                                               ; preds = %49, %30
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @defaultlayers_n, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64*, i64** @defaultlayers, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* @defaultlayers_n, align 8
  %43 = urem i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %33

52:                                               ; preds = %47, %33
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @defaultlayers_n, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %70

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* @defaultlayers_n, align 8
  %62 = urem i64 %60, %61
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = call i32 @default_layer_set(i32 %65)
  %67 = call i32 (...) @host_keyboard_leds()
  %68 = call i32 @led_set(i32 %67)
  br label %69

69:                                               ; preds = %57, %27
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %56, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @eeconfig_update_default_layer(i32) #1

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @default_layer_set(i32) #1

declare dso_local i32 @led_set(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
