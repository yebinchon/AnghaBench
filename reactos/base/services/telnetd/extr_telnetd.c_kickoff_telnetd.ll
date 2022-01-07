; ModuleID = '/home/carl/AnghaBench/reactos/base/services/telnetd/extr_telnetd.c_kickoff_telnetd.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/telnetd/extr_telnetd.c_kickoff_telnetd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Attempting to start Simple TelnetD\0A\00", align 1
@Cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to start socket interface\0A\00", align 1
@bShutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kickoff_telnetd() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @Cleanup, align 4
  %3 = call i32 @SetConsoleCtrlHandler(i32 %2, i32 1)
  %4 = call i32 (...) @StartSocketInterface()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @ErrorExit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @CreateSocket()
  br label %10

10:                                               ; preds = %14, %8
  %11 = load i32, i32* @bShutdown, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @WaitForConnect()
  br label %10

16:                                               ; preds = %10
  %17 = call i32 (...) @WSACleanup()
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SetConsoleCtrlHandler(i32, i32) #1

declare dso_local i32 @StartSocketInterface(...) #1

declare dso_local i32 @ErrorExit(i8*) #1

declare dso_local i32 @CreateSocket(...) #1

declare dso_local i32 @WaitForConnect(...) #1

declare dso_local i32 @WSACleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
