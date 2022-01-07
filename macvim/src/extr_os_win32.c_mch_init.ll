; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SET_INVALID_PARAM_HANDLER = common dso_local global i32 0, align 4
@SEM_FAILCRITICALERRORS = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@_fmode = external dso_local global i32, align 4
@read_cmd_fd = common dso_local global i64 0, align 8
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@g_hConIn = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@g_hConOut = common dso_local global i32 0, align 4
@g_attrDefault = common dso_local global i32 0, align 4
@g_attrCurrent = common dso_local global i32 0, align 4
@cterm_normal_fg_color = common dso_local global i32 0, align 4
@cterm_normal_bg_color = common dso_local global i32 0, align 4
@g_cci = common dso_local global i32 0, align 4
@g_cmodein = common dso_local global i32 0, align 4
@g_cmodeout = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@g_fWindInitCalled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GetConsoleKeyboardLayoutNameA\00", align 1
@s_pfnGetConsoleKeyboardLayoutName = common dso_local global i64 0, align 8
@SM_MOUSEPRESENT = common dso_local global i32 0, align 4
@fdDump = common dso_local global i64 0, align 8
@g_cbOrig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@g_fCanChangeIcon = common dso_local global i64 0, align 8
@g_fMouseAvail = common dso_local global i32 0, align 4
@g_hVimIcon = common dso_local global i32 0, align 4
@g_hWnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_init() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = load i32, i32* @SET_INVALID_PARAM_HANDLER, align 4
  %3 = load i32, i32* @SEM_FAILCRITICALERRORS, align 4
  %4 = call i32 @SetErrorMode(i32 %3)
  %5 = load i32, i32* @O_BINARY, align 4
  store i32 %5, i32* @_fmode, align 4
  %6 = call i32 (...) @out_flush()
  %7 = load i64, i64* @read_cmd_fd, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %11 = call i32 @GetStdHandle(i32 %10)
  store i32 %11, i32* @g_hConIn, align 4
  br label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @create_conin()
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %16 = call i32 @GetStdHandle(i32 %15)
  store i32 %16, i32* @g_hConOut, align 4
  %17 = load i32, i32* @g_hConOut, align 4
  %18 = call i32 @GetConsoleScreenBufferInfo(i32 %17, %struct.TYPE_7__* %1)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @g_attrDefault, align 4
  store i32 %20, i32* @g_attrCurrent, align 4
  %21 = load i32, i32* @cterm_normal_fg_color, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @g_attrCurrent, align 4
  %25 = and i32 %24, 15
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @cterm_normal_fg_color, align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32, i32* @cterm_normal_bg_color, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @g_attrCurrent, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 15
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @cterm_normal_bg_color, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @g_attrCurrent, align 4
  %37 = call i32 @update_tcap(i32 %36)
  %38 = load i32, i32* @g_hConOut, align 4
  %39 = call i32 @GetConsoleCursorInfo(i32 %38, i32* @g_cci)
  %40 = load i32, i32* @g_hConIn, align 4
  %41 = call i32 @GetConsoleMode(i32 %40, i32* @g_cmodein)
  %42 = load i32, i32* @g_hConOut, align 4
  %43 = call i32 @GetConsoleMode(i32 %42, i32* @g_cmodeout)
  %44 = call i32 (...) @ui_get_shellsize()
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* @g_fWindInitCalled, align 4
  %46 = call i32 @GetModuleHandle(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %47 = call i64 @GetProcAddress(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i64 %47, i64* @s_pfnGetConsoleKeyboardLayoutName, align 8
  ret void
}

declare dso_local i32 @SetErrorMode(i32) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @create_conin(...) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @update_tcap(i32) #1

declare dso_local i32 @GetConsoleCursorInfo(i32, i32*) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @ui_get_shellsize(...) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
