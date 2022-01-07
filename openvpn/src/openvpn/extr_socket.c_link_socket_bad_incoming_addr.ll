; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_bad_incoming_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_bad_incoming_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64 }
%struct.link_socket_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.addrinfo*, i32 }
%struct.addrinfo = type { i32, %struct.addrinfo* }
%struct.link_socket_actual = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gc_arena = type { i32 }

@D_LINK_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [154 x i8] c"TCP/UDP: Incoming packet rejected from %s[%d], expected peer address: %s (allow this incoming source address/port by removing --remote or adding --float)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PS_SHOW_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"or from peer address: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_socket_bad_incoming_addr(%struct.buffer* %0, %struct.link_socket_info* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.link_socket_info*, align 8
  %6 = alloca %struct.link_socket_actual*, align 8
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca %struct.addrinfo*, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %5, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %6, align 8
  %9 = call i32 (...) @gc_new()
  %10 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %12 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %60 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @D_LINK_ERRORS, align 4
  %19 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %20 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %19, %struct.gc_arena* %7)
  %21 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %22 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.link_socket_info*, %struct.link_socket_info** %5, align 8
  %28 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PS_SHOW_PORT, align 4
  %35 = call i32 @print_sockaddr_ex(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %34, %struct.gc_arena* %7)
  %36 = call i32 (i32, i8*, i32, ...) @msg(i32 %18, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %26, i32 %35)
  %37 = load %struct.link_socket_info*, %struct.link_socket_info** %5, align 8
  %38 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.addrinfo*, %struct.addrinfo** %42, align 8
  store %struct.addrinfo* %43, %struct.addrinfo** %8, align 8
  br label %44

44:                                               ; preds = %55, %17
  %45 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %46 = icmp ne %struct.addrinfo* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* @D_LINK_ERRORS, align 4
  %49 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PS_SHOW_PORT, align 4
  %53 = call i32 @print_sockaddr_ex(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.gc_arena* %7)
  %54 = call i32 (i32, i8*, i32, ...) @msg(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 1
  %58 = load %struct.addrinfo*, %struct.addrinfo** %57, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %8, align 8
  br label %44

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %3, %59
  %61 = load %struct.buffer*, %struct.buffer** %4, align 8
  %62 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = call i32 @gc_free(%struct.gc_arena* %7)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32, ...) #1

declare dso_local i32 @print_link_socket_actual(%struct.link_socket_actual*, %struct.gc_arena*) #1

declare dso_local i32 @print_sockaddr_ex(i32, i8*, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
