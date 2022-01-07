; ModuleID = '/home/carl/AnghaBench/proxychains-ng/tests/extr_test_v4_in_v6.c_main.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/tests/extr_test_v4_in_v6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error in getaddrinfo: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6, align 4
  store i32 0, i32* %1, align 4
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  %10 = load i32, i32* @AF_INET, align 4
  store i32 %10, i32* %9, align 8
  %11 = call i32 @getaddrinfo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, %struct.addrinfo* %4, %struct.addrinfo** %2)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @gai_strerror(i32 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %19, i32* %1, align 4
  br label %53

20:                                               ; preds = %0
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = load i32, i32* @IPPROTO_TCP, align 4
  %24 = call i32 @socket(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %1, align 4
  br label %53

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  %32 = call i32 @htons(i32 80)
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  %34 = load i32, i32* @AF_INET6, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %41 = call i32 @v4_to_v6(i32* %39, i32* %40)
  %42 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %43 = call i32 @freeaddrinfo(%struct.addrinfo* %42)
  %44 = load i32, i32* %6, align 4
  %45 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %46 = call i32 @connect(i32 %44, %struct.sockaddr* %45, i32 12)
  store i32 %46, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %50, i32* %1, align 4
  br label %53

51:                                               ; preds = %29
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %48, %26, %14
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @v4_to_v6(i32*, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
