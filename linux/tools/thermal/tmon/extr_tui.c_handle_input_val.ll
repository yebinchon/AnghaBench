; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_input_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_input_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@dialogue_window = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@ptdata = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid Temp %d! %d-%d\00", align 1
@MIN_CTRL_TEMP = common dso_local global i32 0, align 4
@MAX_CTRL_TEMP = common dso_local global i32 0, align 4
@p_param = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Set New Target Temp %d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/%s%d\00", align 1
@THERMAL_SYSFS = common dso_local global i8* null, align 8
@CDEV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1
@dialogue_on = common dso_local global i64 0, align 8
@top = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_input_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_input_val(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @dialogue_window, align 8
  store i32* %7, i32** %6, align 8
  %8 = call i32 (...) @echo()
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @keypad(i32* %9, i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i32 @wgetnstr(i32* %12, i8* %13, i32 31)
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ptdata, i32 0, i32 0), align 8
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MIN_CTRL_TEMP, align 4
  %24 = load i32, i32* @MAX_CTRL_TEMP, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MIN_CTRL_TEMP, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MAX_CTRL_TEMP, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %35 = call i32 @write_status_bar(i32 40, i8* %34)
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @p_param, i32 0, i32 0), align 4
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %42 = call i32 @write_status_bar(i32 40, i8* %41)
  br label %43

43:                                               ; preds = %36, %33
  br label %58

44:                                               ; preds = %1
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %46 = load i8*, i8** @THERMAL_SYSFS, align 8
  %47 = load i8*, i8** @CDEV, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ptdata, i32 0, i32 1), align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47, i32 %53)
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sysfs_set_ulong(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %44, %43
  %59 = call i32 (...) @noecho()
  store i64 0, i64* @dialogue_on, align 8
  %60 = call i32 (...) @show_data_w()
  %61 = call i32 (...) @show_control_w()
  %62 = load i32*, i32** @top, align 8
  %63 = call i64 @panel_userptr(i32* %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** @top, align 8
  %65 = load i32*, i32** @top, align 8
  %66 = call i32 @top_panel(i32* %65)
  ret void
}

declare dso_local i32 @echo(...) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @wgetnstr(i32*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @write_status_bar(i32, i8*) #1

declare dso_local i32 @sysfs_set_ulong(i8*, i8*, i32) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @show_data_w(...) #1

declare dso_local i32 @show_control_w(...) #1

declare dso_local i64 @panel_userptr(i32*) #1

declare dso_local i32 @top_panel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
