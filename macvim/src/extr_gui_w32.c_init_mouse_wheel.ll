; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w32.c_init_mouse_wheel.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w32.c_init_mouse_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@msh_msgmousewheel = common dso_local global i8* null, align 8
@mouse_scroll_lines = common dso_local global i32 0, align 4
@os_version = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@VER_PLATFORM_WIN32_WINDOWS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"MouseZ\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Magellan MSWHEEL\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MSH_SCROLL_LINES_MSG\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"MSWHEEL_ROLLMSG\00", align 1
@SPI_GETWHEELSCROLLLINES = common dso_local global i32 0, align 4
@VMOUSEZ_CLASSNAME = common dso_local global i32 0, align 4
@VMOUSEZ_TITLE = common dso_local global i32 0, align 4
@VMSH_MOUSEWHEEL = common dso_local global i32 0, align 4
@VMSH_SCROLL_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_mouse_wheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mouse_wheel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  store i8* null, i8** @msh_msgmousewheel, align 8
  store i32 3, i32* @mouse_scroll_lines, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 0), align 8
  %4 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 1), align 8
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %22, label %9

9:                                                ; preds = %6, %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 0), align 8
  %11 = load i64, i64* @VER_PLATFORM_WIN32_WINDOWS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 1), align 8
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 2), align 4
  %18 = icmp sge i32 %17, 10
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 1), align 8
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %6
  %23 = call i32 @SystemParametersInfo(i32 104, i32 0, i32* @mouse_scroll_lines, i32 0)
  br label %52

24:                                               ; preds = %19, %9
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 0), align 8
  %26 = load i64, i64* @VER_PLATFORM_WIN32_WINDOWS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 0), align 8
  %30 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_version, i32 0, i32 1), align 8
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %51

35:                                               ; preds = %32, %24
  %36 = call i64 @FindWindow(i32 ptrtoint ([7 x i8]* @.str to i32), i32 ptrtoint ([17 x i8]* @.str.1 to i32))
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = call i8* @RegisterWindowMessage(i32 ptrtoint ([21 x i8]* @.str.2 to i32))
  store i8* %40, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %1, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @SendMessage(i64 %44, i8* %45, i32 0, i32 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @mouse_scroll_lines, align 4
  %48 = call i8* @RegisterWindowMessage(i32 ptrtoint ([16 x i8]* @.str.3 to i32))
  store i8* %48, i8** @msh_msgmousewheel, align 8
  br label %49

49:                                               ; preds = %43, %39
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %32, %28
  br label %52

52:                                               ; preds = %51, %22
  ret void
}

declare dso_local i32 @SystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i64 @FindWindow(i32, i32) #1

declare dso_local i8* @RegisterWindowMessage(i32) #1

declare dso_local i64 @SendMessage(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
