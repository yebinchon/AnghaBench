; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_GetPathOfFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_GetPathOfFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_DIRECTORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*)* @GetPathOfFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetPathOfFile(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @lstrcpyn(i64* %15, i32* %16, i32 %17)
  %19 = load i64*, i64** %4, align 8
  %20 = call i32 @_T(i8 signext 92)
  %21 = call i64* @_tcsrchr(i64* %19, i32 %20)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load i64*, i64** %8, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = call i32 @GetFullPathName(i64* %26, i32 %27, i32* %14, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @PrintError(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

34:                                               ; preds = %24
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = call i32 @lstrcpyn(i64* %35, i32* %14, i32 %36)
  %38 = load i64*, i64** %4, align 8
  %39 = call i32 @GetFileAttributes(i64* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %34
  %48 = load i32, i32* @ERROR_DIRECTORY, align 4
  %49 = call i32 @PrintError(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %2
  %53 = load i32, i32* @MAX_PATH, align 4
  %54 = load i64*, i64** %4, align 8
  %55 = call i32 @GetCurrentDirectory(i32 %53, i64* %54)
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i64*, i64** %4, align 8
  %58 = call i32 @AddBackslash(i64* %57)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %47, %30
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpyn(i64*, i32*, i32) #2

declare dso_local i64* @_tcsrchr(i64*, i32) #2

declare dso_local i32 @_T(i8 signext) #2

declare dso_local i32 @GetFullPathName(i64*, i32, i32*, i32*) #2

declare dso_local i32 @PrintError(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @GetFileAttributes(i64*) #2

declare dso_local i32 @GetCurrentDirectory(i32, i64*) #2

declare dso_local i32 @AddBackslash(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
