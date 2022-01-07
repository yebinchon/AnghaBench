; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/ipc-util/ipc-util/extr_pipe-windows.c_ipc_pipe_internal_create_pipe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/ipc-util/ipc-util/extr_pipe-windows.c_ipc_pipe_internal_create_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i8* }

@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\\\\.\\pipe\\\00", align 1
@IPC_PIPE_BUF_SIZE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @ipc_pipe_internal_create_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_pipe_internal_create_pipe(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %12 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %15 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PIPE_WAIT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %20 = call i32 @strcpy_s(i8* %19, i32 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcat_s(i8* %21, i32 512, i8* %22)
  %24 = call i8* (...) @create_full_access_security_descriptor()
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 16, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IPC_PIPE_BUF_SIZE, align 4
  %37 = load i32, i32* @IPC_PIPE_BUF_SIZE, align 4
  %38 = call i32 @CreateNamedPipeA(i8* %33, i32 %34, i32 %35, i32 1, i32 %36, i32 %37, i32 0, %struct.TYPE_6__* %6)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %28, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @strcpy_s(i8*, i32, i8*) #1

declare dso_local i32 @strcat_s(i8*, i32, i8*) #1

declare dso_local i8* @create_full_access_security_descriptor(...) #1

declare dso_local i32 @CreateNamedPipeA(i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
