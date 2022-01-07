; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_token.c_kuhl_m_token_whoami.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_token.c_kuhl_m_token_whoami.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 58, i32 32, i32 0], align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 84, i32 111, i32 107, i32 101, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 32, i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_NO_TOKEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i32] [i32 110, i32 111, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 79, i32 112, i32 101, i32 110, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 84, i32 111, i32 107, i32 101, i32 110, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_token_whoami(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %6 = call i32 @kprintf(i8* bitcast ([20 x i32]* @.str to i8*))
  %7 = call i32 (...) @GetCurrentProcess()
  %8 = load i32, i32* @TOKEN_QUERY, align 4
  %9 = call i64 @OpenProcessToken(i32 %7, i32 %8, i32* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @kuhl_m_token_displayAccount(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CloseHandle(i32 %15)
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  br label %19

19:                                               ; preds = %17, %11
  %20 = call i32 @kprintf(i8* bitcast ([20 x i32]* @.str.2 to i8*))
  %21 = call i32 (...) @GetCurrentThread()
  %22 = load i32, i32* @TOKEN_QUERY, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @OpenThreadToken(i32 %21, i32 %22, i32 %23, i32* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @kuhl_m_token_displayAccount(i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @CloseHandle(i32 %30)
  br label %41

32:                                               ; preds = %19
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_NO_TOKEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @kprintf(i8* bitcast ([10 x i32]* @.str.3 to i8*))
  br label %40

38:                                               ; preds = %32
  %39 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([16 x i32]* @.str.4 to i8*))
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %42
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @kuhl_m_token_displayAccount(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @OpenThreadToken(i32, i32, i32, i32*) #1

declare dso_local i32 @GetCurrentThread(...) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
