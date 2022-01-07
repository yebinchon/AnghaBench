; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_device6.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_device6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@socket_address_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@socket_address_i = common dso_local global i32 0, align 4
@socket_address_j = common dso_local global i32 0, align 4
@device5 = common dso_local global i32 0, align 4
@device6 = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_SURVEYOR = common dso_local global i32 0, align 4
@NN_RESPONDENT = common dso_local global i32 0, align 4
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
  %9 = alloca %struct.nn_thread, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @get_test_port(i32 %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @socket_address_h, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @test_addr_from(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @socket_address_i, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @test_addr_from(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @socket_address_j, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @test_addr_from(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @device5, align 4
  %26 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %25, i32* null)
  %27 = load i32, i32* @device6, align 4
  %28 = call i32 @nn_thread_init(%struct.nn_thread* %9, i32 %27, i32* null)
  %29 = load i32, i32* @AF_SP, align 4
  %30 = load i32, i32* @NN_SURVEYOR, align 4
  %31 = call i32 @test_socket(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @socket_address_h, align 4
  %34 = call i32 @test_connect(i32 %32, i32 %33)
  %35 = load i32, i32* @AF_SP, align 4
  %36 = load i32, i32* @NN_RESPONDENT, align 4
  %37 = call i32 @test_socket(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @socket_address_j, align 4
  %40 = call i32 @test_connect(i32 %38, i32 %39)
  %41 = call i32 @nn_sleep(i32 1000)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @test_send(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @test_recv(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @test_send(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @test_recv(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @test_close(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @test_close(i32 %52)
  %54 = call i32 (...) @nn_term()
  %55 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  %56 = call i32 @nn_thread_term(%struct.nn_thread* %9)
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
