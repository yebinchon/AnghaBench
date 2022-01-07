; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/roguepullrequest/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/roguepullrequest/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@process_record_user.macro_timer = internal global i32 0, align 4
@is_alt_tab_active = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@alt_tab_timer = common dso_local global i8* null, align 8
@KC_TAB = common dso_local global i32 0, align 4
@KC_LCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"!$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %27 [
    i32 129, label %7
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load i32, i32* @is_alt_tab_active, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  store i32 1, i32* @is_alt_tab_active, align 4
  %17 = load i32, i32* @KC_LALT, align 4
  %18 = call i32 @register_code(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i8* (...) @timer_read()
  store i8* %20, i8** @alt_tab_timer, align 8
  %21 = load i32, i32* @KC_TAB, align 4
  %22 = call i32 @register_code(i32 %21)
  br label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @KC_TAB, align 4
  %25 = call i32 @unregister_code(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %2, %26
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %52 [
    i32 128, label %29
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = call i8* (...) @timer_read()
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* @process_record_user.macro_timer, align 4
  %38 = load i32, i32* @KC_LCTRL, align 4
  %39 = call i32 @MOD_BIT(i32 %38)
  %40 = call i32 @register_mods(i32 %39)
  br label %51

41:                                               ; preds = %29
  %42 = load i32, i32* @KC_LCTRL, align 4
  %43 = call i32 @MOD_BIT(i32 %42)
  %44 = call i32 @unregister_mods(i32 %43)
  %45 = load i32, i32* @process_record_user.macro_timer, align 4
  %46 = call i32 @timer_elapsed(i32 %45)
  %47 = icmp slt i32 %46, 150
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  br label %51

51:                                               ; preds = %50, %35
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i8* @timer_read(...) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
