; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_hangulin.c_hangul_input_state_toggle.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_hangulin.c_hangul_input_state_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@composing_hangul = common dso_local global i64 0, align 8
@composing_hangul_buffer = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hangul_input_state_toggle() #0 {
  %1 = call i64 (...) @hangul_input_state_get()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = call i32 @hangul_input_state_set(i32 0)
  %5 = load i64, i64* @composing_hangul, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, i32* @composing_hangul_buffer, align 4
  %9 = call i32 @push_raw_key(i32 %8, i32 2)
  store i64 0, i64* @composing_hangul, align 8
  br label %10

10:                                               ; preds = %7, %3
  br label %13

11:                                               ; preds = %0
  %12 = call i32 @hangul_input_state_set(i32 1)
  br label %13

13:                                               ; preds = %11, %10
  %14 = call i64 (...) @showmode()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 (...) @setcursor()
  %18 = call i32 (...) @out_flush()
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @gui_update_cursor(i32 %20, i32 %21)
  ret void
}

declare dso_local i64 @hangul_input_state_get(...) #1

declare dso_local i32 @hangul_input_state_set(i32) #1

declare dso_local i32 @push_raw_key(i32, i32) #1

declare dso_local i64 @showmode(...) #1

declare dso_local i32 @setcursor(...) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @gui_update_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
