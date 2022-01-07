; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_priv_decode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_priv_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32* }

@V_ASN1_NEG_INTEGER = common dso_local global i64 0, align 8
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DSA_F_DSA_PRIV_DECODE = common dso_local global i32 0, align 4
@DSA_R_BN_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@DSA_R_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dsa_priv_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_priv_decode(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  store i32* null, i32** %15, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PKCS8_pkey_get0(i32* null, i8** %6, i32* %8, i32** %13, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

22:                                               ; preds = %2
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @X509_ALGOR_get0(i32* null, i32* %10, i8** %11, i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_12__* @d2i_ASN1_INTEGER(i32* null, i8** %6, i32 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %14, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %118

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V_ASN1_NEG_INTEGER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %29
  br label %118

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_10__* @d2i_DSAparams(i32* null, i8** %7, i32 %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %16, align 8
  %51 = icmp eq %struct.TYPE_10__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %118

53:                                               ; preds = %40
  %54 = call i32* (...) @BN_secure_new()
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = icmp eq i32* %54, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ASN1_INTEGER_to_BN(%struct.TYPE_12__* %59, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* @DSA_F_DSA_PRIV_DECODE, align 4
  %67 = load i32, i32* @DSA_R_BN_ERROR, align 4
  %68 = call i32 @DSAerr(i32 %66, i32 %67)
  br label %122

69:                                               ; preds = %58
  %70 = call i32* (...) @BN_new()
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  %73 = icmp eq i32* %70, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @DSA_F_DSA_PRIV_DECODE, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @DSAerr(i32 %75, i32 %76)
  br label %122

78:                                               ; preds = %69
  %79 = call i32* (...) @BN_CTX_new()
  store i32* %79, i32** %15, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @DSA_F_DSA_PRIV_DECODE, align 4
  %83 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %84 = call i32 @DSAerr(i32 %82, i32 %83)
  br label %122

85:                                               ; preds = %78
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %90 = call i32 @BN_set_flags(i32* %88, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @BN_mod_exp(i32* %93, i32 %96, i32* %99, i32 %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %85
  %107 = load i32, i32* @DSA_F_DSA_PRIV_DECODE, align 4
  %108 = load i32, i32* @DSA_R_BN_ERROR, align 4
  %109 = call i32 @DSAerr(i32 %107, i32 %108)
  br label %122

110:                                              ; preds = %85
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %117 = call i32 @EVP_PKEY_assign_DSA(i32* %115, %struct.TYPE_10__* %116)
  store i32 1, i32* %17, align 4
  br label %125

118:                                              ; preds = %52, %39, %28
  %119 = load i32, i32* @DSA_F_DSA_PRIV_DECODE, align 4
  %120 = load i32, i32* @DSA_R_DECODE_ERROR, align 4
  %121 = call i32 @DSAerr(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %106, %81, %74, %65
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %124 = call i32 @DSA_free(%struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @BN_CTX_free(i32* %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = call i32 @ASN1_STRING_clear_free(%struct.TYPE_12__* %128)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %21
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @PKCS8_pkey_get0(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32*, i32*, i8**, i32*) #1

declare dso_local %struct.TYPE_12__* @d2i_ASN1_INTEGER(i32*, i8**, i32) #1

declare dso_local %struct.TYPE_10__* @d2i_DSAparams(i32*, i8**, i32) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32 @ASN1_INTEGER_to_BN(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DSA(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @DSA_free(%struct.TYPE_10__*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @ASN1_STRING_clear_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
