; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogShowIncorrectPasswordBalloon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogShowIncorrectPasswordBalloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred_dialog_params = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@hinstCredUI = common dso_local global i32 0, align 4
@IDS_INCORRECTPASSWORDTITLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to load IDS_INCORRECTPASSWORDTITLE\0A\00", align 1
@TOOLID_INCORRECTPASSWORD = common dso_local global i32 0, align 4
@TTM_SETTITLEW = common dso_local global i32 0, align 4
@TTI_ERROR = common dso_local global i64 0, align 8
@IDC_PASSWORD = common dso_local global i32 0, align 4
@TTM_TRACKPOSITION = common dso_local global i32 0, align 4
@TTM_TRACKACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cred_dialog_params*)* @CredDialogShowIncorrectPasswordBalloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CredDialogShowIncorrectPasswordBalloon(i32 %0, %struct.cred_dialog_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred_dialog_params*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.cred_dialog_params* %1, %struct.cred_dialog_params** %4, align 8
  %10 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %11 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %19 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %82

23:                                               ; preds = %17
  %24 = load i32, i32* @hinstCredUI, align 4
  %25 = load i32, i32* @IDS_INCORRECTPASSWORDTITLE, align 4
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = call i32 @LoadStringW(i32 %24, i32 %25, i32* %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %82

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %36 = call i32 @CredDialogCreateBalloonTip(i32 %34, %struct.cred_dialog_params* %35)
  %37 = call i32 @memset(%struct.TYPE_5__* %5, i32 0, i32 12)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 12, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @TOOLID_INCORRECTPASSWORD, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %44 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TTM_SETTITLEW, align 4
  %47 = load i64, i64* @TTI_ERROR, align 8
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @SendMessageW(i32 %45, i32 %46, i64 %47, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @IDC_PASSWORD, align 4
  %53 = call i32 @GetDlgItem(i32 %51, i32 %52)
  %54 = call i32 @GetWindowRect(i32 %53, %struct.TYPE_6__* %6)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 12
  store i32 %57, i32* %7, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %8, align 4
  %64 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %65 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TTM_TRACKPOSITION, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @MAKELONG(i32 %68, i32 %69)
  %71 = call i32 @SendMessageW(i32 %66, i32 %67, i64 0, i32 %70)
  %72 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %73 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TTM_TRACKACTIVATE, align 4
  %76 = load i64, i64* @TRUE, align 8
  %77 = ptrtoint %struct.TYPE_5__* %5 to i32
  %78 = call i32 @SendMessageW(i32 %74, i32 %75, i64 %76, i32 %77)
  %79 = load i64, i64* @TRUE, align 8
  %80 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %81 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %33, %31, %22, %16
  ret void
}

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @CredDialogCreateBalloonTip(i32, %struct.cred_dialog_params*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
