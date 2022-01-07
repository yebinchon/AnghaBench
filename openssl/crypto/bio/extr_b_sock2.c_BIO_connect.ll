; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_connect.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_F_BIO_CONNECT = common dso_local global i32 0, align 4
@BIO_R_INVALID_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@BIO_SOCK_KEEPALIVE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"calling setsockopt()\00", align 1
@BIO_R_UNABLE_TO_KEEPALIVE = common dso_local global i32 0, align 4
@BIO_SOCK_NODELAY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@BIO_R_UNABLE_TO_NODELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"calling connect()\00", align 1
@BIO_R_CONNECT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_connect(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @BIO_F_BIO_CONNECT, align 4
  %13 = load i32, i32* @BIO_R_INVALID_SOCKET, align 4
  %14 = call i32 @BIOerr(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %85

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BIO_socket_nbio(i32 %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %85

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BIO_SOCK_KEEPALIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_KEEPALIVE, align 4
  %34 = bitcast i32* %8 to i8*
  %35 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i8* %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @ERR_LIB_SYS, align 4
  %39 = call i32 (...) @get_last_socket_error()
  %40 = call i32 @ERR_raise_data(i32 %38, i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @BIO_F_BIO_CONNECT, align 4
  %42 = load i32, i32* @BIO_R_UNABLE_TO_KEEPALIVE, align 4
  %43 = call i32 @BIOerr(i32 %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %85

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BIO_SOCK_NODELAY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IPPROTO_TCP, align 4
  %53 = load i32, i32* @TCP_NODELAY, align 4
  %54 = bitcast i32* %8 to i8*
  %55 = call i64 @setsockopt(i32 %51, i32 %52, i32 %53, i8* %54, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @ERR_LIB_SYS, align 4
  %59 = call i32 (...) @get_last_socket_error()
  %60 = call i32 @ERR_raise_data(i32 %58, i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @BIO_F_BIO_CONNECT, align 4
  %62 = load i32, i32* @BIO_R_UNABLE_TO_NODELAY, align 4
  %63 = call i32 @BIOerr(i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %85

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @BIO_ADDR_sockaddr(i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @BIO_ADDR_sockaddr_size(i32* %69)
  %71 = call i32 @connect(i32 %66, i32 %68, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = call i32 @BIO_sock_should_retry(i32 -1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @ERR_LIB_SYS, align 4
  %78 = call i32 (...) @get_last_socket_error()
  %79 = call i32 @ERR_raise_data(i32 %77, i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @BIO_F_BIO_CONNECT, align 4
  %81 = load i32, i32* @BIO_R_CONNECT_ERROR, align 4
  %82 = call i32 @BIOerr(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  store i32 0, i32* %4, align 4
  br label %85

84:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83, %57, %37, %24, %11
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_socket_nbio(i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDR_sockaddr(i32*) #1

declare dso_local i32 @BIO_ADDR_sockaddr_size(i32*) #1

declare dso_local i32 @BIO_sock_should_retry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
