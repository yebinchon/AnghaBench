; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_test_udp.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_test_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Server: socket ERROR \0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Server: ERROR can't bind UDPSocket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_udp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = call i32 @MAKEWORD(i32 2, i32 2)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %15 = call i32 @pthread_setcancelstate(i32 %14, i32* null)
  %16 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %17 = call i32 @pthread_setcanceltype(i32 %16, i32* null)
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @WSAStartup(i32 %18, i32* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %56

22:                                               ; preds = %1
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = call i64 @socket(i32 %23, i32 %24, i32 0)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @exit(i32 -1) #3
  unreachable

32:                                               ; preds = %22
  %33 = load i32, i32* @AF_INET, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @INADDR_ANY, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = call i32 @htons(i32 9003)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %6, align 8
  %41 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %42 = call i64 @bind(i64 %40, %struct.sockaddr* %41, i32 12)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @exit(i32 -1) #3
  unreachable

47:                                               ; preds = %32
  store i32 4, i32* %7, align 4
  store i32 512, i32* %8, align 4
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %50 = load i32, i32* %8, align 4
  %51 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %52 = call i32 @recvfrom(i64 %48, i8* %49, i32 %50, i32 0, %struct.sockaddr* %51, i32* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @closesocket(i64 %53)
  %55 = call i32 (...) @WSACleanup()
  store i8* null, i8** %2, align 8
  br label %56

56:                                               ; preds = %47, %21
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i64 @WSAStartup(i32, i32*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @recvfrom(i64, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @WSACleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
