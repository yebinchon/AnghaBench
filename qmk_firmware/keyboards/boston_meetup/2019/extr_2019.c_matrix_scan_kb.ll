; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/boston_meetup/2019/extr_2019.c_matrix_scan_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/boston_meetup/2019/extr_2019.c_matrix_scan_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queue_for_send = common dso_local global i32 0, align 4
@counterst = common dso_local global i32 0, align 4
@DISPLAYOFF = common dso_local global i32 0, align 4
@ScreenOffInterval = common dso_local global i64 0, align 8
@last_flush = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_kb() #0 {
  %1 = load i32, i32* @queue_for_send, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* @queue_for_send, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @counterst, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i32, i32* @counterst, align 4
  %10 = add nsw i32 %9, 1
  %11 = srem i32 %10, 1024
  store i32 %11, i32* @counterst, align 4
  %12 = call i32 (...) @matrix_scan_user()
  ret void
}

declare dso_local i32 @matrix_scan_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
