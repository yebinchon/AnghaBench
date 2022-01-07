; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/model42/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/model42/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LT_1_OR_RELOAD_CHROME = common dso_local global i64 0, align 8
@custom_lt_timer = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@KC_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* @LT_1_OR_RELOAD_CHROME, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call i32 (...) @timer_read()
  store i32 %15, i32* @custom_lt_timer, align 4
  %16 = call i32 @layer_on(i32 1)
  br label %36

17:                                               ; preds = %8
  %18 = call i32 @layer_off(i32 1)
  %19 = load i32, i32* @custom_lt_timer, align 4
  %20 = call i32 @timer_elapsed(i32 %19)
  %21 = icmp slt i32 %20, 200
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* @KC_LGUI, align 4
  %24 = call i32 @register_code(i32 %23)
  %25 = load i32, i32* @KC_RSHIFT, align 4
  %26 = call i32 @register_code(i32 %25)
  %27 = load i32, i32* @KC_R, align 4
  %28 = call i32 @register_code(i32 %27)
  %29 = load i32, i32* @KC_R, align 4
  %30 = call i32 @unregister_code(i32 %29)
  %31 = load i32, i32* @KC_RSHIFT, align 4
  %32 = call i32 @unregister_code(i32 %31)
  %33 = load i32, i32* @KC_LGUI, align 4
  %34 = call i32 @unregister_code(i32 %33)
  br label %35

35:                                               ; preds = %22, %17
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %36, %2
  ret i32 1
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
