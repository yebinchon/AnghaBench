; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_device.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_device.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@device1 = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_A = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@device2 = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_C = common dso_local global i32 0, align 4
@NN_PULL = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@device3 = common dso_local global i32 0, align 4
@NN_BUS = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_E = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"KLM\00", align 1
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_thread, align 4
  %9 = alloca %struct.nn_thread, align 4
  %10 = alloca %struct.nn_thread, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = load i32, i32* @device1, align 4
  %13 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %12, i32* null)
  %14 = load i32, i32* @AF_SP, align 4
  %15 = load i32, i32* @NN_PAIR, align 4
  %16 = call i32 @test_socket(i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %19 = call i32 @test_connect(i32 %17, i32 %18)
  %20 = load i32, i32* @AF_SP, align 4
  %21 = load i32, i32* @NN_PAIR, align 4
  %22 = call i32 @test_socket(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %25 = call i32 @test_connect(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @test_send(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @test_recv(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @test_send(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @test_recv(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @test_close(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @test_close(i32 %36)
  %38 = load i32, i32* @device2, align 4
  %39 = call i32 @nn_thread_init(%struct.nn_thread* %9, i32 %38, i32* null)
  %40 = load i32, i32* @AF_SP, align 4
  %41 = load i32, i32* @NN_PUSH, align 4
  %42 = call i32 @test_socket(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SOCKET_ADDRESS_C, align 4
  %45 = call i32 @test_connect(i32 %43, i32 %44)
  %46 = load i32, i32* @AF_SP, align 4
  %47 = load i32, i32* @NN_PULL, align 4
  %48 = call i32 @test_socket(i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SOCKET_ADDRESS_D, align 4
  %51 = call i32 @test_connect(i32 %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @test_send(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @test_recv(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @test_close(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @test_close(i32 %58)
  %60 = load i32, i32* @device3, align 4
  %61 = call i32 @nn_thread_init(%struct.nn_thread* %10, i32 %60, i32* null)
  %62 = load i32, i32* @AF_SP, align 4
  %63 = load i32, i32* @NN_BUS, align 4
  %64 = call i32 @test_socket(i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @SOCKET_ADDRESS_E, align 4
  %67 = call i32 @test_connect(i32 %65, i32 %66)
  %68 = load i32, i32* @AF_SP, align 4
  %69 = load i32, i32* @NN_BUS, align 4
  %70 = call i32 @test_socket(i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SOCKET_ADDRESS_E, align 4
  %73 = call i32 @test_connect(i32 %71, i32 %72)
  %74 = call i32 @nn_sleep(i32 100)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @test_send(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @test_recv(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 100, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NN_SOL_SOCKET, align 4
  %81 = load i32, i32* @NN_RCVTIMEO, align 4
  %82 = call i32 @test_setsockopt(i32 %79, i32 %80, i32 %81, i32* %11, i32 4)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = call i32 @test_drop(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @test_close(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @test_close(i32 %88)
  %90 = call i32 (...) @nn_term()
  %91 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  %92 = call i32 @nn_thread_term(%struct.nn_thread* %9)
  %93 = call i32 @nn_thread_term(%struct.nn_thread* %10)
  ret i32 0
}

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @test_drop(i32, i32) #1

declare dso_local i32 @nn_term(...) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
