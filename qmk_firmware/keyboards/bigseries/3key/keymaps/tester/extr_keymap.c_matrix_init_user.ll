; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/3key/keymaps/tester/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/3key/keymaps/tester/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Initializing in matrix_scan_user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = load i32, i32* @initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = call i32 @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @rgblight_disable()
  %6 = call i32 (...) @rgblight_init()
  %7 = call i32 (...) @rgblight_enable()
  %8 = call i32 @rgblight_sethsv(i32 0, i32 0, i32 255)
  %9 = call i32 @rgblight_mode(i32 35)
  store i32 1, i32* @initialized, align 4
  br label %10

10:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @rgblight_disable(...) #1

declare dso_local i32 @rgblight_init(...) #1

declare dso_local i32 @rgblight_enable(...) #1

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
