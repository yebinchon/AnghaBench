; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sgoodwin/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sgoodwin/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %84 [
    i32 129, label %7
    i32 131, label %18
    i32 130, label %29
    i32 128, label %50
    i32 132, label %71
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @_COLEMAK, align 8
  %26 = shl i64 1, %25
  %27 = call i32 @persistent_default_layer_set(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @_LOWER, align 4
  %37 = call i32 @layer_on(i32 %36)
  %38 = load i32, i32* @_LOWER, align 4
  %39 = load i32, i32* @_RAISE, align 4
  %40 = load i32, i32* @_ADJUST, align 4
  %41 = call i32 @update_tri_layer(i32 %38, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* @_LOWER, align 4
  %44 = call i32 @layer_off(i32 %43)
  %45 = load i32, i32* @_LOWER, align 4
  %46 = load i32, i32* @_RAISE, align 4
  %47 = load i32, i32* @_ADJUST, align 4
  %48 = call i32 @update_tri_layer(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  store i32 0, i32* %3, align 4
  br label %85

50:                                               ; preds = %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @_RAISE, align 4
  %58 = call i32 @layer_on(i32 %57)
  %59 = load i32, i32* @_LOWER, align 4
  %60 = load i32, i32* @_RAISE, align 4
  %61 = load i32, i32* @_ADJUST, align 4
  %62 = call i32 @update_tri_layer(i32 %59, i32 %60, i32 %61)
  br label %70

63:                                               ; preds = %50
  %64 = load i32, i32* @_RAISE, align 4
  %65 = call i32 @layer_off(i32 %64)
  %66 = load i32, i32* @_LOWER, align 4
  %67 = load i32, i32* @_RAISE, align 4
  %68 = load i32, i32* @_ADJUST, align 4
  %69 = call i32 @update_tri_layer(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  store i32 0, i32* %3, align 4
  br label %85

71:                                               ; preds = %2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @KC_RSFT, align 4
  %79 = call i32 @register_code(i32 %78)
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @KC_RSFT, align 4
  %82 = call i32 @unregister_code(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %70, %49, %28, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

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
