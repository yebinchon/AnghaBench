; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_priv_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_priv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RSA_F_RSA_PRIV_ENCODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @rsa_priv_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_priv_encode(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 @rsa_param_encode(%struct.TYPE_8__* %10, i32** %8, i32* %9)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @i2d_RSAPrivateKey(i32 %18, i8** %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* @RSA_F_RSA_PRIV_ENCODE, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @RSAerr(i32 %23, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @ASN1_STRING_free(i32* %26)
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %14
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @OBJ_nid2obj(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @PKCS8_pkey_set0(i32* %29, i32 %35, i32 0, i32 %36, i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @RSA_F_RSA_PRIV_ENCODE, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @RSAerr(i32 %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ASN1_STRING_free(i32* %46)
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %22, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @rsa_param_encode(%struct.TYPE_8__*, i32**, i32*) #1

declare dso_local i32 @i2d_RSAPrivateKey(i32, i8**) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @ASN1_STRING_free(i32*) #1

declare dso_local i32 @PKCS8_pkey_set0(i32*, i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
