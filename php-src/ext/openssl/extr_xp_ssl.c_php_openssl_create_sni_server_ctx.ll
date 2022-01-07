; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_create_sni_server_ctx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_create_sni_server_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [133 x i8] c"failed setting local cert chain file `%s'; check that your cafile/capath settings include details of your certificate and its issuer\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed setting private key from file `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @php_openssl_create_sni_server_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_create_sni_server_ctx(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @SSLv23_server_method()
  %8 = call i32* @SSL_CTX_new(i32 %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %9, i8* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @E_WARNING, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @php_error_docref(i32* null, i32 %14, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @SSL_CTX_free(i32* %17)
  store i32* null, i32** %3, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %23 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %20, i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @E_WARNING, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @php_error_docref(i32* null, i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @SSL_CTX_free(i32* %29)
  store i32* null, i32** %3, align 8
  br label %34

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %32, %25, %13
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_server_method(...) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
