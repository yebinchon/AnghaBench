; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpcb_clnt.c___rpcbind_is_up.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpcb_clnt.c___rpcbind_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32* }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@NC_LOOPBACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@_PATH_RPCBINDSOCK = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpcbind_is_up() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netconfig*, align 8
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.netconfig* null, %struct.netconfig** %2, align 8
  %6 = call i8* (...) @setnetconfig()
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.netconfig* @getnetconfig(i8* %8)
  store %struct.netconfig* %9, %struct.netconfig** %2, align 8
  %10 = icmp ne %struct.netconfig* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %13 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %18 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @NC_LOOPBACK, align 4
  %21 = call i64 @strcmp(i32* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16, %11
  br label %7

25:                                               ; preds = %23, %7
  %26 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %27 = icmp eq %struct.netconfig* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %1, align 4
  br label %62

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @endnetconfig(i8* %31)
  %33 = call i32 @memset(%struct.sockaddr_un* %3, i32 0, i32 8)
  %34 = load i32, i32* @AF_UNIX, align 4
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = call i64 @socket(i32 %34, i32 %35, i32 0)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @INVALID_SOCKET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %1, align 4
  br label %62

42:                                               ; preds = %30
  %43 = load i32, i32* @AF_UNIX, align 4
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @_PATH_RPCBINDSOCK, align 4
  %48 = call i32 @strncpy(i32 %46, i32 %47, i32 4)
  %49 = load i64, i64* %5, align 8
  %50 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %51 = call i64 @connect(i64 %49, %struct.sockaddr* %50, i32 8)
  %52 = load i64, i64* @SOCKET_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @closesocket(i64 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %1, align 4
  br label %62

58:                                               ; preds = %42
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @closesocket(i64 %59)
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %58, %54, %40, %28
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i8* @setnetconfig(...) #1

declare dso_local %struct.netconfig* @getnetconfig(i8*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @endnetconfig(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
