; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_display.c_GetFileModifyTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_display.c_GetFileModifyTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_SHORTDATE = common dso_local global i32 0, align 4
@TIME_FORCE24HOURFORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetFileModifyTime(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GENERIC_READ, align 4
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  %17 = call i32 @CreateFileW(i32 %14, i32 %15, i32 0, i32* null, i32 %16, i32 0, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @GetFileTime(i32 %23, i32* null, i32* null, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CloseHandle(i32 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CloseHandle(i32 %31)
  %33 = call i32 @GetTimeZoneInformation(i32* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %30
  %38 = call i32 @FileTimeToSystemTime(i32* %9, i32* %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %68

42:                                               ; preds = %37
  %43 = call i32 @SystemTimeToTzSpecificLocalTime(i32* %13, i32* %10, i32* %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %42
  %48 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %49 = load i32, i32* @DATE_SHORTDATE, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @GetDateFormatW(i32 %48, i32 %49, i32* %11, i32* null, i32* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 32, i32* %57, align 4
  %58 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %59 = load i32, i32* @TIME_FORCE24HOURFORMAT, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @GetTimeFormatW(i32 %58, i32 %59, i32* %11, i32* null, i32* %63, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %47, %45, %40, %35, %26, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileTime(i32, i32*, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @GetTimeZoneInformation(i32*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, i32*) #1

declare dso_local i32 @SystemTimeToTzSpecificLocalTime(i32*, i32*, i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
