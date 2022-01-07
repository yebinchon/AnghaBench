; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_clipboard_copy.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_clipboard_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nk_d3d9_clipboard_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_d3d9_clipboard_copy(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OpenClipboard(i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %57

14:                                               ; preds = %3
  %15 = load i32, i32* @CP_UTF8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MultiByteToWideChar(i32 %15, i32 0, i8* %16, i32 %17, i64* null, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = load i32, i32* @GMEM_MOVEABLE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @GlobalAlloc(i32 %22, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %21
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @GlobalLock(i64 %32)
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %9, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32, i32* @CP_UTF8, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i8* %39, i32 %40, i64* %41, i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @GlobalUnlock(i64 %48)
  %50 = load i32, i32* @CF_UNICODETEXT, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @SetClipboardData(i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %37, %31
  br label %54

54:                                               ; preds = %53, %21
  br label %55

55:                                               ; preds = %54, %14
  %56 = call i32 (...) @CloseClipboard()
  br label %57

57:                                               ; preds = %55, %13
  ret void
}

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

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
