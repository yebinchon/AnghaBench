; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cospad/keymaps/detrus/extr_keymap.c_default_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cospad/keymaps/detrus/extr_keymap.c_default_layer_state_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RAISE_LAYER = common dso_local global i32 0, align 4
@_QWERTZ_LOWER_LAYER = common dso_local global i32 0, align 4
@_ALTER_LAYER = common dso_local global i32 0, align 4
@_COLEMA_LOWER_LAYER = common dso_local global i32 0, align 4
@_DVORAK_LOWER_LAYER = common dso_local global i32 0, align 4
@_QWERTY_LOWER_LAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_layer_state_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %73 [
    i32 129, label %5
    i32 128, label %22
    i32 131, label %39
    i32 130, label %56
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @_RAISE_LAYER, align 4
  %8 = load i32, i32* @_QWERTZ_LOWER_LAYER, align 4
  %9 = load i32, i32* @_ALTER_LAYER, align 4
  %10 = call i32 @update_tri_layer_state(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @_RAISE_LAYER, align 4
  %13 = load i32, i32* @_COLEMA_LOWER_LAYER, align 4
  %14 = load i32, i32* @_ALTER_LAYER, align 4
  %15 = call i32 @update_tri_layer_state(i32 %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @_RAISE_LAYER, align 4
  %18 = load i32, i32* @_DVORAK_LOWER_LAYER, align 4
  %19 = load i32, i32* @_ALTER_LAYER, align 4
  %20 = call i32 @update_tri_layer_state(i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = call i32 @layer_move(i32 129)
  br label %73

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @_RAISE_LAYER, align 4
  %25 = load i32, i32* @_QWERTY_LOWER_LAYER, align 4
  %26 = load i32, i32* @_ALTER_LAYER, align 4
  %27 = call i32 @update_tri_layer_state(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @_RAISE_LAYER, align 4
  %30 = load i32, i32* @_COLEMA_LOWER_LAYER, align 4
  %31 = load i32, i32* @_ALTER_LAYER, align 4
  %32 = call i32 @update_tri_layer_state(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @_RAISE_LAYER, align 4
  %35 = load i32, i32* @_DVORAK_LOWER_LAYER, align 4
  %36 = load i32, i32* @_ALTER_LAYER, align 4
  %37 = call i32 @update_tri_layer_state(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = call i32 @layer_move(i32 128)
  br label %73

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @_RAISE_LAYER, align 4
  %42 = load i32, i32* @_QWERTY_LOWER_LAYER, align 4
  %43 = load i32, i32* @_ALTER_LAYER, align 4
  %44 = call i32 @update_tri_layer_state(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @_RAISE_LAYER, align 4
  %47 = load i32, i32* @_QWERTZ_LOWER_LAYER, align 4
  %48 = load i32, i32* @_ALTER_LAYER, align 4
  %49 = call i32 @update_tri_layer_state(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @_RAISE_LAYER, align 4
  %52 = load i32, i32* @_DVORAK_LOWER_LAYER, align 4
  %53 = load i32, i32* @_ALTER_LAYER, align 4
  %54 = call i32 @update_tri_layer_state(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  %55 = call i32 @layer_move(i32 131)
  br label %73

56:                                               ; preds = %1
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @_RAISE_LAYER, align 4
  %59 = load i32, i32* @_QWERTY_LOWER_LAYER, align 4
  %60 = load i32, i32* @_ALTER_LAYER, align 4
  %61 = call i32 @update_tri_layer_state(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @_RAISE_LAYER, align 4
  %64 = load i32, i32* @_QWERTZ_LOWER_LAYER, align 4
  %65 = load i32, i32* @_ALTER_LAYER, align 4
  %66 = call i32 @update_tri_layer_state(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @_RAISE_LAYER, align 4
  %69 = load i32, i32* @_COLEMA_LOWER_LAYER, align 4
  %70 = load i32, i32* @_ALTER_LAYER, align 4
  %71 = call i32 @update_tri_layer_state(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  %72 = call i32 @layer_move(i32 130)
  br label %73

73:                                               ; preds = %1, %56, %39, %22, %5
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @update_tri_layer_state(i32, i32, i32, i32) #1

declare dso_local i32 @layer_move(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
