; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_hardcopy.c_prt_get_cpl.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_hardcopy.c_prt_get_cpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINT_NUMBER_WIDTH = common dso_local global i32 0, align 4
@prt_char_width = common dso_local global i32 0, align 4
@prt_number_width = common dso_local global i32 0, align 4
@prt_left_margin = common dso_local global i32 0, align 4
@prt_right_margin = common dso_local global i32 0, align 4
@prt_out_mbyte = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prt_get_cpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prt_get_cpl() #0 {
  %1 = call i64 (...) @prt_use_number()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @PRINT_NUMBER_WIDTH, align 4
  %5 = load i32, i32* @prt_char_width, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* @prt_number_width, align 4
  %7 = load i32, i32* @prt_number_width, align 4
  %8 = load i32, i32* @prt_left_margin, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* @prt_left_margin, align 4
  br label %11

10:                                               ; preds = %0
  store i32 0, i32* @prt_number_width, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, i32* @prt_right_margin, align 4
  %13 = load i32, i32* @prt_left_margin, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @prt_char_width, align 4
  %16 = sdiv i32 %14, %15
  ret i32 %16
}

declare dso_local i64 @prt_use_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
