; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_listen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_F_BIO_LISTEN = common dso_local global i32 0, align 4
@BIO_R_INVALID_SOCKET = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"calling getsockopt()\00", align 1
@BIO_R_GETTING_SOCKTYPE = common dso_local global i32 0, align 4
@BIO_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@BIO_SOCK_KEEPALIVE = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"calling setsockopt()\00", align 1
@BIO_R_UNABLE_TO_KEEPALIVE = common dso_local global i32 0, align 4
@BIO_SOCK_NODELAY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@BIO_R_UNABLE_TO_NODELAY = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MAX_LISTEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"calling listen()\00", align 1
@BIO_R_UNABLE_TO_LISTEN_SOCKET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@BIO_R_LISTEN_V6_ONLY = common dso_local global i32 0, align 4
@BIO_SOCK_V6_ONLY = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_listen(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @BIO_F_BIO_LISTEN, align 4
  %15 = load i32, i32* @BIO_R_INVALID_SOCKET, align 4
  %16 = call i32 @BIOerr(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %109

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SOL_SOCKET, align 4
  %20 = load i32, i32* @SO_TYPE, align 4
  %21 = bitcast i32* %9 to i8*
  %22 = call i64 @getsockopt(i32 %18, i32 %19, i32 %20, i8* %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %17
  %29 = load i32, i32* @ERR_LIB_SYS, align 4
  %30 = call i32 (...) @get_last_socket_error()
  %31 = call i32 @ERR_raise_data(i32 %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @BIO_F_BIO_LISTEN, align 4
  %33 = load i32, i32* @BIO_R_GETTING_SOCKTYPE, align 4
  %34 = call i32 @BIOerr(i32 %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %109

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @BIO_socket_nbio(i32 %36, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %109

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BIO_SOCK_KEEPALIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SOL_SOCKET, align 4
  %53 = load i32, i32* @SO_KEEPALIVE, align 4
  %54 = bitcast i32* %8 to i8*
  %55 = call i64 @setsockopt(i32 %51, i32 %52, i32 %53, i8* %54, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @ERR_LIB_SYS, align 4
  %59 = call i32 (...) @get_last_socket_error()
  %60 = call i32 @ERR_raise_data(i32 %58, i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @BIO_F_BIO_LISTEN, align 4
  %62 = load i32, i32* @BIO_R_UNABLE_TO_KEEPALIVE, align 4
  %63 = call i32 @BIOerr(i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %109

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BIO_SOCK_NODELAY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IPPROTO_TCP, align 4
  %73 = load i32, i32* @TCP_NODELAY, align 4
  %74 = bitcast i32* %8 to i8*
  %75 = call i64 @setsockopt(i32 %71, i32 %72, i32 %73, i8* %74, i32 4)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32, i32* @ERR_LIB_SYS, align 4
  %79 = call i32 (...) @get_last_socket_error()
  %80 = call i32 @ERR_raise_data(i32 %78, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @BIO_F_BIO_LISTEN, align 4
  %82 = load i32, i32* @BIO_R_UNABLE_TO_NODELAY, align 4
  %83 = call i32 @BIOerr(i32 %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %109

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @BIO_bind(i32 %86, i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %109

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SOCK_DGRAM, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @MAX_LISTEN, align 4
  %99 = call i32 @listen(i32 %97, i32 %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @ERR_LIB_SYS, align 4
  %103 = call i32 (...) @get_last_socket_error()
  %104 = call i32 @ERR_raise_data(i32 %102, i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @BIO_F_BIO_LISTEN, align 4
  %106 = load i32, i32* @BIO_R_UNABLE_TO_LISTEN_SOCKET, align 4
  %107 = call i32 @BIOerr(i32 %105, i32 %106)
  store i32 0, i32* %4, align 4
  br label %109

108:                                              ; preds = %96, %92
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %101, %91, %77, %57, %44, %28, %13
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @BIO_socket_nbio(i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @BIO_bind(i32, i32*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
