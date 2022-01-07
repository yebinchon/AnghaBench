; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/keymaps/priyadi/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/keymaps/priyadi/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UC_LNX = common dso_local global i32 0, align 4
@OUTPUT_BLUETOOTH = common dso_local global i64 0, align 8
@OUTPUT_USB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = call i32 @wait_ms(i32 500)
  %2 = load i32, i32* @UC_LNX, align 4
  %3 = call i32 @set_unicode_input_mode(i32 %2)
  ret void
}

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @set_unicode_input_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
