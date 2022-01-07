; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/treadstone48/keymaps/like_jis_rs/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/treadstone48/keymaps/like_jis_rs/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@L_BASE = common dso_local global i32 0, align 4
@L_BASES = common dso_local global i32 0, align 4
@_LOWRS = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @UPDATE_KEY_STATUS(i32 %6, %struct.TYPE_8__* %7)
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %77 [
    i32 132, label %10
    i32 130, label %19
    i32 135, label %28
    i32 134, label %38
    i32 131, label %48
    i32 133, label %57
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @_LOWER, align 4
  %16 = load i32, i32* @_RAISE, align 4
  %17 = load i32, i32* @_ADJUST, align 4
  %18 = call i32 @update_change_layer(i32 %14, i32 %15, i32 %16, i32 %17)
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @_RAISE, align 4
  %25 = load i32, i32* @_LOWER, align 4
  %26 = load i32, i32* @_ADJUST, align 4
  %27 = call i32 @update_change_layer(i32 %23, i32 %24, i32 %25, i32 %26)
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @L_BASE, align 4
  %36 = call i32 @default_layer_set(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %78

38:                                               ; preds = %2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @L_BASES, align 4
  %46 = call i32 @default_layer_set(i32 %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %78

48:                                               ; preds = %2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @_LOWRS, align 4
  %54 = load i32, i32* @_RAISE, align 4
  %55 = load i32, i32* @_ADJUST, align 4
  %56 = call i32 @update_change_layer(i32 %52, i32 %53, i32 %54, i32 %55)
  br label %78

57:                                               ; preds = %2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @KC_LANG2, align 4
  %68 = call i32 @register_code(i32 %67)
  br label %72

69:                                               ; preds = %63
  %70 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @SEND_STRING(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @KC_LANG2, align 4
  %75 = call i32 @unregister_code(i32 %74)
  br label %76

76:                                               ; preds = %73, %72
  br label %78

77:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76, %48, %47, %37, %19, %10
  %79 = call i32 (...) @UPDATE_KEYMAP_STATUS()
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @UPDATE_KEY_STATUS(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @update_change_layer(i32, i32, i32, i32) #1

declare dso_local i32 @default_layer_set(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_LALT(i8*) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @UPDATE_KEYMAP_STATUS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
