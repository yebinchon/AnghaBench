; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_eckey_pub_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_eckey_pub_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EC_F_ECKEY_PUB_ENCODE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @eckey_pub_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_pub_encode(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @eckey_param2type(i32* %8, i8** %7, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EC_F_ECKEY_PUB_ENCODE, align 4
  %21 = load i32, i32* @ERR_R_EC_LIB, align 4
  %22 = call i32 @ECerr(i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @i2o_ECPublicKey(i32* %24, i8** null)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @OPENSSL_malloc(i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %54

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @i2o_ECPublicKey(i32* %37, i8** %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %54

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @EVP_PKEY_EC, align 4
  %45 = call i32 @OBJ_nid2obj(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @X509_PUBKEY_set0_param(i32* %43, i32 %45, i32 %46, i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %67

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %41, %34, %28
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @V_ASN1_OBJECT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @ASN1_OBJECT_free(i8* %59)
  br label %64

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @ASN1_STRING_free(i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @OPENSSL_free(i8* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %52, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @eckey_param2type(i32*, i8**, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @i2o_ECPublicKey(i32*, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i64 @X509_PUBKEY_set0_param(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @ASN1_OBJECT_free(i8*) #1

declare dso_local i32 @ASN1_STRING_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
