; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_shell_item_exists.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_shell_item_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGDN_FILESYSPATH = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@SFGAO_VALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @shell_item_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shell_item_exists(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @SIGDN_FILESYSPATH, align 4
  %9 = call i32 @IShellItem_GetDisplayName(i32* %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @SUCCEEDED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GetFileAttributesW(i32 %14)
  %16 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CoTaskMemFree(i32 %19)
  br label %26

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @SFGAO_VALIDATE, align 4
  %24 = call i32 @IShellItem_GetAttributes(i32* %22, i32 %23, i32* %6)
  %25 = call i32 @SUCCEEDED(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @IShellItem_GetDisplayName(i32*, i32, i32*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i64 @GetFileAttributesW(i32) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i32 @IShellItem_GetAttributes(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
