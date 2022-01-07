; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ipc_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ipc_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@THREAD_COUNT = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@TEST_LOOPS = common dso_local global i32 0, align 4
@routine = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@TEST2_THREAD_COUNT = common dso_local global i32 0, align 4
@routine2 = common dso_local global i32 0, align 4
@active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@NN_DONTWAIT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @THREAD_COUNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca %struct.nn_thread, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @AF_SP, align 4
  %12 = load i32, i32* @NN_PUB, align 4
  %13 = call i32 @test_socket(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SOCKET_ADDRESS, align 4
  %16 = call i32 @test_bind(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %49, %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TEST_LOOPS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @THREAD_COUNT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %28
  %30 = load i32, i32* @routine, align 4
  %31 = call i32 @nn_thread_init(%struct.nn_thread* %29, i32 %30, i32* null)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %45, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @THREAD_COUNT, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %42
  %44 = call i32 @nn_thread_term(%struct.nn_thread* %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %36

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @test_close(i32 %53)
  %55 = load i32, i32* @AF_SP, align 4
  %56 = load i32, i32* @NN_PUSH, align 4
  %57 = call i32 @test_socket(i32 %55, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @SOCKET_ADDRESS, align 4
  %60 = call i32 @test_bind(i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %103, %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TEST_LOOPS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %72
  %74 = load i32, i32* @routine2, align 4
  %75 = call i32 @nn_thread_init(%struct.nn_thread* %73, i32 %74, i32* null)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  store i32 %80, i32* @active, align 4
  br label %81

81:                                               ; preds = %84, %79
  %82 = load i32, i32* @active, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @NN_DONTWAIT, align 4
  %87 = call i32 @nn_send(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32 %86)
  %88 = call i32 @nn_sleep(i32 0)
  br label %81

89:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %99, %89
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @TEST2_THREAD_COUNT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %96
  %98 = call i32 @nn_thread_term(%struct.nn_thread* %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %90

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %61

106:                                              ; preds = %61
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @test_close(i32 %107)
  store i32 0, i32* %1, align 4
  %109 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_socket(i32, i32) #2

declare dso_local i32 @test_bind(i32, i32) #2

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #2

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #2

declare dso_local i32 @test_close(i32) #2

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #2

declare dso_local i32 @nn_sleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
