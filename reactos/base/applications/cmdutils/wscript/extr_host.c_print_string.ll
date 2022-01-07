; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_host.c_print_string.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_host.c_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wshInteractive = common dso_local global i64 0, align 8
@print_string.windows_script_hostW = internal constant [20 x i8] c"Windows Script Host\00", align 16
@MB_OK = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@print_string.crnlW = internal constant [2 x i8] c"\0D\0A", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @wshInteractive, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @MB_OK, align 4
  %13 = call i32 @MessageBoxW(i32* null, i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @print_string.windows_script_hostW, i64 0, i64 0), i32 %12)
  br label %58

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlenW(i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %18 = call i32 @GetStdHandle(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @WriteConsoleW(i32 %18, i8* %19, i32 %20, i32* %3, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %26 = call i32 @GetStdHandle(i32 %25)
  %27 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_string.crnlW, i64 0, i64 0))
  %28 = call i32 @WriteConsoleW(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_string.crnlW, i64 0, i64 0), i32 %27, i32* %3, i32* null)
  br label %58

29:                                               ; preds = %14
  %30 = call i32 (...) @GetConsoleOutputCP()
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WideCharToMultiByte(i32 %30, i32 0, i8* %31, i32 %32, i8* null, i32 0, i32* null, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @heap_alloc(i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %58

39:                                               ; preds = %29
  %40 = call i32 (...) @GetConsoleOutputCP()
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @WideCharToMultiByte(i32 %40, i32 0, i8* %41, i32 %42, i8* %43, i32 %44, i32* null, i32* null)
  %46 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %47 = call i32 @GetStdHandle(i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @WriteFile(i32 %47, i8* %48, i32 %49, i32* %3, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @heap_free(i8* %52)
  %54 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %55 = call i32 @GetStdHandle(i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @WriteFile(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %3, i32 %56)
  br label %58

58:                                               ; preds = %39, %38, %24, %10
  ret void
}

declare dso_local i32 @MessageBoxW(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @WriteConsoleW(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetConsoleOutputCP(...) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
