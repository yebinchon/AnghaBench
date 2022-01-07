; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_get_script_str.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_get_script_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_script_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_script_str(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @OPEN_EXISTING, align 4
  %13 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %14 = call i64 @CreateFileW(i32* %10, i32 %11, i32 0, i32* null, i32 %12, i32 %13, i32* null)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %56

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @GetFileSize(i64 %20, i32* null)
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @PAGE_READONLY, align 4
  %24 = call i64 @CreateFileMappingW(i64 %22, i32* null, i32 %23, i32 0, i32 0, i32* null)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @CloseHandle(i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %56

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @FILE_MAP_READ, align 4
  %34 = call i8* @MapViewOfFile(i64 %32, i32 %33, i32 0, i32 0, i32 0)
  store i8* %34, i8** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @CloseHandle(i64 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32* null, i32** %2, align 8
  br label %56

40:                                               ; preds = %31
  %41 = load i32, i32* @CP_ACP, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @MultiByteToWideChar(i32 %41, i32 0, i8* %42, i32 %43, i32* null, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32* @SysAllocStringLen(i32* null, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* @CP_ACP, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MultiByteToWideChar(i32 %47, i32 0, i8* %48, i32 %49, i32* %50, i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @UnmapViewOfFile(i8* %53)
  %55 = load i32*, i32** %9, align 8
  store i32* %55, i32** %2, align 8
  br label %56

56:                                               ; preds = %40, %39, %30, %18
  %57 = load i32*, i32** %2, align 8
  ret i32* %57
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
