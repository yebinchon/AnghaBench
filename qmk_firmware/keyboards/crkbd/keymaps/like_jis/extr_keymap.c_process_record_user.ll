; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/like_jis/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/like_jis/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
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
  switch i32 %9, label %48 [
    i32 131, label %10
    i32 130, label %19
    i32 132, label %28
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
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @_RAISE, align 4
  %25 = load i32, i32* @_LOWER, align 4
  %26 = load i32, i32* @_ADJUST, align 4
  %27 = call i32 @update_change_layer(i32 %23, i32 %24, i32 %25, i32 %26)
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @KC_LANG2, align 4
  %39 = call i32 @register_code(i32 %38)
  br label %43

40:                                               ; preds = %34
  %41 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @SEND_STRING(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %47

44:                                               ; preds = %28
  %45 = load i32, i32* @KC_LANG2, align 4
  %46 = call i32 @unregister_code(i32 %45)
  br label %47

47:                                               ; preds = %44, %43
  br label %49

48:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %19, %10
  %50 = call i32 (...) @UPDATE_KEYMAP_STATUS()
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @UPDATE_KEY_STATUS(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @update_change_layer(i32, i32, i32, i32) #1

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
