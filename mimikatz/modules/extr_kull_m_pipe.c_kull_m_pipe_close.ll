; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_close.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_PIPE_NOT_CONNECTED = common dso_local global i64 0, align 8
@PIPE_SERVER_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i32] [i32 68, i32 105, i32 115, i32 99, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 67, i32 108, i32 111, i32 115, i32 101, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 71, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 73, i32 110, i32 102, i32 111, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pipe_close(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i64*, i64** %2, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load i64*, i64** %2, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %9
  %15 = load i64*, i64** %2, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @GetNamedPipeInfo(i64 %16, i32* %4, i32* null, i32* null, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_PIPE_NOT_CONNECTED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PIPE_SERVER_END, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i64*, i64** %2, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DisconnectNamedPipe(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str to i8*))
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i64*, i64** %2, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @CloseHandle(i64 %38)
  store i32 %39, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %43 = load i64*, i64** %2, align 8
  store i64 %42, i64* %43, align 8
  br label %46

44:                                               ; preds = %36
  %45 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.1 to i8*))
  br label %46

46:                                               ; preds = %44, %41
  br label %49

47:                                               ; preds = %19
  %48 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.2 to i8*))
  br label %49

49:                                               ; preds = %47, %46
  br label %50

50:                                               ; preds = %49, %9, %1
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @GetNamedPipeInfo(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DisconnectNamedPipe(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
