; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_pubsub.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_pubsub.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@NN_SUB = common dso_local global i32 0, align 4
@NN_SUB_SUBSCRIBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOPROTOOPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"0123456789012345678901234567890123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @AF_SP, align 4
  %10 = load i32, i32* @NN_PUB, align 4
  %11 = call i32 @test_socket(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SOCKET_ADDRESS, align 4
  %14 = call i32 @test_bind(i32 %12, i32 %13)
  %15 = load i32, i32* @AF_SP, align 4
  %16 = load i32, i32* @NN_SUB, align 4
  %17 = call i32 @test_socket(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NN_SUB, align 4
  %20 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %21 = call i32 @nn_setsockopt(i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @errno_assert(i32 %24)
  store i64 8, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NN_SUB, align 4
  %28 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %30 = call i32 @nn_getsockopt(i32 %26, i32 %27, i32 %28, i8* %29, i64* %8)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %0
  %34 = call i64 (...) @nn_errno()
  %35 = load i64, i64* @ENOPROTOOPT, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %0
  %38 = phi i1 [ false, %0 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @nn_assert(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SOCKET_ADDRESS, align 4
  %43 = call i32 @test_connect(i32 %41, i32 %42)
  %44 = load i32, i32* @AF_SP, align 4
  %45 = load i32, i32* @NN_SUB, align 4
  %46 = call i32 @test_socket(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NN_SUB, align 4
  %49 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %50 = call i32 @nn_setsockopt(i32 %47, i32 %48, i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @errno_assert(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SOCKET_ADDRESS, align 4
  %57 = call i32 @test_connect(i32 %55, i32 %56)
  %58 = call i32 @nn_sleep(i32 10)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @test_send(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @test_recv(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @test_recv(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @test_close(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @test_close(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @test_close(i32 %69)
  %71 = load i32, i32* @AF_SP, align 4
  %72 = load i32, i32* @NN_SUB, align 4
  %73 = call i32 @test_socket(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @NN_SUB, align 4
  %76 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %77 = call i32 @nn_setsockopt(i32 %74, i32 %75, i32 %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @errno_assert(i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @SOCKET_ADDRESS, align 4
  %84 = call i32 @test_bind(i32 %82, i32 %83)
  %85 = load i32, i32* @AF_SP, align 4
  %86 = load i32, i32* @NN_PUB, align 4
  %87 = call i32 @test_socket(i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @SOCKET_ADDRESS, align 4
  %90 = call i32 @test_connect(i32 %88, i32 %89)
  %91 = load i32, i32* @AF_SP, align 4
  %92 = load i32, i32* @NN_PUB, align 4
  %93 = call i32 @test_socket(i32 %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SOCKET_ADDRESS, align 4
  %96 = call i32 @test_connect(i32 %94, i32 %95)
  %97 = call i32 @nn_sleep(i32 100)
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @test_send(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @test_send(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @test_recv(i32 %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @test_recv(i32 %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @test_close(i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @test_close(i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @test_close(i32 %110)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

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
