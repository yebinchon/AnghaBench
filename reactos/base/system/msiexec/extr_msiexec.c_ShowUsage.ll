; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_ShowUsage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_ShowUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"msi.dll\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GetModuleFileName failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"MsiGetFileVersion failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ShowUsage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowUsage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [40 x i64], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  store i64 0, i64* %14, align 16
  %16 = load i32, i32* %8, align 4
  %17 = mul nuw i64 8, %12
  %18 = udiv i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @GetModuleFileNameW(i32 %16, i64* %14, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 @WINE_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %1
  store i32 40, i32* %9, align 4
  %27 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %27, align 16
  %28 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i64 0, i64 0
  %29 = call i32 @MsiGetFileVersionW(i64* %14, i64* %28, i32* %9, i32* null, i32* null)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @WINE_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %8, align 4
  %37 = bitcast i64** %6 to i64*
  %38 = call i32 @LoadStringW(i32 %36, i32 10, i64* %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64* @HeapAlloc(i32 %39, i32 0, i32 %44)
  store i64* %45, i64** %6, align 8
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = add i64 %50, 320
  %52 = trunc i64 %51 to i32
  %53 = call i64* @HeapAlloc(i32 %46, i32 0, i32 %52)
  store i64* %53, i64** %7, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %35
  %57 = load i64*, i64** %7, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i64*, i64** %6, align 8
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64*, i64** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @LoadStringW(i32 %61, i32 10, i64* %62, i32 %64)
  %66 = load i64*, i64** %7, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i64 0, i64 0
  %69 = call i32 @sprintfW(i64* %66, i64* %67, i64* %68)
  %70 = load i64*, i64** %7, align 8
  %71 = call i32 (...) @GetUserDefaultLangID()
  %72 = call i32 @MsiMessageBoxW(i32 0, i64* %70, i32* null, i32 0, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %59, %56, %35
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i64*, i64** %6, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, i64* %75)
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load i64*, i64** %7, align 8
  %79 = call i32 @HeapFree(i32 %77, i32 0, i64* %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @ExitProcess(i32 %80)
  %82 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleHandleA(i8*) #2

declare dso_local i32 @GetModuleFileNameW(i32, i64*, i32) #2

declare dso_local i32 @WINE_ERR(i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @MsiGetFileVersionW(i64*, i64*, i32*, i32*, i32*) #2

declare dso_local i32 @LoadStringW(i32, i32, i64*, i32) #2

declare dso_local i64* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @sprintfW(i64*, i64*, i64*) #2

declare dso_local i32 @MsiMessageBoxW(i32, i64*, i32*, i32, i32, i32) #2

declare dso_local i32 @GetUserDefaultLangID(...) #2

declare dso_local i32 @HeapFree(i32, i32, i64*) #2

declare dso_local i32 @ExitProcess(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
