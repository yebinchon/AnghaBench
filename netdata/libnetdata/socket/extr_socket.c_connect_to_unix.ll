; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_unix.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create UNIX socket() for '%s'\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to set timeout on UNIX socket '%s'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot connect to UNIX socket on path '%s'.\00", align 1
@D_CONNECT_TO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Connected to UNIX socket on path '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.timeval*)* @connect_to_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_unix(i8* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %8 = load i32, i32* @AF_UNIX, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 -1, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.timeval*, %struct.timeval** %5, align 8
  %18 = icmp ne %struct.timeval* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SOL_SOCKET, align 4
  %22 = load i32, i32* @SO_SNDTIMEO, align 4
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = bitcast %struct.timeval* %23 to i8*
  %25 = call i64 @setsockopt(i32 %20, i32 %21, i32 %22, i8* %24, i32 4)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30, %16
  %32 = call i32 @memset(%struct.sockaddr_un* %7, i32 0, i32 8)
  %33 = load i32, i32* @AF_UNIX, align 4
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strncpy(i32 %36, i8* %37, i32 3)
  %39 = load i32, i32* %6, align 4
  %40 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %41 = call i32 @connect(i32 %39, %struct.sockaddr* %40, i32 8)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @close(i32 %46)
  store i32 -1, i32* %3, align 4
  br label %53

48:                                               ; preds = %31
  %49 = load i32, i32* @D_CONNECT_TO, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @debug(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %43, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
