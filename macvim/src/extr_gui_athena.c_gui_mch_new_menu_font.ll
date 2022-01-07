; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_athena.c_gui_mch_new_menu_font.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_athena.c_gui_mch_new_menu_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@None = common dso_local global i64 0, align 8
@menuBar = common dso_local global i64 0, align 8
@pullerBitmap = common dso_local global i64 0, align 8
@root_menu = common dso_local global %struct.TYPE_5__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@XtNheight = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@XtNvSpace = common dso_local global i32 0, align 4
@XtNborderWidth = common dso_local global i32 0, align 4
@vimShell = common dso_local global i64 0, align 8
@XtNwidth = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RESIZE_VERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_new_menu_font() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @None, align 8
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* @menuBar, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %90

13:                                               ; preds = %0
  %14 = load i64, i64* @pullerBitmap, align 8
  %15 = load i64, i64* @None, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* @pullerBitmap, align 8
  store i64 %18, i64* %1, align 8
  %19 = call i64 @gui_athena_create_pullright_pixmap(i32* null)
  store i64 %19, i64* @pullerBitmap, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root_menu, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @gui_mch_submenu_change(%struct.TYPE_5__* %21, i32 %22)
  store i32 9999, i32* %3, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root_menu, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %2, align 8
  br label %25

25:                                               ; preds = %48, %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @menu_is_menubar(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* @XtNheight, align 4
  %40 = call i32 (i64, i32, i32*, i32, ...) @XtVaGetValues(i64 %38, i32 %39, i32* %4, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %34
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %2, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 9999
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 2), align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @menuBar, align 8
  %60 = load i32, i32* @XtNvSpace, align 4
  %61 = load i32, i32* @XtNborderWidth, align 4
  %62 = call i32 (i64, i32, i32*, i32, ...) @XtVaGetValues(i64 %59, i32 %60, i32* %5, i32 %61, i32* %6, i8* null)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 4
  br label %69

69:                                               ; preds = %58, %55
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i64, i64* @vimShell, align 8
  %72 = load i32, i32* @XtNwidth, align 4
  %73 = load i32, i32* @XtNheight, align 4
  %74 = call i32 (i64, i32, i32*, i32, ...) @XtVaGetValues(i64 %71, i32 %72, i32* %7, i32 %73, i32* %8, i8* null)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @gui_resize_shell(i32 %75, i32 %76)
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* @RESIZE_VERT, align 4
  %81 = call i32 @gui_set_shellsize(i32 %78, i32 %79, i32 %80)
  %82 = call i32 (...) @ui_new_shellsize()
  %83 = load i64, i64* %1, align 8
  %84 = load i64, i64* @None, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %70
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 1), align 4
  %88 = load i64, i64* %1, align 8
  %89 = call i32 @XFreePixmap(i32 %87, i64 %88)
  br label %90

90:                                               ; preds = %12, %86, %70
  ret void
}

declare dso_local i64 @gui_athena_create_pullright_pixmap(i32*) #1

declare dso_local i32 @gui_mch_submenu_change(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @menu_is_menubar(i32) #1

declare dso_local i32 @XtVaGetValues(i64, i32, i32*, i32, ...) #1

declare dso_local i32 @gui_resize_shell(i32, i32) #1

declare dso_local i32 @gui_set_shellsize(i32, i32, i32) #1

declare dso_local i32 @ui_new_shellsize(...) #1

declare dso_local i32 @XFreePixmap(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
