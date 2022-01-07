; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogShowCapsLockBalloon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogShowCapsLockBalloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred_dialog_params = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@hinstCredUI = common dso_local global i32 0, align 4
@IDS_CAPSLOCKONTITLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to load IDS_IDSCAPSLOCKONTITLE\0A\00", align 1
@TOOLID_CAPSLOCKON = common dso_local global i32 0, align 4
@TTM_SETTITLEW = common dso_local global i32 0, align 4
@TTI_WARNING = common dso_local global i64 0, align 8
@IDC_PASSWORD = common dso_local global i32 0, align 4
@TTM_TRACKPOSITION = common dso_local global i32 0, align 4
@TTM_TRACKACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ID_CAPSLOCKPOP = common dso_local global i32 0, align 4
@TTM_GETDELAYTIME = common dso_local global i32 0, align 4
@TTDT_AUTOPOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cred_dialog_params*)* @CredDialogShowCapsLockBalloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CredDialogShowCapsLockBalloon(i32 %0, %struct.cred_dialog_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred_dialog_params*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.cred_dialog_params* %1, %struct.cred_dialog_params** %4, align 8
  %10 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %11 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %80

15:                                               ; preds = %2
  %16 = load i32, i32* @hinstCredUI, align 4
  %17 = load i32, i32* @IDS_CAPSLOCKONTITLE, align 4
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @LoadStringW(i32 %16, i32 %17, i32* %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %80

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %28 = call i32 @CredDialogCreateBalloonTip(i32 %26, %struct.cred_dialog_params* %27)
  %29 = call i32 @memset(%struct.TYPE_5__* %5, i32 0, i32 12)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 12, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @TOOLID_CAPSLOCKON, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %36 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TTM_SETTITLEW, align 4
  %39 = load i64, i64* @TTI_WARNING, align 8
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @SendMessageW(i32 %37, i32 %38, i64 %39, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @IDC_PASSWORD, align 4
  %45 = call i32 @GetDlgItem(i32 %43, i32 %44)
  %46 = call i32 @GetWindowRect(i32 %45, %struct.TYPE_6__* %6)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 12
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 3
  store i64 %52, i64* %8, align 8
  %53 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %54 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TTM_TRACKPOSITION, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @MAKELONG(i64 %57, i64 %58)
  %60 = call i32 @SendMessageW(i32 %55, i32 %56, i64 0, i32 %59)
  %61 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %62 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TTM_TRACKACTIVATE, align 4
  %65 = load i64, i64* @TRUE, align 8
  %66 = ptrtoint %struct.TYPE_5__* %5 to i32
  %67 = call i32 @SendMessageW(i32 %63, i32 %64, i64 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @ID_CAPSLOCKPOP, align 4
  %70 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %71 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TTM_GETDELAYTIME, align 4
  %74 = load i64, i64* @TTDT_AUTOPOP, align 8
  %75 = call i32 @SendMessageW(i32 %72, i32 %73, i64 %74, i32 0)
  %76 = call i32 @SetTimer(i32 %68, i32 %69, i32 %75, i32* null)
  %77 = load i64, i64* @TRUE, align 8
  %78 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %79 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %25, %23, %14
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

declare dso_local i32 @MAKELONG(i64, i64) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
