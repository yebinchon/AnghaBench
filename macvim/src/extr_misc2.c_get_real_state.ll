; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc2.c_get_real_state.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc2.c_get_real_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@State = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_select = common dso_local global i64 0, align 8
@SELECTMODE = common dso_local global i32 0, align 4
@VISUAL = common dso_local global i32 0, align 4
@finish_op = common dso_local global i64 0, align 8
@OP_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_real_state() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @State, align 4
  %3 = load i32, i32* @NORMAL, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load i64, i64* @VIsual_active, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64, i64* @VIsual_select, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @SELECTMODE, align 4
  store i32 %13, i32* %1, align 4
  br label %25

14:                                               ; preds = %9
  %15 = load i32, i32* @VISUAL, align 4
  store i32 %15, i32* %1, align 4
  br label %25

16:                                               ; preds = %6
  %17 = load i64, i64* @finish_op, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @OP_PENDING, align 4
  store i32 %20, i32* %1, align 4
  br label %25

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i32, i32* @State, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %19, %14, %12
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
