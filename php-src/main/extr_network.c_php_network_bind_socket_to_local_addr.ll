; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_network.c_php_network_bind_socket_to_local_addr.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_network.c_php_network_bind_socket_to_local_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i8* }

@SOCK_ERR = common dso_local global i32 0, align 4
@SOCK_CONN_ERR = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@STREAM_SOCKOP_IPV6_V6ONLY = common dso_local global i64 0, align 8
@STREAM_SOCKOP_IPV6_V6ONLY_ENABLED = common dso_local global i64 0, align 8
@STREAM_SOCKOP_SO_BROADCAST = common dso_local global i64 0, align 8
@STREAM_SOCKOP_SO_REUSEPORT = common dso_local global i64 0, align 8
@STREAM_SOCKOP_TCP_NODELAY = common dso_local global i64 0, align 8
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_network_bind_socket_to_local_addr(i8* %0, i32 %1, i32 %2, i64 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr**, align 8
  %19 = alloca %struct.sockaddr**, align 8
  %20 = alloca %struct.sockaddr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %22, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32**, i32*** %12, align 8
  %26 = call i32 @php_network_getaddresses(i8* %23, i32 %24, %struct.sockaddr*** %19, i32** %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %103

30:                                               ; preds = %6
  %31 = load %struct.sockaddr**, %struct.sockaddr*** %19, align 8
  store %struct.sockaddr** %31, %struct.sockaddr*** %18, align 8
  br label %32

32:                                               ; preds = %82, %30
  %33 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %33, align 8
  %35 = icmp ne %struct.sockaddr* %34, null
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %37, align 8
  store %struct.sockaddr* %38, %struct.sockaddr** %20, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @socket(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @SOCK_ERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %82

48:                                               ; preds = %36
  %49 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %64 [
    i32 129, label %52
  ]

52:                                               ; preds = %48
  %53 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_in*
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @htons(i32 %59)
  %61 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %62 = bitcast %struct.sockaddr* %61 to %struct.sockaddr_in*
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  store i32 16, i32* %21, align 4
  br label %65

64:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  store %struct.sockaddr* null, %struct.sockaddr** %20, align 8
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %67 = icmp ne %struct.sockaddr* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @bind(i32 %69, %struct.sockaddr* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @SOCK_CONN_ERR, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %99

77:                                               ; preds = %68
  %78 = call i32 (...) @php_socket_errno()
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @closesocket(i32 %80)
  br label %82

82:                                               ; preds = %79, %47
  %83 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  %84 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %83, i32 1
  store %struct.sockaddr** %84, %struct.sockaddr*** %18, align 8
  br label %32

85:                                               ; preds = %32
  store i32 -1, i32* %17, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32**, i32*** %12, align 8
  %93 = icmp ne i32** %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = call i32* @php_socket_error_str(i32 %95)
  %97 = load i32**, i32*** %12, align 8
  store i32* %96, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.sockaddr**, %struct.sockaddr*** %19, align 8
  %101 = call i32 @php_network_freeaddresses(%struct.sockaddr** %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %29
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @php_network_getaddresses(i8*, i32, %struct.sockaddr***, i32**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32* @php_socket_error_str(i32) #1

declare dso_local i32 @php_network_freeaddresses(%struct.sockaddr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
