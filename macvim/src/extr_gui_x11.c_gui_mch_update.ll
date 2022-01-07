; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_mch_update.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_mch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XtIMAll = common dso_local global i32 0, align 4
@app_context = common dso_local global i32 0, align 4
@XtIMTimer = common dso_local global i32 0, align 4
@XtIMXEvent = common dso_local global i32 0, align 4
@suppress_alternate_input = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @XtIMAll, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* @app_context, align 4
  %6 = call i32 @XtAppPending(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = call i32 (...) @vim_is_input_buf_full()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %8, %4
  %18 = phi i1 [ false, %8 ], [ false, %4 ], [ %16, %13 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load i32, i32* @app_context, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @XtAppProcessEvent(i32 %20, i32 %21)
  br label %4

23:                                               ; preds = %17
  ret void
}

declare dso_local i32 @XtAppPending(i32) #1

declare dso_local i32 @vim_is_input_buf_full(...) #1

declare dso_local i32 @XtAppProcessEvent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
