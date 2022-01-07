; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_server_connect.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_server_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_PIPE_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i32] [i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pipe_server_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @ConnectNamedPipe(i32 %5, i32* null)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @ERROR_PIPE_CONNECTED, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br i1 %13, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str to i8*))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @ConnectNamedPipe(i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
