; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_edit_unputchar.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_edit_unputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@pc_status = common dso_local global i64 0, align 8
@PC_STATUS_UNSET = common dso_local global i64 0, align 8
@pc_row = common dso_local global i64 0, align 8
@msg_scrolled = common dso_local global i64 0, align 8
@pc_bytes = common dso_local global i32 0, align 4
@pc_col = common dso_local global i32 0, align 4
@pc_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PC_STATUS_LEFT = common dso_local global i64 0, align 8
@PC_STATUS_RIGHT = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edit_unputchar() #0 {
  %1 = load i64, i64* @pc_status, align 8
  %2 = load i64, i64* @PC_STATUS_UNSET, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i64, i64* @pc_row, align 8
  %6 = load i64, i64* @msg_scrolled, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32, i32* @pc_bytes, align 4
  %10 = load i64, i64* @pc_row, align 8
  %11 = load i64, i64* @msg_scrolled, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i32, i32* @pc_col, align 4
  %14 = load i32, i32* @pc_attr, align 4
  %15 = call i32 @screen_puts(i32 %9, i64 %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %8, %4, %0
  ret void
}

declare dso_local i32 @screen_puts(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
