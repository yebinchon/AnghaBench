; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_term.c_limit_screen_size.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_term.c_limit_screen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Columns = common dso_local global i32 0, align 4
@MIN_COLUMNS = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @limit_screen_size() #0 {
  %1 = load i32, i32* @Columns, align 4
  %2 = load i32, i32* @MIN_COLUMNS, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @MIN_COLUMNS, align 4
  store i32 %5, i32* @Columns, align 4
  br label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @Columns, align 4
  %8 = icmp sgt i32 %7, 10000
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 10000, i32* @Columns, align 4
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i32, i32* @Rows, align 4
  %13 = icmp sgt i32 %12, 1000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1000, i32* @Rows, align 4
  br label %15

15:                                               ; preds = %14, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
