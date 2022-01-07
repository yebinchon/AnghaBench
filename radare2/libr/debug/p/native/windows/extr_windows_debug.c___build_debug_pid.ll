; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___build_debug_pid.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___build_debug_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64, i32*)* @__build_debug_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__build_debug_pid(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %17 = load i32, i32* @PROCESS_VM_READ, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @w32_OpenProcess(i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @__resolve_path(i64 %25, i32* null)
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ProcessIdToSessionId(i32 %27, i32* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @CloseHandle(i64 %33)
  br label %36

35:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %60

36:                                               ; preds = %32
  br label %46

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @__resolve_path(i64 %38, i32* null)
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @ProcessIdToSessionId(i32 %40, i32* %11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call i8* @r_sys_conv_win_to_utf8(i32* %50)
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32* @r_debug_pid_new(i8* %53, i32 %54, i32 %55, i8 signext 115, i32 0)
  store i32* %56, i32** %12, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32*, i32** %12, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %52, %35
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i64 @w32_OpenProcess(i32, i32, i32) #1

declare dso_local i8* @__resolve_path(i64, i32*) #1

declare dso_local i64 @ProcessIdToSessionId(i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @r_sys_conv_win_to_utf8(i32*) #1

declare dso_local i32* @r_debug_pid_new(i8*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
