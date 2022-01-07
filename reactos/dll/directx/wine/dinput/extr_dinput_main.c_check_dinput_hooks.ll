; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_check_dinput_hooks.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_check_dinput_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@check_dinput_hooks.callwndproc_hook = internal global i32* null, align 8
@check_dinput_hooks.foreground_cnt = internal global i64 0, align 8
@dinput_hook_crit = common dso_local global i32 0, align 4
@DISCL_FOREGROUND = common dso_local global i32 0, align 4
@WH_CALLWNDPROC = common dso_local global i32 0, align 4
@callwndproc_proc = common dso_local global i32 0, align 4
@DINPUT_instance = common dso_local global i32 0, align 4
@hook_thread_event = common dso_local global i32* null, align 8
@INFINITE = common dso_local global i32 0, align 4
@hook_thread_id = common dso_local global i32 0, align 4
@WM_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_dinput_hooks(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_3__* @impl_from_IDirectInputDevice8W(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = call i32 @EnterCriticalSection(i32* @dinput_hook_crit)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DISCL_FOREGROUND, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @check_dinput_hooks.foreground_cnt, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @check_dinput_hooks.foreground_cnt, align 8
  br label %24

21:                                               ; preds = %15
  %22 = load i64, i64* @check_dinput_hooks.foreground_cnt, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* @check_dinput_hooks.foreground_cnt, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* @check_dinput_hooks.foreground_cnt, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** @check_dinput_hooks.callwndproc_hook, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @WH_CALLWNDPROC, align 4
  %33 = load i32, i32* @callwndproc_proc, align 4
  %34 = load i32, i32* @DINPUT_instance, align 4
  %35 = call i32 (...) @GetCurrentThreadId()
  %36 = call i32* @SetWindowsHookExW(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** @check_dinput_hooks.callwndproc_hook, align 8
  br label %47

37:                                               ; preds = %28, %25
  %38 = load i64, i64* @check_dinput_hooks.foreground_cnt, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** @check_dinput_hooks.callwndproc_hook, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** @check_dinput_hooks.callwndproc_hook, align 8
  %45 = call i32 @UnhookWindowsHookEx(i32* %44)
  store i32* null, i32** @check_dinput_hooks.callwndproc_hook, align 8
  br label %46

46:                                               ; preds = %43, %40, %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32*, i32** @hook_thread_event, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** @hook_thread_event, align 8
  %52 = load i32, i32* @INFINITE, align 4
  %53 = call i32 @WaitForSingleObject(i32* %51, i32 %52)
  %54 = load i32*, i32** @hook_thread_event, align 8
  %55 = call i32 @CloseHandle(i32* %54)
  store i32* null, i32** @hook_thread_event, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @hook_thread_id, align 4
  %58 = load i64, i64* @WM_USER, align 8
  %59 = add nsw i64 %58, 16
  %60 = call i32 @PostThreadMessageW(i32 %57, i64 %59, i32 1, i32 0)
  %61 = call i32 @LeaveCriticalSection(i32* @dinput_hook_crit)
  ret void
}

declare dso_local %struct.TYPE_3__* @impl_from_IDirectInputDevice8W(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @SetWindowsHookExW(i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @UnhookWindowsHookEx(i32*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @PostThreadMessageW(i32, i64, i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
