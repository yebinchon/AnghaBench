; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_inetd.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_inetd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i64, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.frame = type { i32 }

@PROTO_TCP_SERVER = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"inetd(%s): this OS does not provide the getsockname() function, using AF_INET\00", align 1
@INETD_NOWAIT = common dso_local global i64 0, align 8
@D_SOCKET_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, %struct.frame*, i8*, i32*)* @phase2_inetd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phase2_inetd(%struct.link_socket* %0, %struct.frame* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.link_socket*, align 8
  %6 = alloca %struct.frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %5, align 8
  store %struct.frame* %1, %struct.frame** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %11 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PROTO_TCP_SERVER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %19 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %17, i32* %26, align 4
  %27 = load i32, i32* @M_WARN, align 4
  %28 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %29 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i64, i32, ...) @proto2ascii(i64 %31, i32 0)
  %33 = call i32 (i32, i8*, i32, ...) @msg(i32 %27, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %35 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %38 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %44 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %50 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INETD_NOWAIT, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @socket_listen_accept(i64 %36, %struct.TYPE_15__* %41, i8* %42, i32 %48, i32 0, i32 %54, i32* %55)
  %57 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %58 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %16, %4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  ret void
}

declare dso_local i32 @msg(i32, i8*, i32, ...) #1

declare dso_local i32 @proto2ascii(i64, i32, ...) #1

declare dso_local i64 @socket_listen_accept(i64, %struct.TYPE_15__*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
