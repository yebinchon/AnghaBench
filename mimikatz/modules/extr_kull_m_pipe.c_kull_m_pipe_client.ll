; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_client.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@NMPWAIT_USE_DEFAULT_WAIT = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i32] [i32 83, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 83, i32 116, i32 97, i32 116, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [14 x i32] [i32 87, i32 97, i32 105, i32 116, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pipe_client(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %9 = load i32, i32* @PIPE_WAIT, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NMPWAIT_USE_DEFAULT_WAIT, align 4
  %13 = call i64 @WaitNamedPipe(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GENERIC_READ, align 4
  %18 = load i32, i32* @GENERIC_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i64 @CreateFile(i32 %16, i32 %19, i32 0, i32* null, i32 %20, i32 0, i32* null)
  %22 = load i64*, i64** %4, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SetNamedPipeHandleState(i64 %33, i32* %6, i32* null, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str to i8*))
  br label %38

38:                                               ; preds = %36, %31
  br label %41

39:                                               ; preds = %26, %15
  %40 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([11 x i32]* @.str.1 to i8*))
  br label %41

41:                                               ; preds = %39, %38
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([14 x i32]* @.str.2 to i8*))
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @WaitNamedPipe(i32, i32) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SetNamedPipeHandleState(i64, i32*, i32*, i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
