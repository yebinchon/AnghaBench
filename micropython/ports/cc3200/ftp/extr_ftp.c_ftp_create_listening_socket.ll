; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_create_listening_socket.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_create_listening_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@SL_AF_INET = common dso_local global i32 0, align 4
@SL_SOCK_STREAM = common dso_local global i32 0, align 4
@SL_IPPROTO_IP = common dso_local global i32 0, align 4
@SL_SOL_SOCKET = common dso_local global i32 0, align 4
@SL_SO_NONBLOCKING = common dso_local global i32 0, align 4
@SL_SOC_OK = common dso_local global i64 0, align 8
@SL_INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @ftp_create_listening_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_create_listening_socket(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @SL_AF_INET, align 4
  %13 = load i32, i32* @SL_SOCK_STREAM, align 4
  %14 = load i32, i32* @SL_IPPROTO_IP, align 4
  %15 = call i64 @sl_Socket(i32 %12, i32 %13, i32 %14)
  %16 = load i64*, i64** %5, align 8
  store i64 %15, i64* %16, align 8
  %17 = icmp sgt i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @modusocket_socket_add(i64 %25, i32 0)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @SL_SOL_SOCKET, align 4
  %30 = load i32, i32* @SL_SO_NONBLOCKING, align 4
  %31 = call i64 @sl_SetSockOpt(i64 %28, i32 %29, i32 %30, %struct.TYPE_6__* %8, i32 4)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* @SL_SOC_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* @SL_AF_INET, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SL_INADDR_ANY, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sl_Htons(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %10, align 8
  %45 = bitcast %struct.TYPE_7__* %9 to i32*
  %46 = call i64 @sl_Bind(i64 %44, i32* %45, i32 12)
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* @SL_SOC_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @sl_Listen(i64 %53, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* @SL_SOC_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @SL_SOC_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %70

66:                                               ; preds = %24
  %67 = load i64*, i64** %5, align 8
  %68 = call i32 @servers_close_socket(i64* %67)
  br label %69

69:                                               ; preds = %66, %3
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @sl_Socket(i32, i32, i32) #1

declare dso_local i32 @modusocket_socket_add(i64, i32) #1

declare dso_local i64 @sl_SetSockOpt(i64, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sl_Htons(i32) #1

declare dso_local i64 @sl_Bind(i64, i32*, i32) #1

declare dso_local i64 @sl_Listen(i64, i32) #1

declare dso_local i32 @servers_close_socket(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
