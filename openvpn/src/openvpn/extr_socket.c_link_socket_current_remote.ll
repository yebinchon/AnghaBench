; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_current_remote.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_current_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_info = type { %struct.link_socket_addr* }
%struct.link_socket_addr = type { %struct.TYPE_10__*, %struct.TYPE_16__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IPV4_INVALID_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_socket_current_remote(%struct.link_socket_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.link_socket_info*, align 8
  %4 = alloca %struct.link_socket_addr*, align 8
  store %struct.link_socket_info* %0, %struct.link_socket_info** %3, align 8
  %5 = load %struct.link_socket_info*, %struct.link_socket_info** %3, align 8
  %6 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %5, i32 0, i32 0
  %7 = load %struct.link_socket_addr*, %struct.link_socket_addr** %6, align 8
  store %struct.link_socket_addr* %7, %struct.link_socket_addr** %4, align 8
  %8 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %9 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @IPV4_INVALID_ADDR, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %21 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %20, i32 0, i32 1
  %22 = call i64 @link_socket_actual_defined(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %26 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohl(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %19
  %35 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %36 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %41 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr_in*
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohl(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %39, %24, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @link_socket_actual_defined(%struct.TYPE_16__*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
