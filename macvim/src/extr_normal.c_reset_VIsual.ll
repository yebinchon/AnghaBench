; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_normal.c_reset_VIsual.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_normal.c_reset_VIsual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIsual_active = common dso_local global i64 0, align 8
@INVERTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VIsual_reselect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_VIsual() #0 {
  %1 = load i64, i64* @VIsual_active, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = call i32 (...) @end_visual_mode()
  %5 = load i32, i32* @INVERTED, align 4
  %6 = call i32 @redraw_curbuf_later(i32 %5)
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* @VIsual_reselect, align 4
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @end_visual_mode(...) #1

declare dso_local i32 @redraw_curbuf_later(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
