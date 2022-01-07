; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_device4.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_device4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@socket_address_f = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@socket_address_g = common dso_local global i32 0, align 4
@device4 = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@NN_REP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"REPLYXYZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_thread, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @get_test_port(i32 %10, i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @socket_address_f, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @test_addr_from(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @socket_address_g, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @test_addr_from(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @device4, align 4
  %21 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %20, i32* null)
  %22 = load i32, i32* @AF_SP, align 4
  %23 = load i32, i32* @NN_REQ, align 4
  %24 = call i32 @test_socket(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @socket_address_f, align 4
  %27 = call i32 @test_connect(i32 %25, i32 %26)
  %28 = load i32, i32* @AF_SP, align 4
  %29 = load i32, i32* @NN_REP, align 4
  %30 = call i32 @test_socket(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @socket_address_g, align 4
  %33 = call i32 @test_connect(i32 %31, i32 %32)
  %34 = call i32 @nn_sleep(i32 100)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @test_send(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @test_recv(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @test_send(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @test_recv(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @test_close(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @test_close(i32 %45)
  %47 = call i32 (...) @nn_term()
  %48 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  ret i32 0
}

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_addr_from(i32, i8*, i8*, i32) #1

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_term(...) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
