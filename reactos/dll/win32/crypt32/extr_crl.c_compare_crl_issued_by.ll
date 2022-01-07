; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_compare_crl_issued_by.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_crl.c_compare_crl_issued_by.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__, %struct.TYPE_20__, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@CRL_FIND_ISSUED_BY_SIGNATURE_FLAG = common dso_local global i64 0, align 8
@CRYPT_VERIFY_CERT_SIGN_SUBJECT_CRL = common dso_local global i32 0, align 4
@CRYPT_VERIFY_CERT_SIGN_ISSUER_CERT = common dso_local global i32 0, align 4
@CRL_FIND_ISSUED_BY_AKI_FLAG = common dso_local global i64 0, align 8
@szOID_AUTHORITY_KEY_IDENTIFIER2 = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_AUTHORITY_KEY_ID2 = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CERT_ALT_NAME_DIRECTORY_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"no supported name type in authority key id2\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CERT_KEY_IDENTIFIER_PROP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported value for AKI extension\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i64, i64, i8*)* @compare_crl_issued_by to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_crl_issued_by(%struct.TYPE_29__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %224

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = call i32 @CertCompareCertificateName(i32 %25, i32* %29, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %20
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @CRL_FIND_ISSUED_BY_SIGNATURE_FLAG, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_CRL, align 4
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %48 = bitcast %struct.TYPE_29__* %47 to i8*
  %49 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_ISSUER_CERT, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = bitcast %struct.TYPE_18__* %50 to i8*
  %52 = call i32 @CryptVerifyCertificateSignatureEx(i32 0, i32 %45, i32 %46, i8* %48, i32 %49, i8* %51, i32 0, i32* null)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %42, %37, %20
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %223

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @CRL_FIND_ISSUED_BY_AKI_FLAG, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %223

61:                                               ; preds = %56
  %62 = load i32, i32* @szOID_AUTHORITY_KEY_IDENTIFIER2, align 4
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_27__* @CertFindExtension(i32 %62, i32 %67, i32 %72)
  store %struct.TYPE_27__* %73, %struct.TYPE_27__** %11, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %75 = icmp ne %struct.TYPE_27__* %74, null
  br i1 %75, label %76, label %222

76:                                               ; preds = %61
  %77 = load i32, i32* @X509_ASN_ENCODING, align 4
  %78 = load i32, i32* @X509_AUTHORITY_KEY_ID2, align 4
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %88 = call i32 @CryptDecodeObjectEx(i32 %77, i32 %78, i32 %82, i32 %86, i32 %87, i32* null, %struct.TYPE_19__** %12, i64* %13)
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %221

90:                                               ; preds = %76
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %167

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %167

102:                                              ; preds = %96
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %14, align 8
  store i64 0, i64* %15, align 8
  br label %103

103:                                              ; preds = %134, %102
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %105 = icmp ne %struct.TYPE_28__* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %107, %111
  br label %113

113:                                              ; preds = %106, %103
  %114 = phi i1 [ false, %103 ], [ %112, %106 ]
  br i1 %114, label %115, label %137

115:                                              ; preds = %113
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CERT_ALT_NAME_DIRECTORY_NAME, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i64 %131
  store %struct.TYPE_28__* %132, %struct.TYPE_28__** %14, align 8
  br label %133

133:                                              ; preds = %126, %115
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %15, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %15, align 8
  br label %103

137:                                              ; preds = %113
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %139 = icmp ne %struct.TYPE_28__* %138, null
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = call i32 @CertCompareCertificateName(i32 %143, i32* %147, i32* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %140
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = call i32 @CertCompareIntegerBlob(i32* %158, %struct.TYPE_20__* %160)
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %154, %140
  br label %166

163:                                              ; preds = %137
  %164 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %163, %162
  br label %218

167:                                              ; preds = %96, %90
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %167
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %175 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %176 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_18__* %174, i32 %175, i32* null, i64* %16)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %173
  %180 = load i64, i64* %16, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %180, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %179
  %187 = load i64, i64* %16, align 8
  %188 = call i32* @CryptMemAlloc(i64 %187)
  store i32* %188, i32** %17, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %208

191:                                              ; preds = %186
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %193 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %194 = load i32*, i32** %17, align 8
  %195 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_18__* %192, i32 %193, i32* %194, i64* %16)
  %196 = load i32*, i32** %17, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %16, align 8
  %202 = call i32 @memcmp(i32* %196, i32 %200, i64 %201)
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %9, align 4
  %206 = load i32*, i32** %17, align 8
  %207 = call i32 @CryptMemFree(i32* %206)
  br label %210

208:                                              ; preds = %186
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %208, %191
  br label %213

211:                                              ; preds = %179, %173
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %211, %210
  br label %217

214:                                              ; preds = %167
  %215 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %214, %213
  br label %218

218:                                              ; preds = %217, %166
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %220 = call i32 @LocalFree(%struct.TYPE_19__* %219)
  br label %221

221:                                              ; preds = %218, %76
  br label %222

222:                                              ; preds = %221, %61
  br label %223

223:                                              ; preds = %222, %56, %53
  br label %226

224:                                              ; preds = %4
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %224, %223
  %227 = load i32, i32* %9, align 4
  ret i32 %227
}

declare dso_local i32 @CertCompareCertificateName(i32, i32*, i32*) #1

declare dso_local i32 @CryptVerifyCertificateSignatureEx(i32, i32, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_27__* @CertFindExtension(i32, i32, i32) #1

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, %struct.TYPE_19__**, i64*) #1

declare dso_local i32 @CertCompareIntegerBlob(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CertGetCertificateContextProperty(%struct.TYPE_18__*, i32, i32*, i64*) #1

declare dso_local i32* @CryptMemAlloc(i64) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

declare dso_local i32 @CryptMemFree(i32*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
