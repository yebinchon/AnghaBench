; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_safe_replace.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_safe_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_safe_replace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %65

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @os_utf8_to_wcs_ptr(i8* %19, i32 0, i32** %8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %65

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @os_utf8_to_wcs_ptr(i8* %24, i32 0, i32** %9)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %57

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @os_utf8_to_wcs_ptr(i8* %32, i32 0, i32** %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %57

36:                                               ; preds = %31, %28
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @ReplaceFileW(i32* %37, i32* %38, i32* %39, i32 0, i32* null, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %56

43:                                               ; preds = %36
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %51 = call i64 @MoveFileExW(i32* %48, i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 -1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %47, %43
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %35, %27
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @bfree(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @bfree(i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @bfree(i32* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %22, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @os_utf8_to_wcs_ptr(i8*, i32, i32**) #1

declare dso_local i64 @ReplaceFileW(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @MoveFileExW(i32*, i32*, i32) #1

declare dso_local i32 @bfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
