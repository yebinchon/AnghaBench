; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LESC = common dso_local global i32 0, align 4
@sstate = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@rgb = common dso_local global i32 0, align 4
@l_state = common dso_local global i32 0, align 4
@S_COLEMAK = common dso_local global i32 0, align 4
@_CM = common dso_local global i32 0, align 4
@S_ENGLISH = common dso_local global i32 0, align 4
@S_CRUSSIAN = common dso_local global i32 0, align 4
@S_QRUSSIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LESC, align 4
  %7 = call i32 @TD(i32 %6)
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* @sstate, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %132 [
    i32 128, label %12
    i32 129, label %19
    i32 130, label %26
    i32 131, label %39
    i32 133, label %52
    i32 132, label %92
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @speed, align 4
  %14 = icmp sgt i32 %13, 25
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @speed, align 4
  %17 = sub nsw i32 %16, 25
  store i32 %17, i32* @speed, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %132

19:                                               ; preds = %10
  %20 = load i32, i32* @speed, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @speed, align 4
  %24 = add nsw i32 %23, 25
  store i32 %24, i32* @speed, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %132

26:                                               ; preds = %10
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @rgb, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* @rgb, align 4
  %37 = call i32 (...) @update_led_state_c()
  br label %38

38:                                               ; preds = %32, %26
  br label %132

39:                                               ; preds = %10
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @rgb, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 0
  store i32 %49, i32* @rgb, align 4
  %50 = call i32 (...) @update_led_state_c()
  br label %51

51:                                               ; preds = %45, %39
  br label %132

52:                                               ; preds = %10
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = load i32, i32* @l_state, align 4
  %60 = load i32, i32* @S_COLEMAK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @_CM, align 4
  %64 = call i32 @layer_off(i32 %63)
  %65 = load i32, i32* @S_ENGLISH, align 4
  store i32 %65, i32* @l_state, align 4
  br label %89

66:                                               ; preds = %58
  %67 = load i32, i32* @l_state, align 4
  %68 = load i32, i32* @S_ENGLISH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @_CM, align 4
  %72 = call i32 @layer_on(i32 %71)
  %73 = load i32, i32* @S_COLEMAK, align 4
  store i32 %73, i32* @l_state, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load i32, i32* @l_state, align 4
  %76 = load i32, i32* @S_CRUSSIAN, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @S_QRUSSIAN, align 4
  store i32 %79, i32* @l_state, align 4
  br label %87

80:                                               ; preds = %74
  %81 = load i32, i32* @l_state, align 4
  %82 = load i32, i32* @S_QRUSSIAN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @S_CRUSSIAN, align 4
  store i32 %85, i32* @l_state, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %78
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %52
  %91 = call i32 (...) @update_led_state_c()
  br label %132

92:                                               ; preds = %10
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %92
  %99 = load i32, i32* @l_state, align 4
  %100 = load i32, i32* @S_ENGLISH, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @S_QRUSSIAN, align 4
  store i32 %103, i32* @l_state, align 4
  br label %129

104:                                              ; preds = %98
  %105 = load i32, i32* @l_state, align 4
  %106 = load i32, i32* @S_QRUSSIAN, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @S_ENGLISH, align 4
  store i32 %109, i32* @l_state, align 4
  br label %128

110:                                              ; preds = %104
  %111 = load i32, i32* @l_state, align 4
  %112 = load i32, i32* @S_COLEMAK, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @_CM, align 4
  %116 = call i32 @layer_off(i32 %115)
  %117 = load i32, i32* @S_CRUSSIAN, align 4
  store i32 %117, i32* @l_state, align 4
  br label %127

118:                                              ; preds = %110
  %119 = load i32, i32* @l_state, align 4
  %120 = load i32, i32* @S_CRUSSIAN, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @_CM, align 4
  %124 = call i32 @layer_on(i32 %123)
  %125 = load i32, i32* @S_COLEMAK, align 4
  store i32 %125, i32* @l_state, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %102
  %130 = call i32 (...) @update_led_state_c()
  br label %131

131:                                              ; preds = %129, %92
  br label %132

132:                                              ; preds = %10, %131, %90, %51, %38, %25, %18
  ret i32 1
}

declare dso_local i32 @TD(i32) #1

declare dso_local i32 @update_led_state_c(...) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
