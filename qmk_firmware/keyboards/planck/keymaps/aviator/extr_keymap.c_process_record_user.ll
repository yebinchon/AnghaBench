; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/aviator/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/aviator/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_DATA = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@default_layer_state = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %114 [
    i32 129, label %11
    i32 131, label %21
    i32 130, label %31
    i32 128, label %66
    i32 132, label %101
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @_QWERTY, align 4
  %19 = call i32 @set_single_persistent_default_layer(i32 %18)
  br label %20

20:                                               ; preds = %17, %11
  store i32 0, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @_DATA, align 4
  %29 = call i32 @set_single_persistent_default_layer(i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  store i32 0, i32* %3, align 4
  br label %115

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32, i32* @_LOWER, align 4
  %39 = call i32 @layer_on(i32 %38)
  %40 = load i32, i32* @default_layer_state, align 4
  %41 = call i32 @biton32(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @_QWERTY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* @_LOWER, align 4
  %48 = load i32, i32* @_RAISE, align 4
  %49 = load i32, i32* @_ADJUST, align 4
  %50 = call i32 @update_tri_layer(i32 %47, i32 %48, i32 %49)
  br label %65

51:                                               ; preds = %31
  %52 = load i32, i32* @_LOWER, align 4
  %53 = call i32 @layer_off(i32 %52)
  %54 = load i32, i32* @default_layer_state, align 4
  %55 = call i32 @biton32(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @_QWERTY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %46
  store i32 0, i32* %3, align 4
  br label %115

66:                                               ; preds = %2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i32, i32* @_RAISE, align 4
  %74 = call i32 @layer_on(i32 %73)
  %75 = load i32, i32* @default_layer_state, align 4
  %76 = call i32 @biton32(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @_QWERTY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %72
  %82 = load i32, i32* @_LOWER, align 4
  %83 = load i32, i32* @_RAISE, align 4
  %84 = load i32, i32* @_ADJUST, align 4
  %85 = call i32 @update_tri_layer(i32 %82, i32 %83, i32 %84)
  br label %100

86:                                               ; preds = %66
  %87 = load i32, i32* @_RAISE, align 4
  %88 = call i32 @layer_off(i32 %87)
  %89 = load i32, i32* @default_layer_state, align 4
  %90 = call i32 @biton32(i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @_QWERTY, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* @_LOWER, align 4
  %97 = load i32, i32* @_RAISE, align 4
  %98 = load i32, i32* @_ADJUST, align 4
  %99 = call i32 @update_tri_layer(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %81
  store i32 0, i32* %3, align 4
  br label %115

101:                                              ; preds = %2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @KC_RSFT, align 4
  %109 = call i32 @register_code(i32 %108)
  br label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @KC_RSFT, align 4
  %112 = call i32 @unregister_code(i32 %111)
  br label %113

113:                                              ; preds = %110, %107
  store i32 0, i32* %3, align 4
  br label %115

114:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %113, %100, %65, %30, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
