; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_bug328.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_bug328.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@NN_STAT_CURRENT_CONNECTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @get_test_port(i32 %10, i8** %11)
  %13 = call i32 @test_addr_from(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @AF_SP, align 4
  %15 = load i32, i32* @NN_PAIR, align 4
  %16 = call i32 @test_socket(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %19 = call i32 @test_bind(i32 %17, i8* %18)
  %20 = load i32, i32* @AF_SP, align 4
  %21 = load i32, i32* @NN_PAIR, align 4
  %22 = call i32 @test_socket(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %25 = call i32 @test_connect(i32 %23, i8* %24)
  %26 = call i32 @nn_sleep(i32 100)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @test_send(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @test_recv(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %33 = call i32 @nn_get_statistic(i32 %31, i32 %32)
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @nn_assert(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @test_close(i32 %37)
  %39 = call i32 @nn_sleep(i32 300)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %42 = call i32 @nn_get_statistic(i32 %40, i32 %41)
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @nn_assert(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @test_close(i32 %46)
  ret i32 0
}

declare dso_local i32 @test_addr_from(i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i8*) #1

declare dso_local i32 @test_connect(i32, i8*) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_get_statistic(i32, i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
