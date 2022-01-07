; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_setup_windows.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_setup_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@tui_disabled = common dso_local global i64 0, align 8
@stdscr = common dso_local global i32 0, align 4
@maxy = common dso_local global i32 0, align 4
@maxx = common dso_local global i64 0, align 8
@TITLE_BAR_HIGHT = common dso_local global i32 0, align 4
@title_bar_window = common dso_local global i8* null, align 8
@SENSOR_WIN_HIGHT = common dso_local global i32 0, align 4
@tz_sensor_window = common dso_local global i8* null, align 8
@ptdata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cooling_device_window = common dso_local global i8* null, align 8
@DIAG_Y = common dso_local global i32 0, align 4
@DIAG_X = common dso_local global i32 0, align 4
@dialogue_window = common dso_local global i8* null, align 8
@NR_LINES_TZDATA = common dso_local global i32 0, align 4
@thermal_data_window = common dso_local global i8* null, align 8
@control_window = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@maxwidth = common dso_local global i64 0, align 8
@status_bar_window = common dso_local global i8* null, align 8
@status_bar_slots = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c" Ctrl-c - Quit \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" TAB - Tuning \00", align 1
@data_panel = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"No data panel\0A\00", align 1
@dialogue_panel = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"No dialogue panel\0A\00", align 1
@top = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"no dialogue win, term too small\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_windows() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i64, i64* @tui_disabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %120

5:                                                ; preds = %0
  %6 = load i32, i32* @stdscr, align 4
  %7 = load i32, i32* @maxy, align 4
  %8 = load i64, i64* @maxx, align 8
  %9 = call i32 @getmaxyx(i32 %6, i32 %7, i64 %8)
  %10 = load i32, i32* @maxy, align 4
  %11 = load i64, i64* @maxx, align 8
  %12 = call i32 @resizeterm(i32 %10, i64 %11)
  %13 = load i32, i32* @stdscr, align 4
  %14 = load i32, i32* @TITLE_BAR_HIGHT, align 4
  %15 = load i64, i64* @maxx, align 8
  %16 = call i8* @subwin(i32 %13, i32 %14, i64 %15, i32 0, i32 0)
  store i8* %16, i8** @title_bar_window, align 8
  %17 = load i32, i32* @TITLE_BAR_HIGHT, align 4
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @stdscr, align 4
  %21 = load i32, i32* @SENSOR_WIN_HIGHT, align 4
  %22 = load i64, i64* @maxx, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i8* @subwin(i32 %20, i32 %21, i64 %22, i32 %23, i32 0)
  store i8* %24, i8** @tz_sensor_window, align 8
  %25 = load i32, i32* @SENSOR_WIN_HIGHT, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @stdscr, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ptdata, i32 0, i32 0), align 4
  %30 = add nsw i32 %29, 3
  %31 = load i64, i64* @maxx, align 8
  %32 = load i32, i32* %1, align 4
  %33 = call i8* @subwin(i32 %28, i32 %30, i64 %31, i32 %32, i32 0)
  store i8* %33, i8** @cooling_device_window, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ptdata, i32 0, i32 0), align 4
  %35 = add nsw i32 %34, 3
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @stdscr, align 4
  %39 = call i32 (...) @diag_dev_rows()
  %40 = add nsw i32 %39, 5
  %41 = load i64, i64* @maxx, align 8
  %42 = sub nsw i64 %41, 50
  %43 = load i32, i32* @DIAG_Y, align 4
  %44 = load i32, i32* @DIAG_X, align 4
  %45 = call i8* @subwin(i32 %38, i32 %40, i64 %42, i32 %43, i32 %44)
  store i8* %45, i8** @dialogue_window, align 8
  %46 = load i32, i32* @stdscr, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ptdata, i32 0, i32 1), align 4
  %48 = load i32, i32* @NR_LINES_TZDATA, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %49, 3
  %51 = load i64, i64* @maxx, align 8
  %52 = load i32, i32* %1, align 4
  %53 = call i8* @subwin(i32 %46, i32 %50, i64 %51, i32 %52, i32 0)
  store i8* %53, i8** @thermal_data_window, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ptdata, i32 0, i32 1), align 4
  %55 = load i32, i32* @NR_LINES_TZDATA, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %56, 3
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* @stdscr, align 4
  %61 = load i64, i64* @maxx, align 8
  %62 = load i32, i32* %1, align 4
  %63 = call i8* @subwin(i32 %60, i32 4, i64 %61, i32 %62, i32 0)
  store i8* %63, i8** @control_window, align 8
  %64 = load i8*, i8** @cooling_device_window, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @scrollok(i8* %64, i32 %65)
  %67 = load i64, i64* @maxx, align 8
  %68 = sub nsw i64 %67, 18
  store i64 %68, i64* @maxwidth, align 8
  %69 = load i32, i32* @stdscr, align 4
  %70 = load i64, i64* @maxx, align 8
  %71 = load i32, i32* @maxy, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i8* @subwin(i32 %69, i32 1, i64 %70, i32 %72, i32 0)
  store i8* %73, i8** @status_bar_window, align 8
  %74 = load i32*, i32** @status_bar_slots, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %78 = load i32*, i32** @status_bar_slots, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strcpy(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** @status_bar_window, align 8
  %83 = call i32 @wmove(i8* %82, i32 1, i32 30)
  %84 = load i8*, i8** @cooling_device_window, align 8
  %85 = call i64 @new_panel(i8* %84)
  store i64 %85, i64* @data_panel, align 8
  %86 = load i64, i64* @data_panel, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %5
  %89 = load i32, i32* @LOG_DEBUG, align 4
  %90 = call i32 @syslog(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %115

91:                                               ; preds = %5
  %92 = load i8*, i8** @dialogue_window, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i8*, i8** @dialogue_window, align 8
  %96 = call i64 @new_panel(i8* %95)
  store i64 %96, i64* @dialogue_panel, align 8
  %97 = load i64, i64* @dialogue_panel, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @LOG_DEBUG, align 4
  %101 = call i32 @syslog(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %110

102:                                              ; preds = %94
  %103 = load i64, i64* @data_panel, align 8
  %104 = load i64, i64* @dialogue_panel, align 8
  %105 = call i32 @set_panel_userptr(i64 %103, i64 %104)
  %106 = load i64, i64* @dialogue_panel, align 8
  %107 = load i64, i64* @data_panel, align 8
  %108 = call i32 @set_panel_userptr(i64 %106, i64 %107)
  %109 = load i64, i64* @data_panel, align 8
  store i64 %109, i64* @top, align 8
  br label %110

110:                                              ; preds = %102, %99
  br label %114

111:                                              ; preds = %91
  %112 = load i32, i32* @LOG_INFO, align 4
  %113 = call i32 @syslog(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %88
  %116 = call i32 (...) @doupdate()
  %117 = load i32, i32* @stdscr, align 4
  %118 = call i32 @werase(i32 %117)
  %119 = call i32 (...) @refresh()
  br label %120

120:                                              ; preds = %115, %4
  ret void
}

declare dso_local i32 @getmaxyx(i32, i32, i64) #1

declare dso_local i32 @resizeterm(i32, i64) #1

declare dso_local i8* @subwin(i32, i32, i64, i32, i32) #1

declare dso_local i32 @diag_dev_rows(...) #1

declare dso_local i32 @scrollok(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @wmove(i8*, i32, i32) #1

declare dso_local i64 @new_panel(i8*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @set_panel_userptr(i64, i64) #1

declare dso_local i32 @doupdate(...) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
