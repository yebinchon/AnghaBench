; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pub_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pub_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i32 }

@DSA_F_DSA_PUB_ENCODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@EVP_PKEY_DSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @dsa_pub_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_pub_encode(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i8* null, i8** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = call %struct.TYPE_13__* (...) @ASN1_STRING_new()
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = icmp eq %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @DSA_F_DSA_PUB_ENCODE, align 4
  %42 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %43 = call i32 @DSAerr(i32 %41, i32 %42)
  br label %102

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = call i64 @i2d_DSAparams(%struct.TYPE_12__* %45, i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* @DSA_F_DSA_PUB_ENCODE, align 4
  %57 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %58 = call i32 @DSAerr(i32 %56, i32 %57)
  br label %102

59:                                               ; preds = %44
  %60 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  store i32 %60, i32* %7, align 4
  br label %63

61:                                               ; preds = %31, %26, %21, %2
  %62 = load i32, i32* @V_ASN1_UNDEF, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @BN_to_ASN1_INTEGER(i32 %66, i32* null)
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @DSA_F_DSA_PUB_ENCODE, align 4
  %72 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %73 = call i32 @DSAerr(i32 %71, i32 %72)
  br label %102

74:                                               ; preds = %63
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @i2d_ASN1_INTEGER(i32* %75, i8** %8)
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @ASN1_INTEGER_free(i32* %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @DSA_F_DSA_PUB_ENCODE, align 4
  %83 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %84 = call i32 @DSAerr(i32 %82, i32 %83)
  br label %102

85:                                               ; preds = %74
  %86 = load i32, i32* @EVP_PKEY_DSA, align 4
  %87 = call i32* @OBJ_nid2obj(i32 %86)
  store i32* %87, i32** %12, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %102

91:                                               ; preds = %85
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @X509_PUBKEY_set0_param(i32* %92, i32* %93, i32 %94, %struct.TYPE_13__* %95, i8* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %3, align 4
  br label %107

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %90, %81, %70, %55, %40
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @OPENSSL_free(i8* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = call i32 @ASN1_STRING_free(%struct.TYPE_13__* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %100
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_13__* @ASN1_STRING_new(...) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i64 @i2d_DSAparams(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @i2d_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i64 @X509_PUBKEY_set0_param(i32*, i32*, i32, %struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
