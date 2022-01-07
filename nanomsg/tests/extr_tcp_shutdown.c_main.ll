; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_tcp_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_tcp_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.nn_thread = type { i32 }

@THREAD_COUNT = common dso_local global i32 0, align 4
@socket_address = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@TEST_LOOPS = common dso_local global i32 0, align 4
@routine = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@active = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TEST2_THREAD_COUNT = common dso_local global i32 0, align 4
@routine2 = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_SNDTIMEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @THREAD_COUNT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca %struct.nn_thread, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @socket_address, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @get_test_port(i32 %17, i8** %18)
  %20 = call i32 @test_addr_from(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @AF_SP, align 4
  %22 = load i32, i32* @NN_PUB, align 4
  %23 = call i32 @test_socket(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @socket_address, align 4
  %26 = call i32 @test_bind(i32 %24, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %59, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TEST_LOOPS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @THREAD_COUNT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %15, i64 %38
  %40 = load i32, i32* @routine, align 4
  %41 = call i32 @nn_thread_init(%struct.nn_thread* %39, i32 %40, %struct.nn_thread* null)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %32

45:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @THREAD_COUNT, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %15, i64 %52
  %54 = call i32 @nn_thread_term(%struct.nn_thread* %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %46

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @test_close(i32 %63)
  %65 = load i32, i32* @AF_SP, align 4
  %66 = load i32, i32* @NN_PUSH, align 4
  %67 = call i32 @test_socket(i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @socket_address, align 4
  %70 = call i32 @test_bind(i32 %68, i32 %69)
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %121, %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TEST_LOOPS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  %77 = call i32 @nn_atomic_init(%struct.TYPE_4__* @active, i32 %76)
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %91, %75
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %15, i64 %84
  %86 = load i32, i32* @routine2, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %15, i64 %88
  %90 = call i32 @nn_thread_init(%struct.nn_thread* %85, i32 %86, %struct.nn_thread* %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %78

94:                                               ; preds = %78
  %95 = call i32 @nn_sleep(i32 100)
  store i32 200, i32* %11, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @NN_SOL_SOCKET, align 4
  %98 = load i32, i32* @NN_SNDTIMEO, align 4
  %99 = call i32 @test_setsockopt(i32 %96, i32 %97, i32 %98, i32* %11, i32 4)
  br label %100

100:                                              ; preds = %103, %94
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @active, i32 0, i32 0), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @nn_send(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5, i32 0)
  br label %100

106:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %116, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %15, i64 %113
  %115 = call i32 @nn_thread_term(%struct.nn_thread* %114)
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %107

119:                                              ; preds = %107
  %120 = call i32 @nn_atomic_term(%struct.TYPE_4__* @active)
  br label %121

121:                                              ; preds = %119
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %71

124:                                              ; preds = %71
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @test_close(i32 %125)
  store i32 0, i32* %3, align 4
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_addr_from(i32, i8*, i8*, i32) #2

declare dso_local i32 @get_test_port(i32, i8**) #2

declare dso_local i32 @test_socket(i32, i32) #2

declare dso_local i32 @test_bind(i32, i32) #2

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, %struct.nn_thread*) #2

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #2

declare dso_local i32 @test_close(i32) #2

declare dso_local i32 @nn_atomic_init(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @nn_sleep(i32) #2

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #2

declare dso_local i32 @nn_atomic_term(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
