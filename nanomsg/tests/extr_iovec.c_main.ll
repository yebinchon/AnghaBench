; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_iovec.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_iovec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_iovec = type { i8*, i32 }
%struct.nn_msghdr = type { i32, %struct.nn_iovec* }

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CDEF\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.nn_iovec], align 16
  %6 = alloca %struct.nn_msghdr, align 8
  %7 = alloca [6 x i8], align 1
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @AF_SP, align 4
  %9 = load i32, i32* @NN_PAIR, align 4
  %10 = call i32 @test_socket(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SOCKET_ADDRESS, align 4
  %13 = call i32 @test_bind(i32 %11, i32 %12)
  %14 = load i32, i32* @AF_SP, align 4
  %15 = load i32, i32* @NN_PAIR, align 4
  %16 = call i32 @test_socket(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SOCKET_ADDRESS, align 4
  %19 = call i32 @test_connect(i32 %17, i32 %18)
  %20 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %21 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %22, i32 0, i32 1
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 1
  %25 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 1
  %27 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %26, i32 0, i32 1
  store i32 4, i32* %27, align 8
  %28 = call i32 @memset(%struct.nn_msghdr* %6, i32 0, i32 16)
  %29 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %30 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %6, i32 0, i32 1
  store %struct.nn_iovec* %29, %struct.nn_iovec** %30, align 8
  %31 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %6, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nn_sendmsg(i32 %32, %struct.nn_msghdr* %6, i32 0)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @errno_assert(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 6
  %40 = zext i1 %39 to i32
  %41 = call i32 @nn_assert(i32 %40)
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %43 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %44 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 16
  %45 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %46 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %45, i32 0, i32 1
  store i32 4, i32* %46, align 8
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 1
  %50 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 16
  %51 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 1
  %52 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %51, i32 0, i32 1
  store i32 2, i32* %52, align 8
  %53 = call i32 @memset(%struct.nn_msghdr* %6, i32 0, i32 16)
  %54 = getelementptr inbounds [2 x %struct.nn_iovec], [2 x %struct.nn_iovec]* %5, i64 0, i64 0
  %55 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %6, i32 0, i32 1
  store %struct.nn_iovec* %54, %struct.nn_iovec** %55, align 8
  %56 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %6, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @nn_recvmsg(i32 %57, %struct.nn_msghdr* %6, i32 0)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp sge i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @errno_assert(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 6
  %65 = zext i1 %64 to i32
  %66 = call i32 @nn_assert(i32 %65)
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %68 = call i64 @memcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @nn_assert(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @test_close(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @test_close(i32 %74)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @memset(%struct.nn_msghdr*, i32, i32) #1

declare dso_local i32 @nn_sendmsg(i32, %struct.nn_msghdr*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_recvmsg(i32, %struct.nn_msghdr*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
