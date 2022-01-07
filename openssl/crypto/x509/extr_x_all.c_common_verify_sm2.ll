; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_all.c_common_verify_sm2.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_all.c_common_verify_sm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__* }

@X509_F_COMMON_VERIFY_SM2 = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@V_ASN1_BIT_STRING = common dso_local global i64 0, align 8
@ASN1_R_INVALID_BIT_STRING_BITS_LEFT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_R_WRONG_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4
@EVP_PKEY_SM2 = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@X509_REQ_INFO = common dso_local global i32 0, align 4
@X509_CINF = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*, i32, i32, i32)* @common_verify_sm2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_verify_sm2(i8* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32* null, i32** %19, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @EVP_get_digestbynid(i32 %24)
  store i32* %25, i32** %20, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %22, align 8
  store i32* null, i32** %23, align 8
  %26 = load i32*, i32** %20, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %30 = load i32, i32* @ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM, align 4
  %31 = call i32 @X509err(i32 %29, i32 %30)
  br label %194

32:                                               ; preds = %5
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %37 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %38 = call i32 @X509err(i32 %36, i32 %37)
  store i32 -1, i32* %6, align 4
  br label %203

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %13, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %21, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %22, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32* %52, i32** %23, align 8
  br label %63

53:                                               ; preds = %39
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %12, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %21, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %22, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32* %62, i32** %23, align 8
  br label %63

63:                                               ; preds = %53, %42
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V_ASN1_BIT_STRING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 7
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %77 = load i32, i32* @ASN1_R_INVALID_BIT_STRING_BITS_LEFT, align 4
  %78 = call i32 @X509err(i32 %76, i32 %77)
  store i32 -1, i32* %6, align 4
  br label %203

79:                                               ; preds = %69, %63
  %80 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @X509err(i32 %84, i32 %85)
  br label %194

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @EVP_PKEY_type(i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %98 = load i32, i32* @ASN1_R_WRONG_PUBLIC_KEY_TYPE, align 4
  %99 = call i32 @X509err(i32 %97, i32 %98)
  br label %194

100:                                              ; preds = %87
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = load i32, i32* @EVP_PKEY_SM2, align 4
  %103 = call i32 @EVP_PKEY_set_alias_type(%struct.TYPE_14__* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %107 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %108 = call i32 @X509err(i32 %106, i32 %107)
  store i32 0, i32* %16, align 4
  br label %194

109:                                              ; preds = %100
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = call i32* @EVP_PKEY_CTX_new(%struct.TYPE_14__* %110, i32* null)
  store i32* %111, i32** %19, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %116 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %117 = call i32 @X509err(i32 %115, i32 %116)
  store i32 0, i32* %16, align 4
  br label %194

118:                                              ; preds = %109
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %120 = icmp ne %struct.TYPE_15__* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @EVP_PKEY_CTX_set1_id(i32* %122, i32 %125, i32 %128)
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %133 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %134 = call i32 @X509err(i32 %132, i32 %133)
  store i32 0, i32* %16, align 4
  br label %194

135:                                              ; preds = %121, %118
  %136 = load i32*, i32** %14, align 8
  %137 = load i32*, i32** %19, align 8
  %138 = call i32 @EVP_MD_CTX_set_pkey_ctx(i32* %136, i32* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = load i32*, i32** %20, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = call i32 @EVP_DigestVerifyInit(i32* %139, i32* null, i32* %140, i32* null, %struct.TYPE_14__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %146 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %147 = call i32 @X509err(i32 %145, i32 %146)
  store i32 0, i32* %16, align 4
  br label %194

148:                                              ; preds = %135
  %149 = load i32*, i32** %23, align 8
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @X509_REQ_INFO, align 4
  %154 = call i32 @ASN1_ITEM_rptr(i32 %153)
  br label %158

155:                                              ; preds = %148
  %156 = load i32, i32* @X509_CINF, align 4
  %157 = call i32 @ASN1_ITEM_rptr(i32 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %154, %152 ], [ %157, %155 ]
  %160 = call i32 @ASN1_item_i2d(i32* %149, i8** %15, i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %165 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %166 = call i32 @X509err(i32 %164, i32 %165)
  br label %194

167:                                              ; preds = %158
  %168 = load i8*, i8** %15, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %172 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %173 = call i32 @X509err(i32 %171, i32 %172)
  br label %194

174:                                              ; preds = %167
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %18, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @EVP_DigestVerify(i32* %177, i32 %180, i64 %183, i8* %184, i32 %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %174
  %190 = load i32, i32* @X509_F_COMMON_VERIFY_SM2, align 4
  %191 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %192 = call i32 @X509err(i32 %190, i32 %191)
  br label %194

193:                                              ; preds = %174
  store i32 1, i32* %16, align 4
  br label %194

194:                                              ; preds = %193, %189, %170, %163, %144, %131, %114, %105, %96, %83, %28
  %195 = load i8*, i8** %15, align 8
  %196 = load i64, i64* %18, align 8
  %197 = call i32 @OPENSSL_clear_free(i8* %195, i64 %196)
  %198 = load i32*, i32** %14, align 8
  %199 = call i32 @EVP_MD_CTX_free(i32* %198)
  %200 = load i32*, i32** %19, align 8
  %201 = call i32 @EVP_PKEY_CTX_free(i32* %200)
  %202 = load i32, i32* %16, align 4
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %194, %75, %35
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_PKEY_type(i32) #1

declare dso_local i32 @EVP_PKEY_set_alias_type(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_set1_id(i32*, i32, i32) #1

declare dso_local i32 @EVP_MD_CTX_set_pkey_ctx(i32*, i32*) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i32 @EVP_DigestVerify(i32*, i32, i64, i8*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
