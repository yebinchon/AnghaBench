; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_server.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@NMPWAIT_USE_DEFAULT_WAIT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pipe_server(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %9 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %10 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PIPE_WAIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NMPWAIT_USE_DEFAULT_WAIT, align 4
  %15 = call i64 @CreateNamedPipe(i32 %7, i32 %8, i32 %13, i32 1, i32 0, i32 0, i32 %14, i32* null)
  %16 = load i64*, i64** %4, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br i1 %26, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([16 x i32]* @.str to i8*))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @CreateNamedPipe(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
