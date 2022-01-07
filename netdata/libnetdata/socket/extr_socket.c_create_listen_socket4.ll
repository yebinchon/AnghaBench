; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_create_listen_socket4.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_create_listen_socket4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@D_LISTENER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"LISTENER: IPv4 creating new listening socket on ip '%s' port %d, socktype %d\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"LISTENER: IPv4 socket() on ip '%s' port %d, socktype %d failed.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"LISTENER: Failed to convert IP '%s' to a valid IPv4 address.\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"LISTENER: IPv4 bind() on ip '%s' port %d, socktype %d failed.\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"LISTENER: IPv4 listen() on ip '%s' port %d, socktype %d failed.\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"LISTENER: Listening on IPv4 ip '%s' port %d, socktype %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_listen_socket4(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @D_LISTENER, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @debug(i32 %13, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15, i32 %16)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25, i32 %26)
  store i32 -1, i32* %5, align 4
  br label %91

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @sock_setreuse(i32 %29, i32 1)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @sock_setreuse_port(i32 %31, i32 1)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @sock_setnonblock(i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @sock_enlarge_in(i32 %35)
  %37 = call i32 @memset(%struct.sockaddr_in* %11, i32 0, i32 12)
  %38 = load i32, i32* @AF_INET, align 4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @htons(i8* %40)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @inet_pton(i32 %43, i8* %44, i8* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @close(i32 %54)
  store i32 -1, i32* %5, align 4
  br label %91

56:                                               ; preds = %28
  %57 = load i32, i32* %10, align 4
  %58 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %59 = call i64 @bind(i32 %57, %struct.sockaddr* %58, i32 12)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65, i32 %66)
  store i32 -1, i32* %5, align 4
  br label %91

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SOCK_STREAM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @listen(i32 %73, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %81, i32 %82)
  store i32 -1, i32* %5, align 4
  br label %91

84:                                               ; preds = %72, %68
  %85 = load i32, i32* @D_LISTENER, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @debug(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %77, %61, %51, %23
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @sock_setreuse(i32, i32) #1

declare dso_local i32 @sock_setreuse_port(i32, i32) #1

declare dso_local i32 @sock_setnonblock(i32) #1

declare dso_local i32 @sock_enlarge_in(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
