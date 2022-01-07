; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_endproc.c_ProcessPage_OnEndProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_endproc.c_ProcessPage_OnEndProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDS_MSG_UNABLETERMINATEPRO = common dso_local global i32 0, align 4
@IDS_MSG_CLOSESYSTEMPROCESS = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@MB_TOPMOST = common dso_local global i32 0, align 4
@IDS_MSG_WARNINGTERMINATING = common dso_local global i32 0, align 4
@IDS_MSG_TASKMGRWARNING = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@MB_ICONSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessPage_OnEndProcess() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [256 x i32], align 16
  %4 = alloca [260 x i32], align 16
  %5 = call i64 (...) @GetSelectedProcessId()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %111

9:                                                ; preds = %0
  %10 = load i32, i32* @PROCESS_TERMINATE, align 4
  %11 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @OpenProcess(i32 %12, i32 %13, i64 %14)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %9
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @IsCriticalProcess(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* @hInst, align 4
  %24 = load i32, i32* @IDS_MSG_UNABLETERMINATEPRO, align 4
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %26 = call i32 @LoadStringW(i32 %23, i32 %24, i32* %25, i32 256)
  %27 = load i32, i32* @hInst, align 4
  %28 = load i32, i32* @IDS_MSG_CLOSESYSTEMPROCESS, align 4
  %29 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %30 = call i32 @LoadStringW(i32 %27, i32 %28, i32* %29, i32 256)
  %31 = load i32, i32* @hMainWnd, align 4
  %32 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %34 = load i32, i32* @MB_OK, align 4
  %35 = load i32, i32* @MB_ICONWARNING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MB_TOPMOST, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @MessageBoxW(i32 %31, i32* %32, i32* %33, i32 %38)
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  br label %111

42:                                               ; preds = %18, %9
  %43 = load i32, i32* @hInst, align 4
  %44 = load i32, i32* @IDS_MSG_WARNINGTERMINATING, align 4
  %45 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %46 = call i32 @LoadStringW(i32 %43, i32 %44, i32* %45, i32 256)
  %47 = load i32, i32* @hInst, align 4
  %48 = load i32, i32* @IDS_MSG_TASKMGRWARNING, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %50 = call i32 @LoadStringW(i32 %47, i32 %48, i32* %49, i32 256)
  %51 = load i32, i32* @hMainWnd, align 4
  %52 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %54 = load i32, i32* @MB_YESNO, align 4
  %55 = load i32, i32* @MB_ICONWARNING, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MB_TOPMOST, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @MessageBoxW(i32 %51, i32* %52, i32* %53, i32 %58)
  %60 = load i64, i64* @IDYES, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %42
  %63 = load i64, i64* %2, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @CloseHandle(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %111

69:                                               ; preds = %42
  %70 = load i64, i64* %2, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %74 = call i32 @GetLastErrorText(i32* %73, i32 260)
  %75 = load i32, i32* @hInst, align 4
  %76 = load i32, i32* @IDS_MSG_UNABLETERMINATEPRO, align 4
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %78 = call i32 @LoadStringW(i32 %75, i32 %76, i32* %77, i32 256)
  %79 = load i32, i32* @hMainWnd, align 4
  %80 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %82 = load i32, i32* @MB_OK, align 4
  %83 = load i32, i32* @MB_ICONSTOP, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MB_TOPMOST, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @MessageBoxW(i32 %79, i32* %80, i32* %81, i32 %86)
  br label %111

88:                                               ; preds = %69
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @TerminateProcess(i64 %89, i32 1)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %94 = call i32 @GetLastErrorText(i32* %93, i32 260)
  %95 = load i32, i32* @hInst, align 4
  %96 = load i32, i32* @IDS_MSG_UNABLETERMINATEPRO, align 4
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %98 = call i32 @LoadStringW(i32 %95, i32 %96, i32* %97, i32 256)
  %99 = load i32, i32* @hMainWnd, align 4
  %100 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %102 = load i32, i32* @MB_OK, align 4
  %103 = load i32, i32* @MB_ICONSTOP, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @MB_TOPMOST, align 4
  %106 = or i32 %104, %105
  %107 = call i64 @MessageBoxW(i32 %99, i32* %100, i32* %101, i32 %106)
  br label %108

108:                                              ; preds = %92, %88
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @CloseHandle(i64 %109)
  br label %111

111:                                              ; preds = %108, %72, %68, %22, %8
  ret void
}

declare dso_local i64 @GetSelectedProcessId(...) #1

declare dso_local i64 @OpenProcess(i32, i32, i64) #1

declare dso_local i64 @IsCriticalProcess(i64) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i64 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GetLastErrorText(i32*, i32) #1

declare dso_local i32 @TerminateProcess(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
