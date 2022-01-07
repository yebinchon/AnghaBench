; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sean/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sean/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_DVRK = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i64 0, align 8
@_RAISE = common dso_local global i64 0, align 8
@_ADJUST = common dso_local global i32 0, align 4
@_SDRK = common dso_local global i64 0, align 8
@_SLWER = common dso_local global i64 0, align 8
@_SRAIS = common dso_local global i64 0, align 8
@KC_RSFT = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_X = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %165 [
    i32 134, label %7
    i32 133, label %20
    i32 131, label %41
    i32 130, label %62
    i32 129, label %75
    i32 128, label %96
    i32 138, label %117
    i32 137, label %130
    i32 135, label %138
    i32 136, label %147
    i32 132, label %156
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i64, i64* @_DVRK, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  %17 = load i64, i64* @_DVRK, align 8
  %18 = call i32 @layer_on(i64 %17)
  br label %19

19:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %166

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, i64* @_LOWER, align 8
  %28 = call i32 @layer_on(i64 %27)
  %29 = load i64, i64* @_LOWER, align 8
  %30 = load i64, i64* @_RAISE, align 8
  %31 = load i32, i32* @_ADJUST, align 4
  %32 = call i32 @update_tri_layer(i64 %29, i64 %30, i32 %31)
  br label %40

33:                                               ; preds = %20
  %34 = load i64, i64* @_LOWER, align 8
  %35 = call i32 @layer_off(i64 %34)
  %36 = load i64, i64* @_LOWER, align 8
  %37 = load i64, i64* @_RAISE, align 8
  %38 = load i32, i32* @_ADJUST, align 4
  %39 = call i32 @update_tri_layer(i64 %36, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %166

41:                                               ; preds = %2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* @_RAISE, align 8
  %49 = call i32 @layer_on(i64 %48)
  %50 = load i64, i64* @_LOWER, align 8
  %51 = load i64, i64* @_RAISE, align 8
  %52 = load i32, i32* @_ADJUST, align 4
  %53 = call i32 @update_tri_layer(i64 %50, i64 %51, i32 %52)
  br label %61

54:                                               ; preds = %41
  %55 = load i64, i64* @_RAISE, align 8
  %56 = call i32 @layer_off(i64 %55)
  %57 = load i64, i64* @_LOWER, align 8
  %58 = load i64, i64* @_RAISE, align 8
  %59 = load i32, i32* @_ADJUST, align 4
  %60 = call i32 @update_tri_layer(i64 %57, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %166

62:                                               ; preds = %2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i64, i64* @_SDRK, align 8
  %70 = shl i64 1, %69
  %71 = call i32 @persistent_default_layer_set(i64 %70)
  %72 = load i64, i64* @_SDRK, align 8
  %73 = call i32 @layer_on(i64 %72)
  br label %74

74:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %166

75:                                               ; preds = %2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i64, i64* @_SLWER, align 8
  %83 = call i32 @layer_on(i64 %82)
  %84 = load i64, i64* @_SLWER, align 8
  %85 = load i64, i64* @_SRAIS, align 8
  %86 = load i32, i32* @_ADJUST, align 4
  %87 = call i32 @update_tri_layer(i64 %84, i64 %85, i32 %86)
  br label %95

88:                                               ; preds = %75
  %89 = load i64, i64* @_SLWER, align 8
  %90 = call i32 @layer_off(i64 %89)
  %91 = load i64, i64* @_SLWER, align 8
  %92 = load i64, i64* @_SRAIS, align 8
  %93 = load i32, i32* @_ADJUST, align 4
  %94 = call i32 @update_tri_layer(i64 %91, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %81
  store i32 0, i32* %3, align 4
  br label %166

96:                                               ; preds = %2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i64, i64* @_SRAIS, align 8
  %104 = call i32 @layer_on(i64 %103)
  %105 = load i64, i64* @_SLWER, align 8
  %106 = load i64, i64* @_SRAIS, align 8
  %107 = load i32, i32* @_ADJUST, align 4
  %108 = call i32 @update_tri_layer(i64 %105, i64 %106, i32 %107)
  br label %116

109:                                              ; preds = %96
  %110 = load i64, i64* @_SRAIS, align 8
  %111 = call i32 @layer_off(i64 %110)
  %112 = load i64, i64* @_SLWER, align 8
  %113 = load i64, i64* @_SRAIS, align 8
  %114 = load i32, i32* @_ADJUST, align 4
  %115 = call i32 @update_tri_layer(i64 %112, i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %102
  store i32 0, i32* %3, align 4
  br label %166

117:                                              ; preds = %2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @KC_RSFT, align 4
  %125 = call i32 @register_code(i32 %124)
  br label %129

126:                                              ; preds = %117
  %127 = load i32, i32* @KC_RSFT, align 4
  %128 = call i32 @unregister_code(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  store i32 0, i32* %3, align 4
  br label %166

130:                                              ; preds = %2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %130
  store i32 0, i32* %3, align 4
  br label %166

138:                                              ; preds = %2
  %139 = load i32, i32* @KC_LCTL, align 4
  %140 = call i32 @DOWN(i32 %139)
  %141 = load i32, i32* @KC_X, align 4
  %142 = call i32 @TYPE(i32 %141)
  %143 = load i32, i32* @KC_LCTL, align 4
  %144 = call i32 @UP(i32 %143)
  %145 = load i32, i32* @END, align 4
  %146 = call i32 @MACRODOWN(i32 %140, i32 %142, i32 %144, i32 %145)
  store i32 %146, i32* %3, align 4
  br label %166

147:                                              ; preds = %2
  %148 = load i32, i32* @KC_LCTL, align 4
  %149 = call i32 @DOWN(i32 %148)
  %150 = load i32, i32* @KC_C, align 4
  %151 = call i32 @TYPE(i32 %150)
  %152 = load i32, i32* @KC_LCTL, align 4
  %153 = call i32 @UP(i32 %152)
  %154 = load i32, i32* @END, align 4
  %155 = call i32 @MACRODOWN(i32 %149, i32 %151, i32 %153, i32 %154)
  store i32 %155, i32* %3, align 4
  br label %166

156:                                              ; preds = %2
  %157 = load i32, i32* @KC_LCTL, align 4
  %158 = call i32 @DOWN(i32 %157)
  %159 = load i32, i32* @KC_V, align 4
  %160 = call i32 @TYPE(i32 %159)
  %161 = load i32, i32* @KC_LCTL, align 4
  %162 = call i32 @UP(i32 %161)
  %163 = load i32, i32* @END, align 4
  %164 = call i32 @MACRODOWN(i32 %158, i32 %160, i32 %162, i32 %163)
  store i32 %164, i32* %3, align 4
  br label %166

165:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %156, %147, %138, %137, %129, %116, %95, %74, %61, %40, %19
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i64) #1

declare dso_local i32 @update_tri_layer(i64, i64, i32) #1

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @MACRODOWN(i32, i32, i32, i32) #1

declare dso_local i32 @DOWN(i32) #1

declare dso_local i32 @TYPE(i32) #1

declare dso_local i32 @UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
