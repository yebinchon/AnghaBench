; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_focus.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@Pt_CB_LOST_FOCUS = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@Ph_EV_PTR_MOTION_NOBUTTON = common dso_local global i32 0, align 4
@gui_ph_handle_mouse = common dso_local global i32 0, align 4
@MOUSE_SHOW = common dso_local global i32 0, align 4
@Pt_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_4__*)* @gui_ph_handle_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_ph_handle_focus(i32* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @Pt_CB_LOST_FOCUS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %14 = load i32, i32* @Ph_EV_PTR_MOTION_NOBUTTON, align 4
  %15 = load i32, i32* @gui_ph_handle_mouse, align 4
  %16 = call i32 @PtRemoveEventHandler(i32 %13, i32 %14, i32 %15, i32* null)
  %17 = load i32, i32* @MOUSE_SHOW, align 4
  %18 = call i32 @gui_mch_mousehide(i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %21 = load i32, i32* @Ph_EV_PTR_MOTION_NOBUTTON, align 4
  %22 = load i32, i32* @gui_ph_handle_mouse, align 4
  %23 = call i32 @PtAddEventHandler(i32 %20, i32 %21, i32 %22, i32* null)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* @Pt_CONTINUE, align 4
  ret i32 %25
}

declare dso_local i32 @PtRemoveEventHandler(i32, i32, i32, i32*) #1

declare dso_local i32 @gui_mch_mousehide(i32) #1

declare dso_local i32 @PtAddEventHandler(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
