; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_terminate_process.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_terminate_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"w32_terminate_process/OpenProcess\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"e32_terminate_process/TerminateProcess\00", align 1
@WAIT_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"w32_terminate_process/WaitForSingleObject\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"(%d) Waiting for process to terminate timed out.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_terminate_process(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @PROCESS_TERMINATE, align 4
  %9 = load i32, i32* @SYNCHRONIZE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @w32_OpenProcess(i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @r_sys_perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %44

18:                                               ; preds = %2
  br i1 true, label %19, label %22

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @w32_DebugActiveProcessStop(i32 %20)
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TerminateProcess(i64 %23, i32 1)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @r_sys_perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %44

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @WaitForSingleObject(i64 %29, i32 1000)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @WAIT_FAILED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @r_sys_perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %44

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @WAIT_TIMEOUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %40, %34, %26, %16
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @w32_OpenProcess(i32, i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @w32_DebugActiveProcessStop(i32) #1

declare dso_local i64 @TerminateProcess(i64, i32) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
