; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_COMDLG32_GetDisplayNameOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_COMDLG32_GetDisplayNameOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SHGDN_FORPARSING = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @COMDLG32_GetDisplayNameOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMDLG32_GetDisplayNameOf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @SHGetDesktopFolder(i32* %6)
  %9 = call i64 @FAILED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SHGDN_FORPARSING, align 4
  %17 = call i32 @IShellFolder_GetDisplayNameOf(i32 %14, i32 %15, i32 %16, i32* %7)
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @IShellFolder_Release(i32 %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @IShellFolder_Release(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = call i32 @StrRetToBufW(i32* %7, i32 %27, i32 %28, i32 %29)
  %31 = call i32 @SUCCEEDED(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %20, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SHGetDesktopFolder(i32*) #1

declare dso_local i32 @IShellFolder_GetDisplayNameOf(i32, i32, i32, i32*) #1

declare dso_local i32 @IShellFolder_Release(i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @StrRetToBufW(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
