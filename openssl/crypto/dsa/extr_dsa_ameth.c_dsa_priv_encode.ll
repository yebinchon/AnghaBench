; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_priv_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_priv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i32 }

@DSA_F_DSA_PRIV_ENCODE = common dso_local global i32 0, align 4
@DSA_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DSA_R_BN_ERROR = common dso_local global i32 0, align 4
@NID_dsa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @dsa_priv_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_priv_encode(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @DSA_F_DSA_PRIV_ENCODE, align 4
  %25 = load i32, i32* @DSA_R_MISSING_PARAMETERS, align 4
  %26 = call i32 @DSAerr(i32 %24, i32 %25)
  br label %86

27:                                               ; preds = %15
  %28 = call %struct.TYPE_11__* (...) @ASN1_STRING_new()
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = icmp eq %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @DSA_F_DSA_PRIV_ENCODE, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @DSAerr(i32 %32, i32 %33)
  br label %86

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = call i64 @i2d_DSAparams(%struct.TYPE_12__* %39, i32* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @DSA_F_DSA_PRIV_ENCODE, align 4
  %51 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %52 = call i32 @DSAerr(i32 %50, i32 %51)
  br label %86

53:                                               ; preds = %35
  %54 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32* @BN_to_ASN1_INTEGER(i32* %62, i32* null)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i32, i32* @DSA_F_DSA_PRIV_ENCODE, align 4
  %68 = load i32, i32* @DSA_R_BN_ERROR, align 4
  %69 = call i32 @DSAerr(i32 %67, i32 %68)
  br label %86

70:                                               ; preds = %53
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @i2d_ASN1_INTEGER(i32* %71, i8** %8)
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ASN1_STRING_clear_free(i32* %73)
  store i32* null, i32** %7, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @NID_dsa, align 4
  %77 = call i32 @OBJ_nid2obj(i32 %76)
  %78 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @PKCS8_pkey_set0(i32* %75, i32 %77, i32 0, i32 %78, %struct.TYPE_11__* %79, i8* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %70
  br label %86

85:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %93

86:                                               ; preds = %84, %66, %49, %31, %23
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @OPENSSL_free(i8* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = call i32 @ASN1_STRING_free(%struct.TYPE_11__* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ASN1_STRING_clear_free(i32* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %85
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local %struct.TYPE_11__* @ASN1_STRING_new(...) #1

declare dso_local i64 @i2d_DSAparams(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32*, i32*) #1

declare dso_local i32 @i2d_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @ASN1_STRING_clear_free(i32*) #1

declare dso_local i32 @PKCS8_pkey_set0(i32*, i32, i32, i32, %struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
