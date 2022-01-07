; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_clip_mch_request_selection.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_clip_mch_request_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@N_SELECTION_TARGETS = common dso_local global i32 0, align 4
@clip_html = common dso_local global i32 0, align 4
@selection_targets = common dso_local global %struct.TYPE_9__* null, align 8
@TARGET_HTML = common dso_local global i64 0, align 8
@RS_NONE = common dso_local global i64 0, align 8
@received_selection = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GDK_CURRENT_TIME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@RS_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clip_mch_request_selection(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %62, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @N_SELECTION_TARGETS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %65

10:                                               ; preds = %6
  %11 = load i32, i32* @clip_html, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @selection_targets, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TARGET_HTML, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %62

23:                                               ; preds = %13, %10
  %24 = load i64, i64* @RS_NONE, align 8
  store i64 %24, i64* @received_selection, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @selection_targets, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @gdk_atom_intern(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gui, i32 0, i32 1), align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* @GDK_CURRENT_TIME, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @gtk_selection_convert(i32 %33, i32 %36, i32 %37, i32 %39)
  %41 = call i64 @time(i32* null)
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %53, %23
  %43 = load i64, i64* @received_selection, align 8
  %44 = load i64, i64* @RS_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i64 @time(i32* null)
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 3
  %50 = icmp slt i64 %47, %49
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @g_main_context_iteration(i32* null, i32 %54)
  br label %42

56:                                               ; preds = %51
  %57 = load i64, i64* @received_selection, align 8
  %58 = load i64, i64* @RS_FAIL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %72

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %22
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %6

65:                                               ; preds = %6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gui, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GDK_WINDOW_XDISPLAY(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = call i32 @yank_cut_buffer0(i32 %69, %struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @gdk_atom_intern(i32, i32) #1

declare dso_local i32 @gtk_selection_convert(i32, i32, i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @g_main_context_iteration(i32*, i32) #1

declare dso_local i32 @yank_cut_buffer0(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GDK_WINDOW_XDISPLAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
