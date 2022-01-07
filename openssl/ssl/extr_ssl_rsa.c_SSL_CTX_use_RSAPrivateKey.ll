; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_rsa.c_SSL_CTX_use_RSAPrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_rsa.c_SSL_CTX_use_RSAPrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SSL_F_SSL_CTX_USE_RSAPRIVATEKEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_use_RSAPrivateKey(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @SSL_F_SSL_CTX_USE_RSAPRIVATEKEY, align 4
  %12 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %13 = call i32 @SSLerr(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = call i32* (...) @EVP_PKEY_new()
  store i32* %15, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @SSL_F_SSL_CTX_USE_RSAPRIVATEKEY, align 4
  %19 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %20 = call i32 @SSLerr(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @RSA_up_ref(i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @EVP_PKEY_assign_RSA(i32* %24, i32* %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @RSA_free(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @EVP_PKEY_free(i32* %31)
  store i32 0, i32* %3, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ssl_set_pkey(i32 %36, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @EVP_PKEY_free(i32* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %28, %17, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @RSA_up_ref(i32*) #1

declare dso_local i64 @EVP_PKEY_assign_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @ssl_set_pkey(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
