; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_window.c_shell_new_rows.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_window.c_shell_new_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ROWS_AVAIL = common dso_local global i64 0, align 8
@firstwin = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@curtab = common dso_local global %struct.TYPE_2__* null, align 8
@curwin = common dso_local global i32 0, align 4
@p_ch = common dso_local global i32 0, align 4
@p_ea = common dso_local global i64 0, align 8
@topframe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shell_new_rows() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ROWS_AVAIL, align 8
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @firstwin, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %16

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32*, i32** @firstwin, align 8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @win_new_height(i32* %12, i32 %13)
  %15 = call i32 (...) @compute_cmdrow()
  br label %16

16:                                               ; preds = %11, %6
  ret void
}

declare dso_local i32 @win_new_height(i32*, i32) #1

declare dso_local i32 @compute_cmdrow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
