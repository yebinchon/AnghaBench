; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_clipboard_copy.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_clipboard_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nk_gdip_clipboard_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_clipboard_copy(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OpenClipboard(i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %67

14:                                               ; preds = %3
  %15 = load i32, i32* @CP_UTF8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MultiByteToWideChar(i32 %15, i32 0, i8* %16, i32 %17, i64* null, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 (...) @CloseClipboard()
  br label %67

23:                                               ; preds = %14
  %24 = load i32, i32* @GMEM_MOVEABLE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @GlobalAlloc(i32 %24, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = call i32 (...) @CloseClipboard()
  br label %67

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @GlobalLock(i64 %36)
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %8, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @GlobalFree(i64 %42)
  %44 = call i32 (...) @CloseClipboard()
  br label %67

45:                                               ; preds = %35
  %46 = load i32, i32* @CP_UTF8, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MultiByteToWideChar(i32 %46, i32 0, i8* %47, i32 %48, i64* %49, i32 %50)
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @GlobalUnlock(i64 %56)
  %58 = load i32, i32* @CF_UNICODETEXT, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @SetClipboardData(i32 %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %45
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @GlobalFree(i64 %63)
  br label %65

65:                                               ; preds = %62, %45
  %66 = call i32 (...) @CloseClipboard()
  br label %67

67:                                               ; preds = %65, %41, %33, %21, %13
  ret void
}

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @SetClipboardData(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
