; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_clipboard_paste.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_clipboard_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_text_edit = type { i32 }

@CF_UNICODETEXT = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nk_text_edit*)* @nk_d3d9_clipboard_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_d3d9_clipboard_paste(i32 %0, %struct.nk_text_edit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nk_text_edit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nk_text_edit* %1, %struct.nk_text_edit** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CF_UNICODETEXT, align 4
  %12 = call i32 @IsClipboardFormatAvailable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i64 @OpenClipboard(i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %79

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @CF_UNICODETEXT, align 4
  %20 = call i32 @GetClipboardData(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (...) @CloseClipboard()
  br label %79

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @GlobalSize(i32 %26)
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 (...) @CloseClipboard()
  br label %79

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GlobalLock(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 (...) @CloseClipboard()
  br label %79

40:                                               ; preds = %33
  %41 = load i32, i32* @CP_UTF8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @WideCharToMultiByte(i32 %41, i32 0, i32 %42, i32 %47, i8* null, i32 0, i32* null, i32* null)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load i32, i32* @CP_UTF8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @WideCharToMultiByte(i32 %58, i32 0, i32 %59, i32 %64, i8* %65, i32 %66, i32* null, i32* null)
  %68 = load %struct.nk_text_edit*, %struct.nk_text_edit** %4, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @nk_textedit_paste(%struct.nk_text_edit* %68, i8* %69, i32 %70)
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %57, %51
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @GlobalUnlock(i32 %76)
  %78 = call i32 (...) @CloseClipboard()
  br label %79

79:                                               ; preds = %75, %38, %31, %23, %17
  ret void
}

declare dso_local i32 @IsClipboardFormatAvailable(i32) #1

declare dso_local i64 @OpenClipboard(i32*) #1

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i64 @GlobalSize(i32) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @nk_textedit_paste(%struct.nk_text_edit*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
