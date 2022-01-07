; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_process_args_from_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_process_args_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@InstallRunOnce = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8***)* @process_args_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_args_from_reg(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %17 = load i32, i32* @InstallRunOnce, align 4
  %18 = call i64 @RegOpenKeyW(i32 %16, i32 %17, i32* %9)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %96

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @RegQueryValueExW(i32 %25, i8* %26, i32 0, i64* %11, i32 0, i64* %10)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @REG_SZ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %31
  %36 = load i8***, i8**** %7, align 8
  %37 = getelementptr inbounds i8**, i8*** %36, i64 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @lstrlenW(i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = add i64 %42, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @HeapAlloc(i32 %41, i32 0, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %96

55:                                               ; preds = %35
  %56 = load i8*, i8** %12, align 8
  %57 = load i8***, i8**** %7, align 8
  %58 = getelementptr inbounds i8**, i8*** %57, i64 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %56, i8* %60, i32 %64)
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 32, i8* %70, align 1
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = ptrtoint i8* %76 to i32
  %78 = call i64 @RegQueryValueExW(i32 %71, i8* %72, i32 0, i64* %11, i32 %77, i64* %10)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %55
  %83 = load i8*, i8** %12, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i8***, i8**** %7, align 8
  %86 = call i32 @process_args(i8* %83, i32* %84, i8*** %85)
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %55
  %89 = call i32 (...) @GetProcessHeap()
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @HeapFree(i32 %89, i32 0, i8* %90)
  br label %92

92:                                               ; preds = %88, %31, %24
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @RegCloseKey(i32 %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %51, %22
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32, i64*, i32, i64*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @process_args(i8*, i32*, i8***) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
