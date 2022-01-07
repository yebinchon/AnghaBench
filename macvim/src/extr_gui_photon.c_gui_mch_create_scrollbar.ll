; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_create_scrollbar.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_create_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@Pt_ARG_FLAGS = common dso_local global i32 0, align 4
@Pt_DELAY_REALIZE = common dso_local global i32 0, align 4
@Pt_GETS_FOCUS = common dso_local global i32 0, align 4
@Pt_ARG_SCROLLBAR_FLAGS = common dso_local global i32 0, align 4
@Pt_SCROLLBAR_SHOW_ARROWS = common dso_local global i32 0, align 4
@Pt_ARG_ORIENTATION = common dso_local global i32 0, align 4
@SBAR_HORIZ = common dso_local global i32 0, align 4
@Pt_HORIZONTAL = common dso_local global i32 0, align 4
@Pt_VERTICAL = common dso_local global i32 0, align 4
@PtScrollbar = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@Pt_CB_SCROLLBAR_MOVE = common dso_local global i32 0, align 4
@gui_ph_handle_scrollbar = common dso_local global i32 0, align 4
@Pt_ARG_ANCHOR_FLAGS = common dso_local global i32 0, align 4
@Pt_BOTTOM_ANCHORED_BOTTOM = common dso_local global i32 0, align 4
@Pt_IS_ANCHORED = common dso_local global i32 0, align 4
@Pt_LEFT_ANCHORED_LEFT = common dso_local global i32 0, align 4
@Pt_RIGHT_ANCHORED_RIGHT = common dso_local global i32 0, align 4
@Pt_TOP_ANCHORED_TOP = common dso_local global i32 0, align 4
@SBAR_LEFT = common dso_local global i64 0, align 8
@anchor_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_create_scrollbar(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %9
  %11 = load i32, i32* @Pt_ARG_FLAGS, align 4
  %12 = load i32, i32* @Pt_DELAY_REALIZE, align 4
  %13 = load i32, i32* @Pt_DELAY_REALIZE, align 4
  %14 = load i32, i32* @Pt_GETS_FOCUS, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @PtSetArg(i32* %10, i32 %11, i32 %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %19
  %21 = load i32, i32* @Pt_ARG_SCROLLBAR_FLAGS, align 4
  %22 = load i32, i32* @Pt_SCROLLBAR_SHOW_ARROWS, align 4
  %23 = call i32 @PtSetArg(i32* %20, i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %26
  %28 = load i32, i32* @Pt_ARG_ORIENTATION, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SBAR_HORIZ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @Pt_HORIZONTAL, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @Pt_VERTICAL, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @PtSetArg(i32* %27, i32 %28, i32 %37, i32 0)
  %39 = load i32, i32* @PtScrollbar, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 0), align 4
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = call i8* @PtCreateWidget(i32 %39, i32 %40, i32 %41, i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @Pt_CB_SCROLLBAR_MOVE, align 4
  %50 = load i32, i32* @gui_ph_handle_scrollbar, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = call i32 @PtAddCallback(i8* %48, i32 %49, i32 %50, %struct.TYPE_7__* %51)
  ret void
}

declare dso_local i32 @PtSetArg(i32*, i32, i32, i32) #1

declare dso_local i8* @PtCreateWidget(i32, i32, i32, i32*) #1

declare dso_local i32 @PtAddCallback(i8*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
