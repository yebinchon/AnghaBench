; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stepping backlight\0A\00", align 1
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %114 [
    i32 130, label %7
    i32 133, label %15
    i32 132, label %23
    i32 131, label %31
    i32 129, label %61
    i32 136, label %91
    i32 134, label %104
    i32 135, label %105
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %115

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %115

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32, i32* @TOG_STATUS, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @TOG_STATUS, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* @TOG_STATUS, align 4
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i32, i32* @_LOWER, align 4
  %48 = call i32 @layer_on(i32 %47)
  %49 = load i32, i32* @_LOWER, align 4
  %50 = load i32, i32* @_RAISE, align 4
  %51 = load i32, i32* @_ADJUST, align 4
  %52 = call i32 @update_tri_layer_RGB(i32 %49, i32 %50, i32 %51)
  br label %60

53:                                               ; preds = %31
  store i32 0, i32* @TOG_STATUS, align 4
  %54 = load i32, i32* @_LOWER, align 4
  %55 = call i32 @layer_off(i32 %54)
  %56 = load i32, i32* @_LOWER, align 4
  %57 = load i32, i32* @_RAISE, align 4
  %58 = load i32, i32* @_ADJUST, align 4
  %59 = call i32 @update_tri_layer_RGB(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  store i32 0, i32* %3, align 4
  br label %115

61:                                               ; preds = %2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i32, i32* @TOG_STATUS, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @TOG_STATUS, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* @TOG_STATUS, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* @_RAISE, align 4
  %78 = call i32 @layer_on(i32 %77)
  %79 = load i32, i32* @_LOWER, align 4
  %80 = load i32, i32* @_RAISE, align 4
  %81 = load i32, i32* @_ADJUST, align 4
  %82 = call i32 @update_tri_layer_RGB(i32 %79, i32 %80, i32 %81)
  br label %90

83:                                               ; preds = %61
  %84 = load i32, i32* @_RAISE, align 4
  %85 = call i32 @layer_off(i32 %84)
  store i32 0, i32* @TOG_STATUS, align 4
  %86 = load i32, i32* @_LOWER, align 4
  %87 = load i32, i32* @_RAISE, align 4
  %88 = load i32, i32* @_ADJUST, align 4
  %89 = call i32 @update_tri_layer_RGB(i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %76
  store i32 0, i32* %3, align 4
  br label %115

91:                                               ; preds = %2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @_ADJUST, align 4
  %99 = call i32 @layer_on(i32 %98)
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @_ADJUST, align 4
  %102 = call i32 @layer_off(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %3, align 4
  br label %115

104:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

105:                                              ; preds = %2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  store i32 0, i32* %3, align 4
  br label %115

114:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %113, %104, %103, %90, %60, %30, %22, %14
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
