; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_LoadClipboardDataFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_LoadClipboardDataFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STRING_DELETE_MSG = common dso_local global i32 0, align 4
@STRING_DELETE_TITLE = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @LoadClipboardDataFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadClipboardDataFromFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %5 = load i32, i32* @STRING_DELETE_MSG, align 4
  %6 = load i32, i32* @STRING_DELETE_TITLE, align 4
  %7 = load i32, i32* @MB_ICONWARNING, align 4
  %8 = load i32, i32* @MB_YESNO, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @MessageBoxRes(i32 %3, i32 %4, i32 %5, i32 %6, i32 %9)
  %11 = load i64, i64* @IDYES, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %16 = call i32 @OpenClipboard(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %20 = call i32 @ShowLastWin32Error(i32 %19)
  br label %26

21:                                               ; preds = %14
  %22 = call i32 (...) @EmptyClipboard()
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ReadClipboardFile(i32 %23)
  %25 = call i32 (...) @CloseClipboard()
  br label %26

26:                                               ; preds = %21, %18, %13
  ret void
}

declare dso_local i64 @MessageBoxRes(i32, i32, i32, i32, i32) #1

declare dso_local i32 @OpenClipboard(i32) #1

declare dso_local i32 @ShowLastWin32Error(i32) #1

declare dso_local i32 @EmptyClipboard(...) #1

declare dso_local i32 @ReadClipboardFile(i32) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
