; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_socket_connection_reset.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_socket_connection_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@ECONNRESET = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_socket*, i32)* @socket_connection_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_connection_reset(%struct.link_socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %8 = call i64 @link_socket_connection_oriented(%struct.link_socket* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %12 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %17 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10
  store i32 1, i32* %3, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 (...) @openvpn_errno()
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ECONNRESET, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @link_socket_connection_oriented(%struct.link_socket*) #1

declare dso_local i32 @openvpn_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
