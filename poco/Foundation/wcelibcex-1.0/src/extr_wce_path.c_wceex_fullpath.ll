; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_fullpath.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_fullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wceex_fullpath(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @_MAX_PATH, align 4
  %14 = mul nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @CP_ACP, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @_MAX_PATH, align 4
  %21 = mul nsw i32 %20, 2
  %22 = call i32 @MultiByteToWideChar(i32 %18, i32 0, i8* %19, i32 -1, i32* %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i8*, i8** %5, align 8
  store i8 0, i8* %26, align 1
  store i8* null, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = mul i64 %28, 4
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* @errno, align 4
  %35 = load i8*, i8** %5, align 8
  store i8 0, i8* %35, align 1
  store i8* null, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %60

36:                                               ; preds = %27
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @wceex_wfullpath(i32* %37, i32* %17, i64 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* @CP_ACP, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @WideCharToMultiByte(i32 %43, i32 0, i32* %44, i32 -1, i8* %45, i64 %46, i32* null, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i32 (...) @GetLastError()
  store i32 %50, i32* @errno, align 4
  store i32* null, i32** %11, align 8
  br label %51

51:                                               ; preds = %49, %42, %36
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  store i8 0, i8* %57, align 1
  store i8* null, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %58, %56, %33, %24
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32* @wceex_wfullpath(i32*, i32*, i64) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
