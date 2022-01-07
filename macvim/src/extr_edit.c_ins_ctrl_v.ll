; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_ctrl_v.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_ctrl_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CTRL_V_STR = common dso_local global i64 0, align 8
@Ctrl_V = common dso_local global i32 0, align 4
@revins_chars = common dso_local global i32 0, align 4
@revins_legal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_ctrl_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_ctrl_v() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @ins_redraw(i32 %4)
  %6 = call i64 (...) @redrawing()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = call i32 (...) @char_avail()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @edit_putchar(i8 signext 94, i32 %12)
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %8, %0
  %16 = load i64, i64* @CTRL_V_STR, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @AppendToRedobuff(i32* %17)
  %19 = call i32 (...) @get_literal()
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @edit_unputchar()
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @insert_special(i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @ins_redraw(i32) #1

declare dso_local i64 @redrawing(...) #1

declare dso_local i32 @char_avail(...) #1

declare dso_local i32 @edit_putchar(i8 signext, i32) #1

declare dso_local i32 @AppendToRedobuff(i32*) #1

declare dso_local i32 @get_literal(...) #1

declare dso_local i32 @edit_unputchar(...) #1

declare dso_local i32 @insert_special(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
