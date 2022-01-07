; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_listen_accept.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_listen_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_actual = type { %struct.openvpn_sockaddr }
%struct.openvpn_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.addrinfo = type { i32 }
%struct.gc_arena = type { i32 }
%struct.timeval = type { i64, i64 }

@SOCKET_UNDEFINED = common dso_local global i64 0, align 8
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TCP: select() failed\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"TCP NOTE: Rejected connection attempt from %s due to --remote setting\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"TCP: close socket failed (new_sd)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"TCP: close socket failed (sd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.link_socket_actual*, i8*, %struct.addrinfo*, i32, i32, i32*)* @socket_listen_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socket_listen_accept(i64 %0, %struct.link_socket_actual* %1, i8* %2, %struct.addrinfo* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.link_socket_actual*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.gc_arena, align 4
  %17 = alloca %struct.openvpn_sockaddr, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 8
  %22 = alloca %struct.addrinfo*, align 8
  store i64 %0, i64* %9, align 8
  store %struct.link_socket_actual* %1, %struct.link_socket_actual** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = call i32 (...) @gc_new()
  %24 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %16, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.link_socket_actual*, %struct.link_socket_actual** %10, align 8
  %26 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %25, i32 0, i32 0
  %27 = bitcast %struct.openvpn_sockaddr* %17 to i8*
  %28 = bitcast %struct.openvpn_sockaddr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i64, i64* @SOCKET_UNDEFINED, align 8
  store i64 %29, i64* %18, align 8
  %30 = load %struct.link_socket_actual*, %struct.link_socket_actual** %10, align 8
  %31 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CLEAR(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @socket_do_listen(i64 %37, %struct.addrinfo* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %7, %69, %118
  %42 = call i32 @FD_ZERO(i32* %20)
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @openvpn_fd_set(i64 %43, i32* %20)
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @select(i64 %48, i32* %20, i32* null, i32* null, %struct.timeval* %21)
  store i32 %49, i32* %19, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @get_signal(i32* %50)
  %52 = load i32*, i32** %15, align 8
  %53 = load volatile i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = call i32 @gc_free(%struct.gc_arena* %16)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %8, align 8
  br label %135

58:                                               ; preds = %41
  %59 = load i32, i32* %19, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @D_LINK_ERRORS, align 4
  %63 = load i32, i32* @M_ERRNO, align 4
  %64 = or i32 %62, %63
  %65 = call i32 (i32, i8*, ...) @msg(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %19, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @management_sleep(i32 1)
  br label %41

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.link_socket_actual*, %struct.link_socket_actual** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @socket_do_accept(i64 %72, %struct.link_socket_actual* %73, i32 %74)
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = call i64 @socket_defined(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %71
  store %struct.addrinfo* null, %struct.addrinfo** %22, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %17, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @openvpn_getaddrinfo(i32 0, i8* %83, i32* null, i32 1, i32* null, i32 %87, %struct.addrinfo** %22)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %91 = icmp ne %struct.addrinfo* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %94 = call i32 @addrlist_match(%struct.openvpn_sockaddr* %17, %struct.addrinfo* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @M_WARN, align 4
  %98 = load %struct.link_socket_actual*, %struct.link_socket_actual** %10, align 8
  %99 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %98, %struct.gc_arena* %16)
  %100 = call i32 (i32, i8*, ...) @msg(i32 %97, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i64, i64* %18, align 8
  %102 = call i64 @openvpn_close_socket(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @M_ERR, align 4
  %106 = call i32 (i32, i8*, ...) @msg(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %109 = call i32 @freeaddrinfo(%struct.addrinfo* %108)
  br label %117

110:                                              ; preds = %92, %89
  %111 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %112 = icmp ne %struct.addrinfo* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %115 = call i32 @freeaddrinfo(%struct.addrinfo* %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %120

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %71
  %119 = call i32 @management_sleep(i32 1)
  br label %41

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @openvpn_close_socket(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @M_ERR, align 4
  %129 = call i32 (i32, i8*, ...) @msg(i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %123, %120
  %131 = load %struct.link_socket_actual*, %struct.link_socket_actual** %10, align 8
  %132 = call i32 @tcp_connection_established(%struct.link_socket_actual* %131)
  %133 = call i32 @gc_free(%struct.gc_arena* %16)
  %134 = load i64, i64* %18, align 8
  store i64 %134, i64* %8, align 8
  br label %135

135:                                              ; preds = %130, %55
  %136 = load i64, i64* %8, align 8
  ret i64 %136
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @socket_do_listen(i64, %struct.addrinfo*, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openvpn_fd_set(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @get_signal(i32*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @management_sleep(i32) #1

declare dso_local i64 @socket_do_accept(i64, %struct.link_socket_actual*, i32) #1

declare dso_local i64 @socket_defined(i64) #1

declare dso_local i32 @openvpn_getaddrinfo(i32, i8*, i32*, i32, i32*, i32, %struct.addrinfo**) #1

declare dso_local i32 @addrlist_match(%struct.openvpn_sockaddr*, %struct.addrinfo*) #1

declare dso_local i32 @print_link_socket_actual(%struct.link_socket_actual*, %struct.gc_arena*) #1

declare dso_local i64 @openvpn_close_socket(i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @tcp_connection_established(%struct.link_socket_actual*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
