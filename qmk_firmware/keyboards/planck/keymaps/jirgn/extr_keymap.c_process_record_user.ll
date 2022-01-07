; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jirgn/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jirgn/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"mode just switched to qwerty and this is a huge string\0A\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@plover_gb_song = common dso_local global i32 0, align 4
@plover_song = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %94 [
    i32 129, label %7
    i32 131, label %18
    i32 128, label %39
    i32 130, label %60
    i32 132, label %84
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
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
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @_LOWER, align 4
  %26 = call i32 @layer_on(i32 %25)
  %27 = load i32, i32* @_LOWER, align 4
  %28 = load i32, i32* @_RAISE, align 4
  %29 = load i32, i32* @_ADJUST, align 4
  %30 = call i32 @update_tri_layer(i32 %27, i32 %28, i32 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @_LOWER, align 4
  %33 = call i32 @layer_off(i32 %32)
  %34 = load i32, i32* @_LOWER, align 4
  %35 = load i32, i32* @_RAISE, align 4
  %36 = load i32, i32* @_ADJUST, align 4
  %37 = call i32 @update_tri_layer(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %95

39:                                               ; preds = %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @_RAISE, align 4
  %47 = call i32 @layer_on(i32 %46)
  %48 = load i32, i32* @_LOWER, align 4
  %49 = load i32, i32* @_RAISE, align 4
  %50 = load i32, i32* @_ADJUST, align 4
  %51 = call i32 @update_tri_layer(i32 %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @_RAISE, align 4
  %54 = call i32 @layer_off(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  store i32 0, i32* %3, align 4
  br label %95

60:                                               ; preds = %2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i32, i32* @_RAISE, align 4
  %68 = call i32 @layer_off(i32 %67)
  %69 = load i32, i32* @_LOWER, align 4
  %70 = call i32 @layer_off(i32 %69)
  %71 = load i32, i32* @_ADJUST, align 4
  %72 = call i32 @layer_off(i32 %71)
  %73 = load i32, i32* @_PLOVER, align 4
  %74 = call i32 @layer_on(i32 %73)
  %75 = call i32 (...) @eeconfig_is_enabled()
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = call i32 (...) @eeconfig_init()
  br label %79

79:                                               ; preds = %77, %66
  %80 = call i32 (...) @eeconfig_read_keymap()
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %82 = call i32 @eeconfig_update_keymap(i32 %81)
  br label %83

83:                                               ; preds = %79, %60
  store i32 0, i32* %3, align 4
  br label %95

84:                                               ; preds = %2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @_PLOVER, align 4
  %92 = call i32 @layer_off(i32 %91)
  br label %93

93:                                               ; preds = %90, %84
  store i32 0, i32* %3, align 4
  br label %95

94:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %93, %83, %59, %38, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
