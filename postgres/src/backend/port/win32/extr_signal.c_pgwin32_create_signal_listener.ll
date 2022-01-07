; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pgwin32_create_signal_listener.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pgwin32_create_signal_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\\\\.\\pipe\\pgsignal_%u\00", align 1
@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@PIPE_UNLIMITED_INSTANCES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"could not create signal listener pipe for PID %d: error code %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgwin32_create_signal_listener(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %6 = load i64, i64* %2, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @snprintf(i8* %5, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %11 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %12 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PIPE_WAIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PIPE_UNLIMITED_INSTANCES, align 4
  %17 = call i64 @CreateNamedPipe(i8* %9, i32 %10, i32 %15, i32 %16, i32 16, i32 16, i32 1000, i32* null)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i64, i64* %2, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @CreateNamedPipe(i8*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
