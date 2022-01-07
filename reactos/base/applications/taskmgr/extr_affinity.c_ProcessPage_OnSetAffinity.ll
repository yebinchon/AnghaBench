; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_affinity.c_ProcessPage_OnSetAffinity.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_affinity.c_ProcessPage_OnSetAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PROCESS_SET_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hProcessAffinityHandle = common dso_local global i32* null, align 8
@hInst = common dso_local global i32 0, align 4
@IDS_MSG_ACCESSPROCESSAFF = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@IDD_AFFINITY_DIALOG = common dso_local global i32 0, align 4
@AffinityDialogWndProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessPage_OnSetAffinity() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [260 x i32], align 16
  %3 = alloca [256 x i32], align 16
  %4 = call i64 (...) @GetSelectedProcessId()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %43

8:                                                ; preds = %0
  %9 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %10 = load i32, i32* @PROCESS_SET_INFORMATION, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i64, i64* %1, align 8
  %14 = call i32* @OpenProcess(i32 %11, i32 %12, i64 %13)
  store i32* %14, i32** @hProcessAffinityHandle, align 8
  %15 = load i32*, i32** @hProcessAffinityHandle, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %19 = call i32 @GetLastErrorText(i32* %18, i32 260)
  %20 = load i32, i32* @hInst, align 4
  %21 = load i32, i32* @IDS_MSG_ACCESSPROCESSAFF, align 4
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %23 = call i32 @LoadStringW(i32 %20, i32 %21, i32* %22, i32 256)
  %24 = load i32, i32* @hMainWnd, align 4
  %25 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %27 = load i32, i32* @MB_OK, align 4
  %28 = load i32, i32* @MB_ICONSTOP, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @MessageBoxW(i32 %24, i32* %25, i32* %26, i32 %29)
  br label %43

31:                                               ; preds = %8
  %32 = load i32, i32* @hInst, align 4
  %33 = load i32, i32* @IDD_AFFINITY_DIALOG, align 4
  %34 = call i32 @MAKEINTRESOURCEW(i32 %33)
  %35 = load i32, i32* @hMainWnd, align 4
  %36 = load i32, i32* @AffinityDialogWndProc, align 4
  %37 = call i32 @DialogBoxW(i32 %32, i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** @hProcessAffinityHandle, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32*, i32** @hProcessAffinityHandle, align 8
  %42 = call i32 @CloseHandle(i32* %41)
  store i32* null, i32** @hProcessAffinityHandle, align 8
  br label %43

43:                                               ; preds = %7, %17, %40, %31
  ret void
}

declare dso_local i64 @GetSelectedProcessId(...) #1

declare dso_local i32* @OpenProcess(i32, i32, i64) #1

declare dso_local i32 @GetLastErrorText(i32*, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @DialogBoxW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
