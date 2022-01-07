; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_priority.c_DoSetPriority.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_priority.c_DoSetPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hInst = common dso_local global i32 0, align 4
@IDS_MSG_TASKMGRWARNING = common dso_local global i32 0, align 4
@IDS_MSG_WARNINGCHANGEPRIORITY = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@PROCESS_SET_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDS_MSG_UNABLECHANGEPRIORITY = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoSetPriority(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [260 x i32], align 16
  %6 = alloca [256 x i32], align 16
  store i64 %0, i64* %2, align 8
  %7 = call i64 (...) @GetSelectedProcessId()
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %73

11:                                               ; preds = %1
  %12 = load i32, i32* @hInst, align 4
  %13 = load i32, i32* @IDS_MSG_TASKMGRWARNING, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %15 = call i32 @LoadStringW(i32 %12, i32 %13, i32* %14, i32 256)
  %16 = load i32, i32* @hInst, align 4
  %17 = load i32, i32* @IDS_MSG_WARNINGCHANGEPRIORITY, align 4
  %18 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %19 = call i32 @LoadStringW(i32 %16, i32 %17, i32* %18, i32 260)
  %20 = load i32, i32* @hMainWnd, align 4
  %21 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* @MB_YESNO, align 4
  %24 = load i32, i32* @MB_ICONWARNING, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @MessageBoxW(i32 %20, i32* %21, i32* %22, i32 %25)
  %27 = load i64, i64* @IDYES, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %73

30:                                               ; preds = %11
  %31 = load i32, i32* @PROCESS_SET_INFORMATION, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @OpenProcess(i32 %31, i32 %32, i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %39 = call i32 @GetLastErrorText(i32* %38, i32 260)
  %40 = load i32, i32* @hInst, align 4
  %41 = load i32, i32* @IDS_MSG_UNABLECHANGEPRIORITY, align 4
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %43 = call i32 @LoadStringW(i32 %40, i32 %41, i32* %42, i32 256)
  %44 = load i32, i32* @hMainWnd, align 4
  %45 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %47 = load i32, i32* @MB_OK, align 4
  %48 = load i32, i32* @MB_ICONSTOP, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @MessageBoxW(i32 %44, i32* %45, i32* %46, i32 %49)
  br label %73

51:                                               ; preds = %30
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @SetPriorityClass(i32 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %58 = call i32 @GetLastErrorText(i32* %57, i32 260)
  %59 = load i32, i32* @hInst, align 4
  %60 = load i32, i32* @IDS_MSG_UNABLECHANGEPRIORITY, align 4
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %62 = call i32 @LoadStringW(i32 %59, i32 %60, i32* %61, i32 256)
  %63 = load i32, i32* @hMainWnd, align 4
  %64 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %66 = load i32, i32* @MB_OK, align 4
  %67 = load i32, i32* @MB_ICONSTOP, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @MessageBoxW(i32 %63, i32* %64, i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %56, %51
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @CloseHandle(i32 %71)
  br label %73

73:                                               ; preds = %70, %37, %29, %10
  ret void
}

declare dso_local i64 @GetSelectedProcessId(...) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i64 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @OpenProcess(i32, i32, i64) #1

declare dso_local i32 @GetLastErrorText(i32*, i32) #1

declare dso_local i32 @SetPriorityClass(i32, i64) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
