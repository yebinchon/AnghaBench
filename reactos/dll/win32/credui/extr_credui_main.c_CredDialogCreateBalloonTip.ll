; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogCreateBalloonTip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogCreateBalloonTip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred_dialog_params = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32*, i64, i32*, i32*, i32, i32, i32 }

@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@TOOLTIPS_CLASSW = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@TTS_NOPREFIX = common dso_local global i32 0, align 4
@TTS_BALLOON = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hinstCredUI = common dso_local global i32 0, align 4
@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@IDS_INCORRECTPASSWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to load IDS_INCORRECTPASSWORD\0A\00", align 1
@TTF_TRACK = common dso_local global i32 0, align 4
@TOOLID_INCORRECTPASSWORD = common dso_local global i32 0, align 4
@TTM_ADDTOOLW = common dso_local global i32 0, align 4
@IDS_CAPSLOCKON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to load IDS_CAPSLOCKON\0A\00", align 1
@TOOLID_CAPSLOCKON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cred_dialog_params*)* @CredDialogCreateBalloonTip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CredDialogCreateBalloonTip(i32 %0, %struct.cred_dialog_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred_dialog_params*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca [256 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.cred_dialog_params* %1, %struct.cred_dialog_params** %4, align 8
  %7 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %8 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %87

12:                                               ; preds = %2
  %13 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %14 = load i32, i32* @TOOLTIPS_CLASSW, align 4
  %15 = load i32, i32* @WS_POPUP, align 4
  %16 = load i32, i32* @TTS_NOPREFIX, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TTS_BALLOON, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CW_USEDEFAULT, align 4
  %21 = load i32, i32* @CW_USEDEFAULT, align 4
  %22 = load i32, i32* @CW_USEDEFAULT, align 4
  %23 = load i32, i32* @CW_USEDEFAULT, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @hinstCredUI, align 4
  %26 = call i64 @CreateWindowExW(i32 %13, i32 %14, i32* null, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* null, i32 %25, i32* null)
  %27 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %28 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %30 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @HWND_TOPMOST, align 4
  %33 = load i32, i32* @SWP_NOMOVE, align 4
  %34 = load i32, i32* @SWP_NOSIZE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SWP_NOACTIVATE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @SetWindowPos(i64 %31, i32 %32, i32 0, i32 0, i32 0, i32 0, i32 %37)
  %39 = load i32, i32* @hinstCredUI, align 4
  %40 = load i32, i32* @IDS_INCORRECTPASSWORD, align 4
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = call i32 @LoadStringW(i32 %39, i32 %40, i32* %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %12
  %47 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %87

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 56, i32* %49, align 8
  %50 = load i32, i32* @TTF_TRACK, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 8
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 7
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @TOOLID_INCORRECTPASSWORD, align 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  %57 = call i32 @SetRectEmpty(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i32* %59, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %64 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @TTM_ADDTOOLW, align 4
  %67 = ptrtoint %struct.TYPE_2__* %5 to i32
  %68 = call i32 @SendMessageW(i64 %65, i32 %66, i32 0, i32 %67)
  %69 = load i32, i32* @hinstCredUI, align 4
  %70 = load i32, i32* @IDS_CAPSLOCKON, align 4
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  %74 = call i32 @LoadStringW(i32 %69, i32 %70, i32* %71, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %48
  %77 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %87

78:                                               ; preds = %48
  %79 = load i32, i32* @TOOLID_CAPSLOCKON, align 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %82 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @TTM_ADDTOOLW, align 4
  %85 = ptrtoint %struct.TYPE_2__* %5 to i32
  %86 = call i32 @SendMessageW(i64 %83, i32 %84, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %78, %76, %46, %11
  ret void
}

declare dso_local i64 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetRectEmpty(i32*) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
