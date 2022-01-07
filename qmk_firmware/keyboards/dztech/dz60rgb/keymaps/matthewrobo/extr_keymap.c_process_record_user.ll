; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/matthewrobo/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/matthewrobo/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@process_record_user.key_timer = internal global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %124 [
    i32 128, label %7
    i32 137, label %34
    i32 132, label %43
    i32 131, label %52
    i32 135, label %61
    i32 138, label %70
    i32 136, label %79
    i32 133, label %88
    i32 129, label %97
    i32 134, label %106
    i32 130, label %115
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 (...) @timer_read32()
  store i32 %14, i32* @process_record_user.key_timer, align 4
  br label %33

15:                                               ; preds = %7
  %16 = load i32, i32* @process_record_user.key_timer, align 4
  %17 = call i32 @timer_elapsed32(i32 %16)
  %18 = icmp sge i32 %17, 500
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = call i32 (...) @rgb_matrix_enable_noeeprom()
  %21 = call i32 @rgb_matrix_mode_noeeprom(i32 1)
  %22 = call i32 @rgb_matrix_sethsv_noeeprom(i32 11, i32 11, i32 11)
  %23 = call i32 @wait_ms(i32 150)
  %24 = call i32 (...) @reset_keyboard()
  br label %32

25:                                               ; preds = %15
  %26 = load i32, i32* @KC_RCTL, align 4
  %27 = call i32 @register_code(i32 %26)
  %28 = load i32, i32* @KC_B, align 4
  %29 = call i32 @tap_code(i32 %28)
  %30 = load i32, i32* @KC_RCTL, align 4
  %31 = call i32 @unregister_code(i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  br label %33

33:                                               ; preds = %32, %13
  store i32 0, i32* %3, align 4
  br label %125

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @rgb_matrix_sethsv(i32 32, i32 160, i32 255)
  br label %42

42:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %125

43:                                               ; preds = %2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @rgb_matrix_sethsv(i32 192, i32 112, i32 255)
  br label %51

51:                                               ; preds = %49, %43
  store i32 0, i32* %3, align 4
  br label %125

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @rgb_matrix_sethsv(i32 0, i32 255, i32 255)
  br label %60

60:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %125

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 @rgb_matrix_sethsv(i32 88, i32 255, i32 255)
  br label %69

69:                                               ; preds = %67, %61
  store i32 0, i32* %3, align 4
  br label %125

70:                                               ; preds = %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @rgb_matrix_sethsv(i32 168, i32 255, i32 255)
  br label %78

78:                                               ; preds = %76, %70
  store i32 0, i32* %3, align 4
  br label %125

79:                                               ; preds = %2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @rgb_matrix_sethsv(i32 128, i32 255, i32 255)
  br label %87

87:                                               ; preds = %85, %79
  store i32 0, i32* %3, align 4
  br label %125

88:                                               ; preds = %2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @rgb_matrix_sethsv(i32 216, i32 255, i32 255)
  br label %96

96:                                               ; preds = %94, %88
  store i32 0, i32* %3, align 4
  br label %125

97:                                               ; preds = %2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @rgb_matrix_sethsv(i32 40, i32 255, i32 255)
  br label %105

105:                                              ; preds = %103, %97
  store i32 0, i32* %3, align 4
  br label %125

106:                                              ; preds = %2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 @rgb_matrix_sethsv(i32 0, i32 0, i32 0)
  br label %114

114:                                              ; preds = %112, %106
  store i32 0, i32* %3, align 4
  br label %125

115:                                              ; preds = %2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 @rgb_matrix_sethsv(i32 128, i32 0, i32 255)
  br label %123

123:                                              ; preds = %121, %115
  store i32 0, i32* %3, align 4
  br label %125

124:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @rgb_matrix_enable_noeeprom(...) #1

declare dso_local i32 @rgb_matrix_mode_noeeprom(i32) #1

declare dso_local i32 @rgb_matrix_sethsv_noeeprom(i32, i32, i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgb_matrix_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
