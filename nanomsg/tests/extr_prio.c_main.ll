; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_prio.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_prio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PULL = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_A = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_B = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_SNDPRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@NN_RCVPRIO = common dso_local global i32 0, align 4
@NN_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @AF_SP, align 4
  %10 = load i32, i32* @NN_PULL, align 4
  %11 = call i32 @test_socket(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %14 = call i32 @test_bind(i32 %12, i32 %13)
  %15 = load i32, i32* @AF_SP, align 4
  %16 = load i32, i32* @NN_PULL, align 4
  %17 = call i32 @test_socket(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %20 = call i32 @test_bind(i32 %18, i32 %19)
  %21 = load i32, i32* @AF_SP, align 4
  %22 = load i32, i32* @NN_PUSH, align 4
  %23 = call i32 @test_socket(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NN_SOL_SOCKET, align 4
  %26 = load i32, i32* @NN_SNDPRIO, align 4
  %27 = call i32 @nn_setsockopt(i32 %24, i32 %25, i32 %26, i32* %7, i32 4)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @errno_assert(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %34 = call i32 @test_connect(i32 %32, i32 %33)
  store i32 2, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NN_SOL_SOCKET, align 4
  %37 = load i32, i32* @NN_SNDPRIO, align 4
  %38 = call i32 @nn_setsockopt(i32 %35, i32 %36, i32 %37, i32* %7, i32 4)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @errno_assert(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %45 = call i32 @test_connect(i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @test_send(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @test_send(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @test_recv(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @test_recv(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @test_close(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @test_close(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @test_close(i32 %58)
  %60 = load i32, i32* @AF_SP, align 4
  %61 = load i32, i32* @NN_PUSH, align 4
  %62 = call i32 @test_socket(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %65 = call i32 @test_bind(i32 %63, i32 %64)
  %66 = load i32, i32* @AF_SP, align 4
  %67 = load i32, i32* @NN_PUSH, align 4
  %68 = call i32 @test_socket(i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %71 = call i32 @test_bind(i32 %69, i32 %70)
  %72 = load i32, i32* @AF_SP, align 4
  %73 = load i32, i32* @NN_PULL, align 4
  %74 = call i32 @test_socket(i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  store i32 2, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NN_SOL_SOCKET, align 4
  %77 = load i32, i32* @NN_RCVPRIO, align 4
  %78 = call i32 @nn_setsockopt(i32 %75, i32 %76, i32 %77, i32* %8, i32 4)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @errno_assert(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %85 = call i32 @test_connect(i32 %83, i32 %84)
  store i32 1, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @NN_SOL_SOCKET, align 4
  %88 = load i32, i32* @NN_RCVPRIO, align 4
  %89 = call i32 @nn_setsockopt(i32 %86, i32 %87, i32 %88, i32* %8, i32 4)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @errno_assert(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %96 = call i32 @test_connect(i32 %94, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @test_send(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @test_send(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @nn_sleep(i32 100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @test_recv(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @test_recv(i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @test_close(i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @test_close(i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @test_close(i32 %110)
  %112 = load i32, i32* @AF_SP, align 4
  %113 = load i32, i32* @NN_PUSH, align 4
  %114 = call i32 @test_socket(i32 %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %117 = call i32 @test_bind(i32 %115, i32 %116)
  %118 = load i32, i32* @AF_SP, align 4
  %119 = load i32, i32* @NN_PULL, align 4
  %120 = call i32 @test_socket(i32 %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %123 = call i32 @test_connect(i32 %121, i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @test_send(i32 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @test_recv(i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @test_close(i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @NN_DONTWAIT, align 4
  %132 = call i32 @nn_send(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %131)
  store i32 %132, i32* %2, align 4
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %139

135:                                              ; preds = %0
  %136 = call i64 (...) @nn_errno()
  %137 = load i64, i64* @EAGAIN, align 8
  %138 = icmp eq i64 %136, %137
  br label %139

139:                                              ; preds = %135, %0
  %140 = phi i1 [ false, %0 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @nn_assert(i32 %141)
  %143 = load i32, i32* @AF_SP, align 4
  %144 = load i32, i32* @NN_PULL, align 4
  %145 = call i32 @test_socket(i32 %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %148 = call i32 @test_connect(i32 %146, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @test_send(i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @test_recv(i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @test_close(i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @test_close(i32 %155)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
