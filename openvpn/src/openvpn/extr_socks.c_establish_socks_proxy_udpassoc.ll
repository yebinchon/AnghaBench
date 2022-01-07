; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_establish_socks_proxy_udpassoc.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_establish_socks_proxy_udpassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks_proxy_info = type { i32 }
%struct.openvpn_sockaddr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"\05\03\00\01\00\00\00\00\00\00\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"establish_socks_proxy_passthru: TCP port write failed on send()\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @establish_socks_proxy_udpassoc(%struct.socks_proxy_info* %0, i32 %1, i32 %2, %struct.openvpn_sockaddr* %3, i32* %4) #0 {
  %6 = alloca %struct.socks_proxy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.openvpn_sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.socks_proxy_info* %0, %struct.socks_proxy_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.openvpn_sockaddr* %3, %struct.openvpn_sockaddr** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @socks_handshake(%struct.socks_proxy_info* %12, i32 %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %41

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MSG_NOSIGNAL, align 4
  %21 = call i32 @send(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @D_LINK_ERRORS, align 4
  %26 = load i32, i32* @M_ERRNO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @msg(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %9, align 8
  %31 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CLEAR(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @recv_socks_reply(i32 %34, %struct.openvpn_sockaddr* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %41

40:                                               ; preds = %29
  br label %49

41:                                               ; preds = %39, %24, %17
  %42 = load i32*, i32** %10, align 8
  %43 = load volatile i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @SIGUSR1, align 4
  %47 = load i32*, i32** %10, align 8
  store volatile i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %40
  ret void
}

declare dso_local i32 @socks_handshake(%struct.socks_proxy_info*, i32, i32*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @recv_socks_reply(i32, %struct.openvpn_sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
