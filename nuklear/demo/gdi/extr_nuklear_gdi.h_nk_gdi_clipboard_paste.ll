; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clipboard_paste.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_clipboard_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_text_edit = type { i32 }

@CF_UNICODETEXT = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nk_text_edit*)* @nk_gdi_clipboard_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_clipboard_paste(i32 %0, %struct.nk_text_edit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nk_text_edit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nk_text_edit* %1, %struct.nk_text_edit** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CF_UNICODETEXT, align 4
  %12 = call i64 @IsClipboardFormatAvailable(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %2
  %15 = call i64 @OpenClipboard(i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load i32, i32* @CF_UNICODETEXT, align 4
  %19 = call i64 @GetClipboardData(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @GlobalSize(i64 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @GlobalLock(i64 %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load i32, i32* @CP_UTF8, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @WideCharToMultiByte(i32 %35, i32 0, i64 %36, i32 %40, i8* null, i32 0, i32* null, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32, i32* @CP_UTF8, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @WideCharToMultiByte(i32 %51, i32 0, i64 %52, i32 %56, i8* %57, i32 %58, i32* null, i32* null)
  %60 = load %struct.nk_text_edit*, %struct.nk_text_edit** %4, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @nk_textedit_paste(%struct.nk_text_edit* %60, i8* %61, i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %50, %44
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @GlobalUnlock(i64 %68)
  br label %70

70:                                               ; preds = %67, %28
  br label %71

71:                                               ; preds = %70, %22
  br label %72

72:                                               ; preds = %71, %17
  %73 = call i32 (...) @CloseClipboard()
  br label %74

74:                                               ; preds = %72, %14, %2
  ret void
}

declare dso_local i64 @IsClipboardFormatAvailable(i32) #1

declare dso_local i64 @OpenClipboard(i32*) #1

declare dso_local i64 @GetClipboardData(i32) #1

declare dso_local i32 @GlobalSize(i64) #1

declare dso_local i32 @GlobalLock(i64) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @nk_textedit_paste(%struct.nk_text_edit*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
