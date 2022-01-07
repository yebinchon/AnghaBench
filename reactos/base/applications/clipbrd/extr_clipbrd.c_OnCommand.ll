; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_OnCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_OnCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WM_CLOSE = common dso_local global i32 0, align 4
@STRING_DELETE_MSG = common dso_local global i32 0, align 4
@STRING_DELETE_TITLE = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@IDYES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 99, i32 108, i32 105, i32 112, i32 98, i32 114, i32 100, i32 46, i32 99, i32 104, i32 109, i32 0], align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@CLIPBRD_ICON = common dso_local global i32 0, align 4
@STRING_CLIPBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @OnCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCommand(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @LOWORD(i32 %12)
  switch i32 %13, label %60 [
    i32 129, label %14
    i32 128, label %16
    i32 131, label %18
    i32 132, label %22
    i32 133, label %36
    i32 130, label %38
    i32 134, label %41
  ]

14:                                               ; preds = %4
  %15 = call i32 (...) @LoadClipboardFromFile()
  br label %61

16:                                               ; preds = %4
  %17 = call i32 (...) @SaveClipboardToFile()
  br label %61

18:                                               ; preds = %4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %20 = load i32, i32* @WM_CLOSE, align 4
  %21 = call i32 @PostMessageW(i32 %19, i32 %20, i32 0, i32 0)
  br label %61

22:                                               ; preds = %4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %25 = load i32, i32* @STRING_DELETE_MSG, align 4
  %26 = load i32, i32* @STRING_DELETE_TITLE, align 4
  %27 = load i32, i32* @MB_ICONWARNING, align 4
  %28 = load i32, i32* @MB_YESNO, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @MessageBoxRes(i32 %23, i32 %24, i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @IDYES, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %61

34:                                               ; preds = %22
  %35 = call i32 (...) @DeleteClipboardContent()
  br label %61

36:                                               ; preds = %4
  %37 = call i32 @SetDisplayFormat(i32 0)
  br label %61

38:                                               ; preds = %4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %40 = call i32 @HtmlHelpW(i32 %39, i8* bitcast ([12 x i32]* @.str to i8*), i32 0, i32 0)
  br label %61

41:                                               ; preds = %4
  %42 = load i32, i32* @MAX_STRING_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %10, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %47 = load i32, i32* @CLIPBRD_ICON, align 4
  %48 = call i32 @MAKEINTRESOURCE(i32 %47)
  %49 = call i32 @LoadIconW(i32 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %51 = load i32, i32* @STRING_CLIPBOARD, align 4
  %52 = call i32 @ARRAYSIZE(i32* %45)
  %53 = call i32 @LoadStringW(i32 %50, i32 %51, i32* %45, i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ShellAboutW(i32 %54, i32* %45, i32* null, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @DeleteObject(i32 %57)
  %59 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %61

60:                                               ; preds = %4
  br label %61

61:                                               ; preds = %60, %41, %38, %36, %34, %33, %18, %16, %14
  ret i32 0
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @LoadClipboardFromFile(...) #1

declare dso_local i32 @SaveClipboardToFile(...) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MessageBoxRes(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteClipboardContent(...) #1

declare dso_local i32 @SetDisplayFormat(i32) #1

declare dso_local i32 @HtmlHelpW(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadIconW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @ShellAboutW(i32, i32*, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
