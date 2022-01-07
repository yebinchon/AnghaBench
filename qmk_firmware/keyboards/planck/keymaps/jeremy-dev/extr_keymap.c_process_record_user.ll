; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jeremy-dev/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jeremy-dev/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_LGUI = common dso_local global i32 0, align 4
@KC_RGHT = common dso_local global i32 0, align 4
@KC_ENT = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@KC_UP = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_SLSH = common dso_local global i32 0, align 4
@KC_EQL = common dso_local global i32 0, align 4
@KC_ASTR = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_PLUS = common dso_local global i32 0, align 4
@KC_EXLM = common dso_local global i32 0, align 4
@KC_LABK = common dso_local global i32 0, align 4
@KC_RABK = common dso_local global i32 0, align 4
@KC_PIPE = common dso_local global i32 0, align 4
@KC_AMPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %152 [
    i32 137, label %7
    i32 138, label %20
    i32 128, label %35
    i32 135, label %47
    i32 132, label %59
    i32 129, label %72
    i32 130, label %84
    i32 131, label %97
    i32 133, label %110
    i32 134, label %124
    i32 136, label %138
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i32, i32* @KC_LGUI, align 4
  %15 = load i32, i32* @KC_RGHT, align 4
  %16 = call i32 @press_two_keys(i32 %14, i32 %15)
  %17 = load i32, i32* @KC_ENT, align 4
  %18 = call i32 @press_key(i32 %17)
  br label %19

19:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %153

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @KC_LGUI, align 4
  %28 = load i32, i32* @KC_LEFT, align 4
  %29 = call i32 @press_two_keys(i32 %27, i32 %28)
  %30 = load i32, i32* @KC_ENT, align 4
  %31 = call i32 @press_key(i32 %30)
  %32 = load i32, i32* @KC_UP, align 4
  %33 = call i32 @press_key(i32 %32)
  br label %34

34:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %153

35:                                               ; preds = %2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @KC_LGUI, align 4
  %43 = load i32, i32* @KC_LSFT, align 4
  %44 = load i32, i32* @KC_ENT, align 4
  %45 = call i32 @press_three_keys(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  store i32 0, i32* %3, align 4
  br label %153

47:                                               ; preds = %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @KC_SLSH, align 4
  %55 = call i32 @press_key(i32 %54)
  %56 = load i32, i32* @KC_EQL, align 4
  %57 = call i32 @press_key(i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %153

59:                                               ; preds = %2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @KC_LSFT, align 4
  %67 = load i32, i32* @KC_ASTR, align 4
  %68 = call i32 @press_two_keys(i32 %66, i32 %67)
  %69 = load i32, i32* @KC_EQL, align 4
  %70 = call i32 @press_key(i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %153

72:                                               ; preds = %2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @KC_MINS, align 4
  %80 = call i32 @press_key(i32 %79)
  %81 = load i32, i32* @KC_EQL, align 4
  %82 = call i32 @press_key(i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  store i32 0, i32* %3, align 4
  br label %153

84:                                               ; preds = %2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @KC_LSFT, align 4
  %92 = load i32, i32* @KC_PLUS, align 4
  %93 = call i32 @press_two_keys(i32 %91, i32 %92)
  %94 = load i32, i32* @KC_EQL, align 4
  %95 = call i32 @press_key(i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  store i32 0, i32* %3, align 4
  br label %153

97:                                               ; preds = %2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* @KC_LSFT, align 4
  %105 = load i32, i32* @KC_EXLM, align 4
  %106 = call i32 @press_two_keys(i32 %104, i32 %105)
  %107 = load i32, i32* @KC_EQL, align 4
  %108 = call i32 @press_key(i32 %107)
  br label %109

109:                                              ; preds = %103, %97
  store i32 0, i32* %3, align 4
  br label %153

110:                                              ; preds = %2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @KC_LSFT, align 4
  %118 = load i32, i32* @KC_LABK, align 4
  %119 = call i32 @press_two_keys(i32 %117, i32 %118)
  %120 = load i32, i32* @KC_LSFT, align 4
  %121 = load i32, i32* @KC_RABK, align 4
  %122 = call i32 @press_two_keys(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %110
  store i32 0, i32* %3, align 4
  br label %153

124:                                              ; preds = %2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @KC_LSFT, align 4
  %132 = load i32, i32* @KC_PIPE, align 4
  %133 = call i32 @press_two_keys(i32 %131, i32 %132)
  %134 = load i32, i32* @KC_LSFT, align 4
  %135 = load i32, i32* @KC_PIPE, align 4
  %136 = call i32 @press_two_keys(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %124
  store i32 0, i32* %3, align 4
  br label %153

138:                                              ; preds = %2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* @KC_LSFT, align 4
  %146 = load i32, i32* @KC_AMPR, align 4
  %147 = call i32 @press_two_keys(i32 %145, i32 %146)
  %148 = load i32, i32* @KC_LSFT, align 4
  %149 = load i32, i32* @KC_AMPR, align 4
  %150 = call i32 @press_two_keys(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %144, %138
  store i32 0, i32* %3, align 4
  br label %153

152:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %151, %137, %123, %109, %96, %83, %71, %58, %46, %34, %19
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @press_two_keys(i32, i32) #1

declare dso_local i32 @press_key(i32) #1

declare dso_local i32 @press_three_keys(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
