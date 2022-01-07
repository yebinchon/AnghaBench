; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ws_async_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ws_async_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@TEST_THREADS = common dso_local global i32 0, align 4
@socket_address = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ws\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_LOOPS = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_SNDTIMEO = common dso_local global i32 0, align 4
@NN_SUB = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@NN_SUB_SUBSCRIBE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @TEST_THREADS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @TEST_THREADS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca %struct.nn_thread, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %22 = load i32, i32* @socket_address, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @get_test_port(i32 %23, i8** %24)
  %26 = call i32 @test_addr_from(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %100, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TEST_LOOPS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %27
  %32 = load i32, i32* @AF_SP, align 4
  %33 = load i32, i32* @NN_PUB, align 4
  %34 = call i32 @test_socket(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @socket_address, align 4
  %37 = call i32 @test_bind(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @NN_SOL_SOCKET, align 4
  %40 = load i32, i32* @NN_SNDTIMEO, align 4
  %41 = call i32 (i32, i32, i32, ...) @test_setsockopt(i32 %38, i32 %39, i32 %40, i32* %11, i64 4)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %73, %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @TEST_THREADS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load i32, i32* @AF_SP, align 4
  %48 = load i32, i32* @NN_SUB, align 4
  %49 = call i32 @test_socket(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NN_SOL_SOCKET, align 4
  %52 = load i32, i32* @NN_RCVTIMEO, align 4
  %53 = call i32 (i32, i32, i32, ...) @test_setsockopt(i32 %50, i32 %51, i32 %52, i32* %10, i64 4)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @NN_SUB, align 4
  %56 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %57 = call i32 (i32, i32, i32, ...) @test_setsockopt(i32 %54, i32 %55, i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @socket_address, align 4
  %60 = call i32 @test_connect(i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %18, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %21, i64 %66
  %68 = load i32, i32* @routine, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %18, i64 %70
  %72 = call i32 @nn_thread_init(%struct.nn_thread* %67, i32 %68, i32* %71)
  br label %73

73:                                               ; preds = %46
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %42

76:                                               ; preds = %42
  %77 = call i32 @nn_sleep(i32 100)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @test_send(i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %94, %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TEST_THREADS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %18, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @test_close(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %21, i64 %91
  %93 = call i32 @nn_thread_term(%struct.nn_thread* %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %80

97:                                               ; preds = %80
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @test_close(i32 %98)
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %27

103:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  %104 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_addr_from(i32, i8*, i8*, i32) #2

declare dso_local i32 @get_test_port(i32, i8**) #2

declare dso_local i32 @test_socket(i32, i32) #2

declare dso_local i32 @test_bind(i32, i32) #2

declare dso_local i32 @test_setsockopt(i32, i32, i32, ...) #2

declare dso_local i32 @test_connect(i32, i32) #2

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #2

declare dso_local i32 @nn_sleep(i32) #2

declare dso_local i32 @test_send(i32, i8*) #2

declare dso_local i32 @test_close(i32) #2

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
