; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_athena.c_gui_mch_new_menu_colors.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_athena.c_gui_mch_new_menu_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@menuBar = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INVALCOLOR = common dso_local global i64 0, align 8
@XtNborderColor = common dso_local global i32 0, align 4
@root_menu = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@toolBar = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_new_menu_colors() #0 {
  %1 = load i64, i64* @menuBar, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %19

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %6 = load i64, i64* @INVALCOLOR, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i64, i64* @menuBar, align 8
  %10 = load i32, i32* @XtNborderColor, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %12 = call i32 @XtVaSetValues(i64 %9, i32 %10, i64 %11, i32* null)
  br label %13

13:                                               ; preds = %8, %4
  %14 = load i64, i64* @menuBar, align 8
  %15 = call i32 @gui_athena_menu_colors(i64 %14)
  %16 = load i32, i32* @root_menu, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @gui_mch_submenu_change(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @XtVaSetValues(i64, i32, i64, i32*) #1

declare dso_local i32 @gui_athena_menu_colors(i64) #1

declare dso_local i32 @gui_mch_submenu_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
