; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/netplwiz/extr_SHDisconnectNetDrives.c_DisconnectDriveExit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/netplwiz/extr_SHDisconnectNetDrives.c_DisconnectDriveExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_CONNECTEDDRIVELIST = common dso_local global i32 0, align 4
@LVNI_SELECTED = common dso_local global i32 0, align 4
@CONNECT_UPDATE_PROFILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ID_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisconnectDriveExit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IDC_CONNECTEDDRIVELIST, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @LVNI_SELECTED, align 4
  %13 = call i32 @ListView_GetNextItem(i32 %11, i32 -1, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %22 = call i32 @_countof(i32* %21)
  %23 = call i32 @ListView_GetItemText(i32 %18, i32 %19, i32 0, i32* %20, i32 %22)
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* @CONNECT_UPDATE_PROFILE, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @WNetCancelConnection2(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ID_OK, align 4
  %30 = call i32 @EndDialog(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %17, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ListView_GetNextItem(i32, i32, i32) #1

declare dso_local i32 @ListView_GetItemText(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @_countof(i32*) #1

declare dso_local i32 @WNetCancelConnection2(i32*, i32, i32) #1

declare dso_local i32 @EndDialog(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
