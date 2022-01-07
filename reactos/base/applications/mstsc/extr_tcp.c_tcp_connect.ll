; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_tcp.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_tcp.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.hostent = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: unable to resolve host\0A\00", align 1
@False = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@g_sock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"socket: %s\0A\00", align 1
@TCP_STRERROR = common dso_local global i8* null, align 8
@g_tcp_port_rdp = common dso_local global i32 0, align 4
@g_reconnect_loop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"connect: %s\0A\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@g_in = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@STREAM_COUNT = common dso_local global i32 0, align 4
@g_out = common dso_local global %struct.TYPE_5__* null, align 8
@True = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@g_ssl_server = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_connect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %7, align 8
  %11 = icmp ne %struct.hostent* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %14 = load %struct.hostent*, %struct.hostent** %7, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.TYPE_4__* %13, i32 %16, i32 4)
  br label %30

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @inet_addr(i8* %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @INADDR_NONE, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @False, align 4
  store i32 %28, i32* %2, align 4
  br label %115

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = call i32 @socket(i32 %31, i32 %32, i32 0)
  store i32 %33, i32* @g_sock, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** @TCP_STRERROR, align 8
  %37 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @False, align 4
  store i32 %38, i32* %2, align 4
  br label %115

39:                                               ; preds = %30
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @g_tcp_port_rdp, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @g_sock, align 4
  %46 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %47 = call i64 @connect(i32 %45, %struct.sockaddr* %46, i32 4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i32, i32* @g_reconnect_loop, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** @TCP_STRERROR, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @g_sock, align 4
  %57 = call i32 @TCP_CLOSE(i32 %56)
  store i32 -1, i32* @g_sock, align 4
  %58 = load i32, i32* @False, align 4
  store i32 %58, i32* %2, align 4
  br label %115

59:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  store i32 4, i32* %4, align 4
  %60 = load i32, i32* @g_sock, align 4
  %61 = load i32, i32* @IPPROTO_TCP, align 4
  %62 = load i32, i32* @TCP_NODELAY, align 4
  %63 = bitcast i32* %5 to i8*
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @setsockopt(i32 %60, i32 %61, i32 %62, i8* %63, i32 %64)
  %66 = load i32, i32* @g_sock, align 4
  %67 = load i32, i32* @SOL_SOCKET, align 4
  %68 = load i32, i32* @SO_RCVBUF, align 4
  %69 = bitcast i32* %5 to i8*
  %70 = call i64 @getsockopt(i32 %66, i32 %67, i32 %68, i8* %69, i32* %4)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %59
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 16384
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  store i32 16384, i32* %5, align 4
  store i32 4, i32* %4, align 4
  %76 = load i32, i32* @g_sock, align 4
  %77 = load i32, i32* @SOL_SOCKET, align 4
  %78 = load i32, i32* @SO_RCVBUF, align 4
  %79 = bitcast i32* %5 to i8*
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @setsockopt(i32 %76, i32 %77, i32 %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  br label %83

83:                                               ; preds = %82, %59
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_in, i32 0, i32 0), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_in, i32 0, i32 0), align 8
  %85 = call i64 @xmalloc(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_in, i32 0, i32 1), align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %110, %83
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @STREAM_COUNT, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_out, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 4096, i32* %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_out, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @xmalloc(i32 %102)
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_out, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32* %104, i32** %109, align 8
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load i32, i32* @True, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %55, %35, %25
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @TCP_CLOSE(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
