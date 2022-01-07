; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_peerkey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_peerkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@NID_X9_62_id_ecPublicKey = common dso_local global i64 0, align 8
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ecdh_cms_set_peerkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_cms_set_peerkey(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @X509_ALGOR_get0(i32** %7, i32* %8, i8** %9, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @OBJ_obj2nid(i32* %19)
  %21 = load i64, i64* @NID_X9_62_id_ecPublicKey, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %94

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @V_ASN1_UNDEF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @V_ASN1_NULL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28, %24
  %33 = load i32*, i32** %4, align 8
  %34 = call %struct.TYPE_9__* @EVP_PKEY_CTX_get0_pkey(i32* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %16, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %94

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @EC_KEY_get0_group(i32 %42)
  store i32* %43, i32** %15, align 8
  %44 = call i32* (...) @EC_KEY_new()
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %94

48:                                               ; preds = %38
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @EC_KEY_set_group(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %94

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %28
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32* @eckey_type2param(i32 %56, i8* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %94

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @ASN1_STRING_length(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i8* @ASN1_STRING_get0_data(i32* %66)
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %63
  br label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @o2i_ECPublicKey(i32** %12, i8** %13, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %94

79:                                               ; preds = %74
  %80 = call %struct.TYPE_9__* (...) @EVP_PKEY_new()
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %11, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = icmp eq %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %94

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @EVP_PKEY_set1_EC_KEY(%struct.TYPE_9__* %85, i32* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = call i64 @EVP_PKEY_derive_set_peer(i32* %88, %struct.TYPE_9__* %89)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %83, %78, %73, %61, %53, %47, %37, %23
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @EC_KEY_free(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %98 = call i32 @EVP_PKEY_free(%struct.TYPE_9__* %97)
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i8**, i32*) #1

declare dso_local i64 @OBJ_obj2nid(i32*) #1

declare dso_local %struct.TYPE_9__* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32) #1

declare dso_local i32* @EC_KEY_new(...) #1

declare dso_local i32 @EC_KEY_set_group(i32*, i32*) #1

declare dso_local i32* @eckey_type2param(i32, i8*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @o2i_ECPublicKey(i32**, i8**, i32) #1

declare dso_local %struct.TYPE_9__* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_EC_KEY(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
