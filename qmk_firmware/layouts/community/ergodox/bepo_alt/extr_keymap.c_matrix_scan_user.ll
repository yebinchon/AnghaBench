; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_alt/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_alt/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@keyboard_report = common dso_local global %struct.TYPE_2__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@FNAV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @KC_LSFT, align 4
  %5 = call i32 @MOD_BIT(i32 %4)
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @get_oneshot_mods()
  %10 = load i32, i32* @KC_LSFT, align 4
  %11 = call i32 @MOD_BIT(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = call i32 (...) @has_oneshot_mods_timed_out()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %0
  %18 = call i32 @indicate_using_led(i32 1, i32 1)
  br label %21

19:                                               ; preds = %14, %8
  %20 = call i32 @indicate_using_led(i32 1, i32 0)
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KC_LALT, align 4
  %26 = call i32 @MOD_BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = call i32 (...) @get_oneshot_mods()
  %31 = load i32, i32* @KC_LALT, align 4
  %32 = call i32 @MOD_BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = call i32 (...) @has_oneshot_mods_timed_out()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %21
  %39 = call i32 @indicate_using_led(i32 2, i32 1)
  br label %42

40:                                               ; preds = %35, %29
  %41 = call i32 @indicate_using_led(i32 2, i32 0)
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* @FNAV, align 4
  %44 = call i64 @IS_LAYER_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @indicate_using_led(i32 3, i32 1)
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @indicate_using_led(i32 3, i32 0)
  br label %50

50:                                               ; preds = %48, %46
  ret void
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @has_oneshot_mods_timed_out(...) #1

declare dso_local i32 @indicate_using_led(i32, i32) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
