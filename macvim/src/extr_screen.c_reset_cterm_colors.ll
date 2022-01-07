; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_screen.c_reset_cterm_colors.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_screen.c_reset_cterm_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t_colors = common dso_local global i32 0, align 4
@cterm_normal_fg_color = common dso_local global i64 0, align 8
@cterm_normal_bg_color = common dso_local global i64 0, align 8
@T_OP = common dso_local global i32 0, align 4
@screen_attr = common dso_local global i32 0, align 4
@cterm_normal_fg_bold = common dso_local global i64 0, align 8
@T_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_cterm_colors() #0 {
  %1 = load i32, i32* @t_colors, align 4
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i64, i64* @cterm_normal_fg_color, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @cterm_normal_bg_color, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %3
  %10 = load i32, i32* @T_OP, align 4
  %11 = call i32 @out_str(i32 %10)
  store i32 -1, i32* @screen_attr, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @cterm_normal_fg_bold, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @T_ME, align 4
  %17 = call i32 @out_str(i32 %16)
  store i32 -1, i32* @screen_attr, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @out_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
