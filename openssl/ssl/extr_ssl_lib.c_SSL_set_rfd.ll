; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_set_rfd.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_set_rfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_TYPE_SOCKET = common dso_local global i64 0, align 8
@SSL_F_SSL_SET_RFD = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_set_rfd(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @SSL_get_wbio(i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @BIO_method_type(i32* %13)
  %15 = load i64, i64* @BIO_TYPE_SOCKET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @BIO_get_fd(i32* %18, i32* null)
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17, %12, %2
  %24 = call i32 (...) @BIO_s_socket()
  %25 = call i32* @BIO_new(i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @SSL_F_SSL_SET_RFD, align 4
  %30 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %31 = call i32 @SSLerr(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %47

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BIO_NOCLOSE, align 4
  %36 = call i32 @BIO_set_fd(i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @SSL_set0_rbio(i32* %37, i32* %38)
  br label %46

40:                                               ; preds = %17
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @BIO_up_ref(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SSL_set0_rbio(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %40, %32
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @SSL_get_wbio(i32*) #1

declare dso_local i64 @BIO_method_type(i32*) #1

declare dso_local i64 @BIO_get_fd(i32*, i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_socket(...) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @BIO_set_fd(i32*, i32, i32) #1

declare dso_local i32 @SSL_set0_rbio(i32*, i32*) #1

declare dso_local i32 @BIO_up_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
