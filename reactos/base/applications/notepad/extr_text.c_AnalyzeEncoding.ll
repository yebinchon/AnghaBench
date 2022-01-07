; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_AnalyzeEncoding.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_AnalyzeEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_TEXT_UNICODE_STATISTICS = common dso_local global i32 0, align 4
@ENCODING_ANSI = common dso_local global i32 0, align 4
@ENCODING_UTF16LE = common dso_local global i32 0, align 4
@IS_TEXT_UNICODE_REVERSE_MASK = common dso_local global i32 0, align 4
@IS_TEXT_UNICODE_ILLEGAL_CHARS = common dso_local global i32 0, align 4
@ENCODING_UTF16BE = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@ENCODING_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzeEncoding(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @IS_TEXT_UNICODE_STATISTICS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENCODING_ANSI, align 4
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @IsTextNonZeroASCII(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @ENCODING_ANSI, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @IsTextUnicode(i8* %20, i32 %21, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENCODING_UTF16LE, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IS_TEXT_UNICODE_REVERSE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IS_TEXT_UNICODE_ILLEGAL_CHARS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENCODING_UTF16BE, align 4
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %31, %26
  %39 = load i32, i32* @CP_UTF8, align 4
  %40 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @MultiByteToWideChar(i32 %39, i32 %40, i8* %41, i32 %42, i32* null, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENCODING_UTF8, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @ENCODING_ANSI, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %36, %24, %17, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @IsTextNonZeroASCII(i8*, i32) #1

declare dso_local i64 @IsTextUnicode(i8*, i32, i32*) #1

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
