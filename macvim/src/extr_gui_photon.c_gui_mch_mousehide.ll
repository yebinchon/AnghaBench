; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_mousehide.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_mousehide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@Pt_ARG_CURSOR_TYPE = common dso_local global i32 0, align 4
@MOUSE_SHOW = common dso_local global i32 0, align 4
@GUI_PH_MOUSE_TYPE = common dso_local global i32 0, align 4
@Ph_CURSOR_NONE = common dso_local global i32 0, align 4
@last_shape = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_mousehide(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %9 = load i32, i32* @Pt_ARG_CURSOR_TYPE, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MOUSE_SHOW, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load i32, i32* @GUI_PH_MOUSE_TYPE, align 4
  br label %17

15:                                               ; preds = %6
  %16 = load i32, i32* @Ph_CURSOR_NONE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @PtSetResource(i32 %8, i32 %9, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @PtSetResource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
