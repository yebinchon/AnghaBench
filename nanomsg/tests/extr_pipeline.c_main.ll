; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_pipeline.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_pipeline.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@NN_PULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @AF_SP, align 4
  %7 = load i32, i32* @NN_PUSH, align 4
  %8 = call i32 @test_socket(i32 %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SOCKET_ADDRESS, align 4
  %11 = call i32 @test_bind(i32 %9, i32 %10)
  %12 = load i32, i32* @AF_SP, align 4
  %13 = load i32, i32* @NN_PULL, align 4
  %14 = call i32 @test_socket(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SOCKET_ADDRESS, align 4
  %17 = call i32 @test_connect(i32 %15, i32 %16)
  %18 = load i32, i32* @AF_SP, align 4
  %19 = load i32, i32* @NN_PULL, align 4
  %20 = call i32 @test_socket(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SOCKET_ADDRESS, align 4
  %23 = call i32 @test_connect(i32 %21, i32 %22)
  %24 = call i32 @nn_sleep(i32 10)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @test_send(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @test_send(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @test_recv(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @test_recv(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @test_close(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @test_close(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @test_close(i32 %37)
  %39 = load i32, i32* @AF_SP, align 4
  %40 = load i32, i32* @NN_PULL, align 4
  %41 = call i32 @test_socket(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SOCKET_ADDRESS, align 4
  %44 = call i32 @test_bind(i32 %42, i32 %43)
  %45 = load i32, i32* @AF_SP, align 4
  %46 = load i32, i32* @NN_PUSH, align 4
  %47 = call i32 @test_socket(i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SOCKET_ADDRESS, align 4
  %50 = call i32 @test_connect(i32 %48, i32 %49)
  %51 = load i32, i32* @AF_SP, align 4
  %52 = load i32, i32* @NN_PUSH, align 4
  %53 = call i32 @test_socket(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SOCKET_ADDRESS, align 4
  %56 = call i32 @test_connect(i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @test_send(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @test_send(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @test_recv(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @test_recv(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @test_close(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @test_close(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @test_close(i32 %69)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
