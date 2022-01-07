; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clipboard_copy.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clipboard_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nk_gdi_clipboard_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_clipboard_copy(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i64 @OpenClipboard(i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = load i32, i32* @CP_UTF8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @MultiByteToWideChar(i32 %13, i32 0, i8* %14, i32 %15, i64* null, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load i32, i32* @GMEM_MOVEABLE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @GlobalAlloc(i32 %20, i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @GlobalLock(i64 %31)
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %9, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* @CP_UTF8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MultiByteToWideChar(i32 %37, i32 0, i8* %38, i32 %39, i64* %40, i32 %41)
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @GlobalUnlock(i64 %47)
  %49 = load i32, i32* @CF_UNICODETEXT, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @SetClipboardData(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %36, %30
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53, %12
  %55 = call i32 (...) @CloseClipboard()
  br label %56

56:                                               ; preds = %54, %3
  ret void
}

declare dso_local i64 @OpenClipboard(i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @SetClipboardData(i32, i64) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
