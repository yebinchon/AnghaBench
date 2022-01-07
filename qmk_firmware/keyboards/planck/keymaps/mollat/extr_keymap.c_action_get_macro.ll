; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mollat/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mollat/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_LCTL = common dso_local global i32 0, align 4
@KC_B = common dso_local global i32 0, align 4
@KC_0 = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@KC_1 = common dso_local global i32 0, align 4
@KC_2 = common dso_local global i32 0, align 4
@KC_3 = common dso_local global i32 0, align 4
@KC_4 = common dso_local global i32 0, align 4
@KC_5 = common dso_local global i32 0, align 4
@KC_6 = common dso_local global i32 0, align 4
@KC_7 = common dso_local global i32 0, align 4
@KC_8 = common dso_local global i32 0, align 4
@KC_L = common dso_local global i32 0, align 4
@KC_N = common dso_local global i32 0, align 4
@KC_P = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_SCLN = common dso_local global i32 0, align 4
@KC_W = common dso_local global i32 0, align 4
@KC_ENT = common dso_local global i32 0, align 4
@KC_Q = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %191 [
    i32 0, label %9
    i32 1, label %20
    i32 2, label %31
    i32 3, label %42
    i32 4, label %53
    i32 5, label %64
    i32 6, label %75
    i32 7, label %86
    i32 8, label %97
    i32 9, label %108
    i32 10, label %119
    i32 11, label %130
    i32 12, label %141
    i32 13, label %152
    i32 14, label %167
    i32 15, label %182
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @KC_LCTL, align 4
  %11 = call i32 @DOWN(i32 %10)
  %12 = load i32, i32* @KC_B, align 4
  %13 = call i32 @TYPE(i32 %12)
  %14 = load i32, i32* @KC_LCTL, align 4
  %15 = call i32 @UP(i32 %14)
  %16 = load i32, i32* @KC_0, align 4
  %17 = call i32 @TYPE(i32 %16)
  %18 = load i32, i32* @END, align 4
  %19 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %11, i32 %13, i32 %15, i32 %17, i32 %18)
  store i32* %19, i32** %4, align 8
  br label %193

20:                                               ; preds = %3
  %21 = load i32, i32* @KC_LCTL, align 4
  %22 = call i32 @DOWN(i32 %21)
  %23 = load i32, i32* @KC_B, align 4
  %24 = call i32 @TYPE(i32 %23)
  %25 = load i32, i32* @KC_LCTL, align 4
  %26 = call i32 @UP(i32 %25)
  %27 = load i32, i32* @KC_1, align 4
  %28 = call i32 @TYPE(i32 %27)
  %29 = load i32, i32* @END, align 4
  %30 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %22, i32 %24, i32 %26, i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %193

31:                                               ; preds = %3
  %32 = load i32, i32* @KC_LCTL, align 4
  %33 = call i32 @DOWN(i32 %32)
  %34 = load i32, i32* @KC_B, align 4
  %35 = call i32 @TYPE(i32 %34)
  %36 = load i32, i32* @KC_LCTL, align 4
  %37 = call i32 @UP(i32 %36)
  %38 = load i32, i32* @KC_2, align 4
  %39 = call i32 @TYPE(i32 %38)
  %40 = load i32, i32* @END, align 4
  %41 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %33, i32 %35, i32 %37, i32 %39, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %193

42:                                               ; preds = %3
  %43 = load i32, i32* @KC_LCTL, align 4
  %44 = call i32 @DOWN(i32 %43)
  %45 = load i32, i32* @KC_B, align 4
  %46 = call i32 @TYPE(i32 %45)
  %47 = load i32, i32* @KC_LCTL, align 4
  %48 = call i32 @UP(i32 %47)
  %49 = load i32, i32* @KC_3, align 4
  %50 = call i32 @TYPE(i32 %49)
  %51 = load i32, i32* @END, align 4
  %52 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %44, i32 %46, i32 %48, i32 %50, i32 %51)
  store i32* %52, i32** %4, align 8
  br label %193

53:                                               ; preds = %3
  %54 = load i32, i32* @KC_LCTL, align 4
  %55 = call i32 @DOWN(i32 %54)
  %56 = load i32, i32* @KC_B, align 4
  %57 = call i32 @TYPE(i32 %56)
  %58 = load i32, i32* @KC_LCTL, align 4
  %59 = call i32 @UP(i32 %58)
  %60 = load i32, i32* @KC_4, align 4
  %61 = call i32 @TYPE(i32 %60)
  %62 = load i32, i32* @END, align 4
  %63 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %55, i32 %57, i32 %59, i32 %61, i32 %62)
  store i32* %63, i32** %4, align 8
  br label %193

64:                                               ; preds = %3
  %65 = load i32, i32* @KC_LCTL, align 4
  %66 = call i32 @DOWN(i32 %65)
  %67 = load i32, i32* @KC_B, align 4
  %68 = call i32 @TYPE(i32 %67)
  %69 = load i32, i32* @KC_LCTL, align 4
  %70 = call i32 @UP(i32 %69)
  %71 = load i32, i32* @KC_5, align 4
  %72 = call i32 @TYPE(i32 %71)
  %73 = load i32, i32* @END, align 4
  %74 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %66, i32 %68, i32 %70, i32 %72, i32 %73)
  store i32* %74, i32** %4, align 8
  br label %193

75:                                               ; preds = %3
  %76 = load i32, i32* @KC_LCTL, align 4
  %77 = call i32 @DOWN(i32 %76)
  %78 = load i32, i32* @KC_B, align 4
  %79 = call i32 @TYPE(i32 %78)
  %80 = load i32, i32* @KC_LCTL, align 4
  %81 = call i32 @UP(i32 %80)
  %82 = load i32, i32* @KC_6, align 4
  %83 = call i32 @TYPE(i32 %82)
  %84 = load i32, i32* @END, align 4
  %85 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %77, i32 %79, i32 %81, i32 %83, i32 %84)
  store i32* %85, i32** %4, align 8
  br label %193

86:                                               ; preds = %3
  %87 = load i32, i32* @KC_LCTL, align 4
  %88 = call i32 @DOWN(i32 %87)
  %89 = load i32, i32* @KC_B, align 4
  %90 = call i32 @TYPE(i32 %89)
  %91 = load i32, i32* @KC_LCTL, align 4
  %92 = call i32 @UP(i32 %91)
  %93 = load i32, i32* @KC_7, align 4
  %94 = call i32 @TYPE(i32 %93)
  %95 = load i32, i32* @END, align 4
  %96 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %88, i32 %90, i32 %92, i32 %94, i32 %95)
  store i32* %96, i32** %4, align 8
  br label %193

97:                                               ; preds = %3
  %98 = load i32, i32* @KC_LCTL, align 4
  %99 = call i32 @DOWN(i32 %98)
  %100 = load i32, i32* @KC_B, align 4
  %101 = call i32 @TYPE(i32 %100)
  %102 = load i32, i32* @KC_LCTL, align 4
  %103 = call i32 @UP(i32 %102)
  %104 = load i32, i32* @KC_8, align 4
  %105 = call i32 @TYPE(i32 %104)
  %106 = load i32, i32* @END, align 4
  %107 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %99, i32 %101, i32 %103, i32 %105, i32 %106)
  store i32* %107, i32** %4, align 8
  br label %193

108:                                              ; preds = %3
  %109 = load i32, i32* @KC_LCTL, align 4
  %110 = call i32 @DOWN(i32 %109)
  %111 = load i32, i32* @KC_B, align 4
  %112 = call i32 @TYPE(i32 %111)
  %113 = load i32, i32* @KC_LCTL, align 4
  %114 = call i32 @UP(i32 %113)
  %115 = load i32, i32* @KC_L, align 4
  %116 = call i32 @TYPE(i32 %115)
  %117 = load i32, i32* @END, align 4
  %118 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %110, i32 %112, i32 %114, i32 %116, i32 %117)
  store i32* %118, i32** %4, align 8
  br label %193

119:                                              ; preds = %3
  %120 = load i32, i32* @KC_LCTL, align 4
  %121 = call i32 @DOWN(i32 %120)
  %122 = load i32, i32* @KC_B, align 4
  %123 = call i32 @TYPE(i32 %122)
  %124 = load i32, i32* @KC_LCTL, align 4
  %125 = call i32 @UP(i32 %124)
  %126 = load i32, i32* @KC_N, align 4
  %127 = call i32 @TYPE(i32 %126)
  %128 = load i32, i32* @END, align 4
  %129 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %121, i32 %123, i32 %125, i32 %127, i32 %128)
  store i32* %129, i32** %4, align 8
  br label %193

130:                                              ; preds = %3
  %131 = load i32, i32* @KC_LCTL, align 4
  %132 = call i32 @DOWN(i32 %131)
  %133 = load i32, i32* @KC_B, align 4
  %134 = call i32 @TYPE(i32 %133)
  %135 = load i32, i32* @KC_LCTL, align 4
  %136 = call i32 @UP(i32 %135)
  %137 = load i32, i32* @KC_P, align 4
  %138 = call i32 @TYPE(i32 %137)
  %139 = load i32, i32* @END, align 4
  %140 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %132, i32 %134, i32 %136, i32 %138, i32 %139)
  store i32* %140, i32** %4, align 8
  br label %193

141:                                              ; preds = %3
  %142 = load i32, i32* @KC_LCTL, align 4
  %143 = call i32 @DOWN(i32 %142)
  %144 = load i32, i32* @KC_B, align 4
  %145 = call i32 @TYPE(i32 %144)
  %146 = load i32, i32* @KC_LCTL, align 4
  %147 = call i32 @UP(i32 %146)
  %148 = load i32, i32* @KC_C, align 4
  %149 = call i32 @TYPE(i32 %148)
  %150 = load i32, i32* @END, align 4
  %151 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %143, i32 %145, i32 %147, i32 %149, i32 %150)
  store i32* %151, i32** %4, align 8
  br label %193

152:                                              ; preds = %3
  %153 = load i32, i32* @KC_ESC, align 4
  %154 = call i32 @TYPE(i32 %153)
  %155 = load i32, i32* @KC_LSFT, align 4
  %156 = call i32 @DOWN(i32 %155)
  %157 = load i32, i32* @KC_SCLN, align 4
  %158 = call i32 @TYPE(i32 %157)
  %159 = load i32, i32* @KC_LSFT, align 4
  %160 = call i32 @UP(i32 %159)
  %161 = load i32, i32* @KC_W, align 4
  %162 = call i32 @TYPE(i32 %161)
  %163 = load i32, i32* @KC_ENT, align 4
  %164 = call i32 @TYPE(i32 %163)
  %165 = load i32, i32* @END, align 4
  %166 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %154, i32 %156, i32 %158, i32 %160, i32 %162, i32 %164, i32 %165)
  store i32* %166, i32** %4, align 8
  br label %193

167:                                              ; preds = %3
  %168 = load i32, i32* @KC_ESC, align 4
  %169 = call i32 @TYPE(i32 %168)
  %170 = load i32, i32* @KC_LSFT, align 4
  %171 = call i32 @DOWN(i32 %170)
  %172 = load i32, i32* @KC_SCLN, align 4
  %173 = call i32 @TYPE(i32 %172)
  %174 = load i32, i32* @KC_LSFT, align 4
  %175 = call i32 @UP(i32 %174)
  %176 = load i32, i32* @KC_Q, align 4
  %177 = call i32 @TYPE(i32 %176)
  %178 = load i32, i32* @KC_ENT, align 4
  %179 = call i32 @TYPE(i32 %178)
  %180 = load i32, i32* @END, align 4
  %181 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %169, i32 %171, i32 %173, i32 %175, i32 %177, i32 %179, i32 %180)
  store i32* %181, i32** %4, align 8
  br label %193

182:                                              ; preds = %3
  %183 = load i32, i32* @KC_LCTL, align 4
  %184 = call i32 @DOWN(i32 %183)
  %185 = load i32, i32* @KC_B, align 4
  %186 = call i32 @TYPE(i32 %185)
  %187 = load i32, i32* @KC_LCTL, align 4
  %188 = call i32 @UP(i32 %187)
  %189 = load i32, i32* @END, align 4
  %190 = call i32* (i32, i32, i32, i32, ...) @MACRODOWN(i32 %184, i32 %186, i32 %188, i32 %189)
  store i32* %190, i32** %4, align 8
  br label %193

191:                                              ; preds = %3
  %192 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %192, i32** %4, align 8
  br label %193

193:                                              ; preds = %191, %182, %167, %152, %141, %130, %119, %108, %97, %86, %75, %64, %53, %42, %31, %20, %9
  %194 = load i32*, i32** %4, align 8
  ret i32* %194
}

declare dso_local i32* @MACRODOWN(i32, i32, i32, i32, ...) #1

declare dso_local i32 @DOWN(i32) #1

declare dso_local i32 @TYPE(i32) #1

declare dso_local i32 @UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
