; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_async_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_async_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_LOOPS = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PULL = common dso_local global i32 0, align 4
@routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_thread, align 4
  %9 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @get_test_port(i32 %11, i8** %12)
  %14 = call i32 @test_addr_from(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TEST_LOOPS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32, i32* @AF_SP, align 4
  %21 = load i32, i32* @NN_PULL, align 4
  %22 = call i32 @test_socket(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %25 = call i32 @test_bind(i32 %23, i8* %24)
  %26 = call i32 @nn_sleep(i32 100)
  %27 = load i32, i32* @routine, align 4
  %28 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %27, i32* %6)
  %29 = call i32 @nn_sleep(i32 100)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @test_close(i32 %30)
  %32 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %15

36:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @test_addr_from(i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i8*) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
