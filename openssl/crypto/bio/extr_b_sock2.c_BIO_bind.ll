; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_bind.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock2.c_BIO_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_F_BIO_BIND = common dso_local global i32 0, align 4
@BIO_R_INVALID_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_REUSEADDR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"calling setsockopt()\00", align 1
@BIO_R_UNABLE_TO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"calling bind()\00", align 1
@BIO_R_UNABLE_TO_BIND_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_bind(i32 %0, i32* %1, i32 %2) #0 {
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
  %12 = load i32, i32* @BIO_F_BIO_BIND, align 4
  %13 = load i32, i32* @BIO_R_INVALID_SOCKET, align 4
  %14 = call i32 @BIOerr(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BIO_SOCK_REUSEADDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_REUSEADDR, align 4
  %24 = bitcast i32* %8 to i8*
  %25 = call i64 @setsockopt(i32 %21, i32 %22, i32 %23, i8* %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @ERR_LIB_SYS, align 4
  %29 = call i32 (...) @get_last_socket_error()
  %30 = call i32 @ERR_raise_data(i32 %28, i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @BIO_F_BIO_BIND, align 4
  %32 = load i32, i32* @BIO_R_UNABLE_TO_REUSEADDR, align 4
  %33 = call i32 @BIOerr(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %51

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @BIO_ADDR_sockaddr(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @BIO_ADDR_sockaddr_size(i32* %39)
  %41 = call i64 @bind(i32 %36, i32 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32, i32* @ERR_LIB_SYS, align 4
  %45 = call i32 (...) @get_last_socket_error()
  %46 = call i32 @ERR_raise_data(i32 %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @BIO_F_BIO_BIND, align 4
  %48 = load i32, i32* @BIO_R_UNABLE_TO_BIND_SOCKET, align 4
  %49 = call i32 @BIOerr(i32 %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %43, %27, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDR_sockaddr(i32*) #1

declare dso_local i32 @BIO_ADDR_sockaddr_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
