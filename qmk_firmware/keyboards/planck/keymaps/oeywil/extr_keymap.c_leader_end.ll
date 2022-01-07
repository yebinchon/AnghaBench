; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oeywil/extr_keymap.c_leader_end.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oeywil/extr_keymap.c_leader_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leader_succeed = common dso_local global i64 0, align 8
@leader_layer_game = common dso_local global i64 0, align 8
@leader_layer_def = common dso_local global i64 0, align 8
@defsong = common dso_local global i32 0, align 4
@failed = common dso_local global i32 0, align 4
@gamesong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leader_end() #0 {
  %1 = load i64, i64* @leader_succeed, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = load i64, i64* @leader_layer_game, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %14

8:                                                ; preds = %4
  %9 = load i64, i64* @leader_layer_def, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  br label %14

14:                                               ; preds = %13, %7
  br label %15

15:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
