; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_screen.c_redrawing.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_screen.c_redrawing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RedrawingDisabled = common dso_local global i32 0, align 4
@p_lz = common dso_local global i64 0, align 8
@KeyTyped = common dso_local global i32 0, align 4
@do_redraw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redrawing() #0 {
  %1 = load i32, i32* @RedrawingDisabled, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @p_lz, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = call i64 (...) @char_avail()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* @KeyTyped, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @do_redraw, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %9, %6, %3
  %17 = phi i1 [ false, %9 ], [ false, %6 ], [ false, %3 ], [ %15, %12 ]
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %16, %0
  %20 = phi i1 [ false, %0 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @char_avail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
