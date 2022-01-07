; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/comet46/keymaps/satt/extr_action_pseudo_lut.c_action_pseudo_lut.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/comet46/keymaps/satt/extr_action_pseudo_lut.c_action_pseudo_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pressed: %02X, converted: %04X\0A\00", align 1
@QK_LSFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"released: %02X, converted: %04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_pseudo_lut(%struct.TYPE_6__* %0, i32 %1, [2 x i32]* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store [2 x i32]* %2, [2 x i32]** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @keymap_key_to_keycode(i32 %10, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KC_LSFT, align 4
  %20 = call i32 @MOD_BIT(i32 %19)
  %21 = load i32, i32* @KC_RSFT, align 4
  %22 = call i32 @MOD_BIT(i32 %21)
  %23 = or i32 %20, %22
  %24 = and i32 %18, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %3
  %31 = call i64 (...) @IS_COMMAND()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @add_shift_bit(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @register_code(i32 %40)
  br label %138

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load [2 x i32]*, [2 x i32]** %6, align 8
  %47 = bitcast [2 x i32]* %46 to i32**
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @convert_keycode(i32** %47, i32 %48, i32 1)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @add_shift_bit(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @IS_LSFT(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load i32, i32* @QK_LSFT, align 4
  %60 = load i32, i32* %9, align 4
  %61 = xor i32 %59, %60
  %62 = call i32 @register_code(i32 %61)
  br label %72

63:                                               ; preds = %45
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @del_mods(i32 %64)
  %66 = call i32 (...) @send_keyboard_report()
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @register_code(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @add_mods(i32 %69)
  %71 = call i32 (...) @send_keyboard_report()
  br label %72

72:                                               ; preds = %63, %58
  br label %105

73:                                               ; preds = %42
  %74 = load [2 x i32]*, [2 x i32]** %6, align 8
  %75 = bitcast [2 x i32]* %74 to i32**
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @convert_keycode(i32** %75, i32 %76, i32 0)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @IS_LSFT(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %73
  %85 = load i32, i32* @KC_LSFT, align 4
  %86 = call i32 @MOD_BIT(i32 %85)
  %87 = call i32 @add_weak_mods(i32 %86)
  %88 = call i32 (...) @send_keyboard_report()
  %89 = load i32, i32* @QK_LSFT, align 4
  %90 = load i32, i32* %9, align 4
  %91 = xor i32 %89, %90
  %92 = call i32 @register_code(i32 %91)
  %93 = load i32, i32* @QK_LSFT, align 4
  %94 = load i32, i32* %9, align 4
  %95 = xor i32 %93, %94
  %96 = call i32 @unregister_code(i32 %95)
  %97 = load i32, i32* @KC_LSFT, align 4
  %98 = call i32 @MOD_BIT(i32 %97)
  %99 = call i32 @del_weak_mods(i32 %98)
  %100 = call i32 (...) @send_keyboard_report()
  br label %104

101:                                              ; preds = %73
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @register_code(i32 %102)
  br label %104

104:                                              ; preds = %101, %84
  br label %105

105:                                              ; preds = %104, %72
  br label %138

106:                                              ; preds = %3
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @get_shift_bit(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @del_shift_bit(i32 %111)
  %113 = load [2 x i32]*, [2 x i32]** %6, align 8
  %114 = bitcast [2 x i32]* %113 to i32**
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @convert_keycode(i32** %114, i32 %115, i32 1)
  store i32 %116, i32* %9, align 4
  br label %122

117:                                              ; preds = %106
  %118 = load [2 x i32]*, [2 x i32]** %6, align 8
  %119 = bitcast [2 x i32]* %118 to i32**
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @convert_keycode(i32** %119, i32 %120, i32 0)
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %110
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @IS_LSFT(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* @QK_LSFT, align 4
  %131 = load i32, i32* %9, align 4
  %132 = xor i32 %130, %131
  %133 = call i32 @unregister_code(i32 %132)
  br label %137

134:                                              ; preds = %122
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @unregister_code(i32 %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %39, %137, %105
  ret void
}

declare dso_local i32 @keymap_key_to_keycode(i32, i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i64 @IS_COMMAND(...) #1

declare dso_local i32 @add_shift_bit(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @convert_keycode(i32**, i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32) #1

declare dso_local i64 @IS_LSFT(i32) #1

declare dso_local i32 @del_mods(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @add_mods(i32) #1

declare dso_local i32 @add_weak_mods(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @del_weak_mods(i32) #1

declare dso_local i64 @get_shift_bit(i32) #1

declare dso_local i32 @del_shift_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
