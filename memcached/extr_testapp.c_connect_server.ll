; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_connect_server.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_connect_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i32, i32, i32*, i32* }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to allocate the client connection: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to connect socket: %s\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to enable nonblocking mode: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create socket: %s\0A\00", align 1
@tcp_read = common dso_local global i32 0, align 4
@tcp_write = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@ssl_read = common dso_local global i32 0, align 4
@ssl_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.conn* (i8*, i32, i32, i32)* @connect_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.conn* @connect_server(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.conn*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i64 @calloc(i32 1, i32 32)
  %15 = inttoptr i64 %14 to %struct.conn*
  store %struct.conn* %15, %struct.conn** %10, align 8
  %16 = icmp ne %struct.conn* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  %21 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20)
  store %struct.conn* null, %struct.conn** %5, align 8
  br label %103

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.addrinfo* @lookuphost(i8* %23, i32 %24)
  store %struct.addrinfo* %25, %struct.addrinfo** %11, align 8
  store i32 -1, i32* %12, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %27 = icmp ne %struct.addrinfo* %26, null
  br i1 %27, label %28, label %92

28:                                               ; preds = %22
  %29 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %84

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @connect(i32 %41, i32 %44, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @close(i32 %55)
  store i32 -1, i32* %12, align 4
  br label %83

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @F_GETFL, align 4
  %63 = call i32 @fcntl(i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @F_SETFL, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @O_NONBLOCK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @fcntl(i32 %67, i32 %68, i32 %71)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66, %60
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i8* @strerror(i32 %76)
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @close(i32 %79)
  store i32 -1, i32* %12, align 4
  br label %81

81:                                               ; preds = %74, %66
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %50
  br label %89

84:                                               ; preds = %28
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* @errno, align 4
  %87 = call i8* @strerror(i32 %86)
  %88 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %84, %83
  %90 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %91 = call i32 @freeaddrinfo(%struct.addrinfo* %90)
  br label %92

92:                                               ; preds = %89, %22
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.conn*, %struct.conn** %10, align 8
  %95 = getelementptr inbounds %struct.conn, %struct.conn* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @tcp_read, align 4
  %97 = load %struct.conn*, %struct.conn** %10, align 8
  %98 = getelementptr inbounds %struct.conn, %struct.conn* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @tcp_write, align 4
  %100 = load %struct.conn*, %struct.conn** %10, align 8
  %101 = getelementptr inbounds %struct.conn, %struct.conn* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.conn*, %struct.conn** %10, align 8
  store %struct.conn* %102, %struct.conn** %5, align 8
  br label %103

103:                                              ; preds = %92, %17
  %104 = load %struct.conn*, %struct.conn** %5, align 8
  ret %struct.conn* %104
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.addrinfo* @lookuphost(i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
