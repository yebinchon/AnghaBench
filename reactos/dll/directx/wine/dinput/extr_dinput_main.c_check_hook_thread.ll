; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_check_hook_thread.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_check_hook_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_hook_thread.hook_thread = internal global i32* null, align 8
@dinput_hook_crit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IDirectInputs left: %d\0A\00", align 1
@direct_input_list = common dso_local global i32 0, align 4
@GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = common dso_local global i32 0, align 4
@DINPUT_instance = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@hook_thread_event = common dso_local global i32* null, align 8
@hook_thread_proc = common dso_local global i32 0, align 4
@hook_thread_id = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@WM_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_hook_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_hook_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @EnterCriticalSection(i32* @dinput_hook_crit)
  %4 = call i32 @list_count(i32* @direct_input_list)
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i64 @list_empty(i32* @direct_input_list)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %0
  %9 = load i32*, i32** @check_hook_thread.hook_thread, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, align 4
  %13 = load i64, i64* @DINPUT_instance, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @GetModuleHandleExW(i32 %12, i32* %14, i32* %1)
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32* @CreateEventW(i32* null, i32 %16, i32 %17, i32* null)
  store i32* %18, i32** @hook_thread_event, align 8
  %19 = load i32, i32* @hook_thread_proc, align 4
  %20 = load i32*, i32** @hook_thread_event, align 8
  %21 = call i32* @CreateThread(i32* null, i32 0, i32 %19, i32* %20, i32 0, i64* @hook_thread_id)
  store i32* %21, i32** @check_hook_thread.hook_thread, align 8
  br label %46

22:                                               ; preds = %8, %0
  %23 = call i64 @list_empty(i32* @direct_input_list)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32*, i32** @check_hook_thread.hook_thread, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* @hook_thread_id, align 8
  store i64 %29, i64* %2, align 8
  %30 = load i32*, i32** @hook_thread_event, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** @hook_thread_event, align 8
  %34 = load i32, i32* @INFINITE, align 4
  %35 = call i32 @WaitForSingleObject(i32* %33, i32 %34)
  %36 = load i32*, i32** @hook_thread_event, align 8
  %37 = call i32 @CloseHandle(i32* %36)
  store i32* null, i32** @hook_thread_event, align 8
  br label %38

38:                                               ; preds = %32, %28
  store i64 0, i64* @hook_thread_id, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @WM_USER, align 8
  %41 = add nsw i64 %40, 16
  %42 = call i32 @PostThreadMessageW(i64 %39, i64 %41, i32 0, i32 0)
  %43 = load i32*, i32** @check_hook_thread.hook_thread, align 8
  %44 = call i32 @CloseHandle(i32* %43)
  store i32* null, i32** @check_hook_thread.hook_thread, align 8
  br label %45

45:                                               ; preds = %38, %25, %22
  br label %46

46:                                               ; preds = %45, %11
  %47 = call i32 @LeaveCriticalSection(i32* @dinput_hook_crit)
  %48 = load i64, i64* @hook_thread_id, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @list_count(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @GetModuleHandleExW(i32, i32*, i32*) #1

declare dso_local i32* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @PostThreadMessageW(i64, i64, i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
