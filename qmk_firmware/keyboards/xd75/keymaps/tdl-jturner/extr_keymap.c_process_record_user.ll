; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/tdl-jturner/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/tdl-jturner/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@shift = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@KC_DEL = common dso_local global i32 0, align 4
@KC_BSPC = common dso_local global i32 0, align 4
@KC_BSLASH = common dso_local global i32 0, align 4
@KC_SLSH = common dso_local global i32 0, align 4
@KC_DOT = common dso_local global i32 0, align 4
@KC_BSLS = common dso_local global i32 0, align 4
@KC_COMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %161 [
    i32 129, label %7
    i32 128, label %9
    i32 134, label %19
    i32 133, label %29
    i32 130, label %69
    i32 131, label %109
    i32 132, label %135
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @layer_clear()
  store i32 0, i32* %3, align 4
  br label %162

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @_QWERTY, align 4
  %17 = call i32 @set_single_persistent_default_layer(i32 %16)
  br label %18

18:                                               ; preds = %15, %9
  store i32 0, i32* %3, align 4
  br label %162

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @_COLEMAK, align 4
  %27 = call i32 @set_single_persistent_default_layer(i32 %26)
  br label %28

28:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %162

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @shift, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KC_LSFT, align 4
  %47 = call i32 @MOD_BIT(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @KC_LSHIFT, align 4
  %52 = call i32 @unregister_code(i32 %51)
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @KC_RSHIFT, align 4
  %55 = call i32 @unregister_code(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @KC_DEL, align 4
  %58 = call i32 @register_code(i32 %57)
  br label %62

59:                                               ; preds = %35
  %60 = load i32, i32* @KC_BSPC, align 4
  %61 = call i32 @register_code(i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %68

63:                                               ; preds = %29
  %64 = load i32, i32* @KC_DEL, align 4
  %65 = call i32 @unregister_code(i32 %64)
  %66 = load i32, i32* @KC_BSPC, align 4
  %67 = call i32 @unregister_code(i32 %66)
  br label %68

68:                                               ; preds = %63, %62
  store i32 0, i32* %3, align 4
  br label %162

69:                                               ; preds = %2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @shift, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KC_LSFT, align 4
  %87 = call i32 @MOD_BIT(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @KC_LSHIFT, align 4
  %92 = call i32 @unregister_code(i32 %91)
  br label %96

93:                                               ; preds = %82
  %94 = load i32, i32* @KC_RSHIFT, align 4
  %95 = call i32 @unregister_code(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @KC_BSLASH, align 4
  %98 = call i32 @register_code(i32 %97)
  br label %102

99:                                               ; preds = %75
  %100 = load i32, i32* @KC_SLSH, align 4
  %101 = call i32 @register_code(i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %108

103:                                              ; preds = %69
  %104 = load i32, i32* @KC_BSLASH, align 4
  %105 = call i32 @unregister_code(i32 %104)
  %106 = load i32, i32* @KC_SLSH, align 4
  %107 = call i32 @unregister_code(i32 %106)
  br label %108

108:                                              ; preds = %103, %102
  store i32 0, i32* %3, align 4
  br label %162

109:                                              ; preds = %2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @shift, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @KC_SLSH, align 4
  %124 = call i32 @register_code(i32 %123)
  br label %128

125:                                              ; preds = %115
  %126 = load i32, i32* @KC_DOT, align 4
  %127 = call i32 @register_code(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %134

129:                                              ; preds = %109
  %130 = load i32, i32* @KC_SLSH, align 4
  %131 = call i32 @unregister_code(i32 %130)
  %132 = load i32, i32* @KC_DOT, align 4
  %133 = call i32 @unregister_code(i32 %132)
  br label %134

134:                                              ; preds = %129, %128
  store i32 0, i32* %3, align 4
  br label %162

135:                                              ; preds = %2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @shift, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @KC_BSLS, align 4
  %150 = call i32 @register_code(i32 %149)
  br label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @KC_COMM, align 4
  %153 = call i32 @register_code(i32 %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %160

155:                                              ; preds = %135
  %156 = load i32, i32* @KC_BSLS, align 4
  %157 = call i32 @unregister_code(i32 %156)
  %158 = load i32, i32* @KC_COMM, align 4
  %159 = call i32 @unregister_code(i32 %158)
  br label %160

160:                                              ; preds = %155, %154
  store i32 0, i32* %3, align 4
  br label %162

161:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %160, %134, %108, %68, %28, %18, %7
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @layer_clear(...) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @register_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
