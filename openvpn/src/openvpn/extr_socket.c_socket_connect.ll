; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_connect.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.signal_info = type { i32, i64 }
%struct.gc_arena = type { i32 }

@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Attempting to establish TCP connection with %s\00", align 1
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TCP: connect to %s failed: %s\00", align 1
@SOCKET_UNDEFINED = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i64 0, align 8
@SIG_SOURCE_CONNECTION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"TCP connection established with %s\00", align 1
@OPENVPN_STATE_TCP_CONNECT = common dso_local global i32 0, align 4
@management = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sockaddr*, i32, %struct.signal_info*)* @socket_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_connect(i32* %0, %struct.sockaddr* %1, i32 %2, %struct.signal_info* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.signal_info*, align 8
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.signal_info* %3, %struct.signal_info** %8, align 8
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @M_INFO, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = call i32 @print_sockaddr(%struct.sockaddr* %14, %struct.gc_arena* %9)
  %16 = call i32 (i32, i8*, i32, ...) @msg(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %22 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %21, i32 0, i32 1
  %23 = call i32 @openvpn_connect(i32 %18, %struct.sockaddr* %19, i32 %20, i64* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %25 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %24, i32 0, i32 1
  %26 = call i32 @get_signal(i64* %25)
  %27 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %28 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %59

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* @D_LINK_ERRORS, align 4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = call i32 @print_sockaddr(%struct.sockaddr* %37, %struct.gc_arena* %9)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i32, i8*, i32, ...) @msg(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @openvpn_close_socket(i32 %43)
  %45 = load i32, i32* @SOCKET_UNDEFINED, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* @SIGUSR1, align 8
  %48 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %49 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @SIG_SOURCE_CONNECTION_FAILED, align 4
  %51 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %52 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %58

53:                                               ; preds = %32
  %54 = load i32, i32* @M_INFO, align 4
  %55 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %56 = call i32 @print_sockaddr(%struct.sockaddr* %55, %struct.gc_arena* %9)
  %57 = call i32 (i32, i8*, i32, ...) @msg(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %35
  br label %59

59:                                               ; preds = %58, %31
  %60 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32, ...) #1

declare dso_local i32 @print_sockaddr(%struct.sockaddr*, %struct.gc_arena*) #1

declare dso_local i32 @openvpn_connect(i32, %struct.sockaddr*, i32, i64*) #1

declare dso_local i32 @get_signal(i64*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @openvpn_close_socket(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
