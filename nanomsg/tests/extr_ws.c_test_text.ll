; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ws.c_test_text.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ws.c_test_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE_TEXT = common dso_local global i32 0, align 4
@NN_WS = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@socket_address = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GOOD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BAD.\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_text() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = load i32, i32* @AF_SP, align 4
  %6 = load i32, i32* @NN_PAIR, align 4
  %7 = call i32 @test_socket(i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @AF_SP, align 4
  %9 = load i32, i32* @NN_PAIR, align 4
  %10 = call i32 @test_socket(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @NN_WS_MSG_TYPE_TEXT, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @NN_WS, align 4
  %14 = load i32, i32* @NN_WS_MSG_TYPE, align 4
  %15 = call i32 @test_setsockopt(i32 %12, i32 %13, i32 %14, i32* %3, i32 4)
  %16 = load i32, i32* @NN_WS_MSG_TYPE_TEXT, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @NN_WS, align 4
  %19 = load i32, i32* @NN_WS_MSG_TYPE, align 4
  %20 = call i32 @test_setsockopt(i32 %17, i32 %18, i32 %19, i32* %3, i32 4)
  store i32 500, i32* %3, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @NN_SOL_SOCKET, align 4
  %23 = load i32, i32* @NN_RCVTIMEO, align 4
  %24 = call i32 @test_setsockopt(i32 %21, i32 %22, i32 %23, i32* %3, i32 4)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @socket_address, align 4
  %27 = call i32 @test_bind(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @socket_address, align 4
  %30 = call i32 @test_connect(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @test_send(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @test_recv(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 2
  store i8 -35, i8* %37, align 2
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %40 = call i32 @test_send(i32 %38, i8* %39)
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = call i32 @test_drop(i32 %41, i32 %42)
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @test_close(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @test_close(i32 %46)
  ret void
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @test_drop(i32, i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
