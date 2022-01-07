; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mt980/keymaps/walker/extr_keymap.c_process_record_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mt980/keymaps/walker/extr_keymap.c_process_record_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ONESHOT_OTHER_KEY_PRESSED = common dso_local global i32 0, align 4
@numlock_on = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@KC_HOME = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@KC_PGUP = common dso_local global i32 0, align 4
@KC_END = common dso_local global i32 0, align 4
@KC_PGDN = common dso_local global i32 0, align 4
@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_INS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_keymap(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %142 [
    i32 129, label %7
    i32 132, label %7
    i32 128, label %20
    i32 130, label %33
    i32 131, label %73
    i32 133, label %113
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = call i32 (...) @is_oneshot_layer_active()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @ONESHOT_OTHER_KEY_PRESSED, align 4
  %18 = call i32 @clear_oneshot_layer_state(i32 %17)
  br label %19

19:                                               ; preds = %16, %13, %7
  store i32 1, i32* %3, align 4
  br label %143

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = call i32 (...) @is_oneshot_layer_active()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ONESHOT_OTHER_KEY_PRESSED, align 4
  %31 = call i32 @clear_oneshot_layer_state(i32 %30)
  store i32 0, i32* %3, align 4
  br label %143

32:                                               ; preds = %26, %20
  store i32 1, i32* %3, align 4
  br label %143

33:                                               ; preds = %2
  %34 = load i32, i32* @numlock_on, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @is_oneshot_layer_active()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @layer_state, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @KC_HOME, align 4
  %51 = call i32 @register_code(i32 %50)
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @KC_HOME, align 4
  %54 = call i32 @unregister_code(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @ONESHOT_START, align 4
  %57 = call i32 @clear_oneshot_layer_state(i32 %56)
  br label %71

58:                                               ; preds = %39
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @KC_PGUP, align 4
  %66 = call i32 @register_code(i32 %65)
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @KC_PGUP, align 4
  %69 = call i32 @unregister_code(i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %55
  store i32 0, i32* %3, align 4
  br label %143

72:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %143

73:                                               ; preds = %2
  %74 = load i32, i32* @numlock_on, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %73
  %77 = call i32 (...) @is_oneshot_layer_active()
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @layer_state, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %79, %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @KC_END, align 4
  %91 = call i32 @register_code(i32 %90)
  br label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @KC_END, align 4
  %94 = call i32 @unregister_code(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @ONESHOT_START, align 4
  %97 = call i32 @clear_oneshot_layer_state(i32 %96)
  br label %111

98:                                               ; preds = %79
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @KC_PGDN, align 4
  %106 = call i32 @register_code(i32 %105)
  br label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @KC_PGDN, align 4
  %109 = call i32 @unregister_code(i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %95
  store i32 0, i32* %3, align 4
  br label %143

112:                                              ; preds = %73
  store i32 1, i32* %3, align 4
  br label %143

113:                                              ; preds = %2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @KC_LSFT, align 4
  %118 = call i32 @MOD_BIT(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @KC_RSFT, align 4
  %126 = call i32 @MOD_BIT(i32 %125)
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %121, %113
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32, i32* @KC_INS, align 4
  %137 = call i32 @register_code(i32 %136)
  %138 = load i32, i32* @KC_INS, align 4
  %139 = call i32 @unregister_code(i32 %138)
  br label %140

140:                                              ; preds = %135, %129
  store i32 0, i32* %3, align 4
  br label %143

141:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %143

142:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %141, %140, %112, %111, %72, %71, %32, %29, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @is_oneshot_layer_active(...) #1

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
