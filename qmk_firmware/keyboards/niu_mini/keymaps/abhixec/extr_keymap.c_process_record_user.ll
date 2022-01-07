; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/niu_mini/keymaps/abhixec/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/niu_mini/keymaps/abhixec/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"mode just switched to qwerty and this is a huge string\0A\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %83 [
    i32 129, label %7
    i32 131, label %18
    i32 130, label %28
    i32 128, label %49
    i32 132, label %70
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 @print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @_QWERTY, align 4
  %16 = call i32 @set_single_persistent_default_layer(i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @_COLEMAK, align 4
  %26 = call i32 @set_single_persistent_default_layer(i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %84

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @_LOWER, align 4
  %36 = call i32 @layer_on(i32 %35)
  %37 = load i32, i32* @_LOWER, align 4
  %38 = load i32, i32* @_RAISE, align 4
  %39 = load i32, i32* @_ADJUST, align 4
  %40 = call i32 @update_tri_layer(i32 %37, i32 %38, i32 %39)
  br label %48

41:                                               ; preds = %28
  %42 = load i32, i32* @_LOWER, align 4
  %43 = call i32 @layer_off(i32 %42)
  %44 = load i32, i32* @_LOWER, align 4
  %45 = load i32, i32* @_RAISE, align 4
  %46 = load i32, i32* @_ADJUST, align 4
  %47 = call i32 @update_tri_layer(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %84

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @_RAISE, align 4
  %57 = call i32 @layer_on(i32 %56)
  %58 = load i32, i32* @_LOWER, align 4
  %59 = load i32, i32* @_RAISE, align 4
  %60 = load i32, i32* @_ADJUST, align 4
  %61 = call i32 @update_tri_layer(i32 %58, i32 %59, i32 %60)
  br label %69

62:                                               ; preds = %49
  %63 = load i32, i32* @_RAISE, align 4
  %64 = call i32 @layer_off(i32 %63)
  %65 = load i32, i32* @_LOWER, align 4
  %66 = load i32, i32* @_RAISE, align 4
  %67 = load i32, i32* @_ADJUST, align 4
  %68 = call i32 @update_tri_layer(i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  store i32 0, i32* %3, align 4
  br label %84

70:                                               ; preds = %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @KC_RSFT, align 4
  %78 = call i32 @register_code(i32 %77)
  br label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @KC_RSFT, align 4
  %81 = call i32 @unregister_code(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %69, %48, %27, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

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
