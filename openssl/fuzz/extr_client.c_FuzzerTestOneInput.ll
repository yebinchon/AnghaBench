; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_client.c_FuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_client.c_FuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"ALL:eNULL:@SECLEVEL=0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = call i32 (...) @SSLv23_method()
  %16 = call i32* @SSL_CTX_new(i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @SSL_new(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @SSL_set_min_proto_version(i32* %19, i32 0)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @OPENSSL_assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @SSL_set_cipher_list(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @OPENSSL_assert(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @SSL_set_tlsext_host_name(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (...) @BIO_s_mem()
  %32 = call i32* @BIO_new(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = call i32 (...) @BIO_s_mem()
  %34 = call i32* @BIO_new(i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @SSL_set_bio(i32* %35, i32* %36, i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @SSL_set_connect_state(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @BIO_write(i32* %41, i32* %42, i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @OPENSSL_assert(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @SSL_do_handshake(i32* %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %14
  br label %53

53:                                               ; preds = %59, %52
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %56 = call i64 @SSL_read(i32* %54, i32* %55, i32 4096)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %53

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %14
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SSL_free(i32* %62)
  %64 = call i32 (...) @ERR_clear_error()
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @SSL_CTX_free(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @SSL_set_min_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i8*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i64 @BIO_write(i32*, i32*, i64) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i64 @SSL_read(i32*, i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
