; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_accept_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_accept_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"calling accept()\00", align 1
@BIO_F_BIO_ACCEPT_EX = common dso_local global i32 0, align 4
@BIO_R_ACCEPT_ERROR = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_accept_ex(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32* [ %10, %14 ], [ %16, %15 ]
  store i32* %18, i32** %11, align 8
  store i32 4, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @BIO_ADDR_sockaddr_noconst(i32* %20)
  %22 = call i32 @accept(i32 %19, i32 %21, i32* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @BIO_sock_should_retry(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ERR_LIB_SYS, align 4
  %31 = call i32 (...) @get_last_socket_error()
  %32 = call i32 @ERR_raise_data(i32 %30, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @BIO_F_BIO_ACCEPT_EX, align 4
  %34 = load i32, i32* @BIO_R_ACCEPT_ERROR, align 4
  %35 = call i32 @BIOerr(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %17
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @BIO_socket_nbio(i32 %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @closesocket(i32 %48)
  %50 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %47, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @accept(i32, i32, i32*) #1

declare dso_local i32 @BIO_ADDR_sockaddr_noconst(i32*) #1

declare dso_local i32 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_socket_nbio(i32, i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
