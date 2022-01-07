; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_mswin.c_GetConsoleHwnd.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_mswin.c_GetConsoleHwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_hwnd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%d/%d\00", align 1
@MY_BUFSIZE = common dso_local global i32 0, align 4
@g_hWnd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GetConsoleHwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetConsoleHwnd() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = load i64, i64* @s_hwnd, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %8 = call i32 @GetConsoleTitle(i8* %7, i32 1024)
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %11 = call i32 (...) @GetTickCount()
  %12 = call i32 (...) @GetCurrentProcessId()
  %13 = call i32 @wsprintf(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11, i32 %12)
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @SetConsoleTitle(i8* %14)
  %16 = call i32 @Sleep(i32 40)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %18 = call i64 @FindWindow(i32* null, i8* %17)
  store i64 %18, i64* @s_hwnd, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %20 = call i32 @SetConsoleTitle(i8* %19)
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @GetConsoleTitle(i8*, i32) #1

declare dso_local i32 @wsprintf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @SetConsoleTitle(i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @FindWindow(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
