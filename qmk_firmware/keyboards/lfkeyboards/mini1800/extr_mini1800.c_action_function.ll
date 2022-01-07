; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/mini1800/extr_mini1800.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/mini1800/extr_mini1800.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LFK_ESC_TILDE = common dso_local global i32 0, align 4
@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@KC_GRAVE = common dso_local global i32 0, align 4
@KC_ESCAPE = common dso_local global i32 0, align 4
@my_song = common dso_local global i32 0, align 4
@click_hz = common dso_local global i32 0, align 4
@click_time = common dso_local global i32 0, align 4
@click_toggle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca void (i32)*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LFK_ESC_TILDE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, void (i32)* @add_key, void (i32)* @del_key
  store void (i32)* %19, void (i32)** %7, align 8
  %20 = call i32 (...) @get_mods()
  %21 = load i32, i32* @KC_LSHIFT, align 4
  %22 = call i32 @MOD_BIT(i32 %21)
  %23 = load i32, i32* @KC_RSHIFT, align 4
  %24 = call i32 @MOD_BIT(i32 %23)
  %25 = or i32 %22, %24
  %26 = and i32 %20, %25
  store i32 %26, i32* %8, align 4
  %27 = load void (i32)*, void (i32)** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = load i32, i32* @KC_GRAVE, align 4
  br label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @KC_ESCAPE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  call void %27(i32 %35)
  %36 = call i32 (...) @send_keyboard_report()
  br label %61

37:                                               ; preds = %3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %59 [
    i32 128, label %45
    i32 136, label %54
    i32 129, label %56
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 1, %47
  %49 = call i32 @eeconfig_update_default_layer(i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = call i32 @default_layer_set(i64 %52)
  br label %54

54:                                               ; preds = %43, %45
  %55 = call i32 (...) @layer_clear()
  br label %59

56:                                               ; preds = %43
  %57 = load i32, i32* @my_song, align 4
  %58 = call i32 @PLAY_SONG(i32 %57)
  br label %59

59:                                               ; preds = %43, %56, %54
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %34
  ret void
}

declare dso_local void @add_key(i32) #1

declare dso_local void @del_key(i32) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @eeconfig_update_default_layer(i64) #1

declare dso_local i32 @default_layer_set(i64) #1

declare dso_local i32 @layer_clear(...) #1

declare dso_local i32 @PLAY_SONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
