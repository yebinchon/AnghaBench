; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_may_update_scrollbars.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_may_update_scrollbars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@starting = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@need_mouse_correct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_may_update_scrollbars() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i64, i64* @starting, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = call i32 (...) @out_flush()
  %8 = call i32 @gui_init_which_components(i32* null)
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @gui_update_scrollbars(i32 %9)
  br label %11

11:                                               ; preds = %6, %3, %0
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* @need_mouse_correct, align 4
  ret void
}

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @gui_init_which_components(i32*) #1

declare dso_local i32 @gui_update_scrollbars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
