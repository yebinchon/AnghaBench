; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_IsCertificateSelfSigned.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_IsCertificateSelfSigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_23__, %struct.TYPE_18__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }

@szOID_AUTHORITY_KEY_IDENTIFIER2 = common dso_local global i32 0, align 4
@X509_AUTHORITY_KEY_ID2 = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_DECODE_NOCOPY_FLAG = common dso_local global i32 0, align 4
@CERT_ALT_NAME_DIRECTORY_NAME = common dso_local global i64 0, align 8
@CERT_TRUST_HAS_NAME_MATCH_ISSUER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"no supported name type in authority key id2\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CERT_KEY_IDENTIFIER_PROP_ID = common dso_local global i32 0, align 4
@CERT_TRUST_HAS_KEY_MATCH_ISSUER = common dso_local global i64 0, align 8
@szOID_AUTHORITY_KEY_IDENTIFIER = common dso_local global i32 0, align 4
@X509_AUTHORITY_KEY_ID = common dso_local global i32 0, align 4
@CERT_TRUST_IS_SELF_SIGNED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPT_IsCertificateSelfSigned(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  store i64 0, i64* %4, align 8
  %13 = load i32, i32* @szOID_AUTHORITY_KEY_IDENTIFIER2, align 4
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_25__* @CertFindExtension(i32 %13, i32 %18, i32 %23)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %5, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %26, label %173

26:                                               ; preds = %1
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @X509_AUTHORITY_KEY_ID2, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %40 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @CryptDecodeObjectEx(i32 %29, i32 %30, i32 %34, i32 %38, i32 %41, i32* null, %struct.TYPE_28__** %7, i64* %3)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %172

45:                                               ; preds = %26
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %124

51:                                               ; preds = %45
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %124

57:                                               ; preds = %51
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %89, %57
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %60 = icmp ne %struct.TYPE_26__* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %62, %66
  br label %68

68:                                               ; preds = %61, %58
  %69 = phi i1 [ false, %58 ], [ %67, %61 ]
  br i1 %69, label %70, label %92

70:                                               ; preds = %68
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CERT_ALT_NAME_DIRECTORY_NAME, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i64 %86
  store %struct.TYPE_26__* %87, %struct.TYPE_26__** %8, align 8
  br label %88

88:                                               ; preds = %81, %70
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %58

92:                                               ; preds = %68
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %94 = icmp ne %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = call i64 @CertCompareCertificateName(i32 %98, %struct.TYPE_19__* %101, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %95
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 2
  %115 = call i64 @CertCompareIntegerBlob(%struct.TYPE_18__* %110, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i64, i64* @CERT_TRUST_HAS_NAME_MATCH_ISSUER, align 8
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %117, %108, %95
  br label %123

120:                                              ; preds = %92
  %121 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %119
  br label %169

124:                                              ; preds = %51, %45
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %124
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %132 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %133 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_27__* %131, i32 %132, i32* null, i64* %3)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %130
  %137 = load i64, i64* %3, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %137, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %136
  %144 = load i64, i64* %3, align 8
  %145 = call i32* @CryptMemAlloc(i64 %144)
  store i32* %145, i32** %10, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %150 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_27__* %149, i32 %150, i32* %151, i64* %3)
  %153 = load i32*, i32** %10, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %3, align 8
  %159 = call i32 @memcmp(i32* %153, i32 %157, i64 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %148
  %162 = load i64, i64* @CERT_TRUST_HAS_KEY_MATCH_ISSUER, align 8
  store i64 %162, i64* %4, align 8
  br label %163

163:                                              ; preds = %161, %148
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @CryptMemFree(i32* %164)
  br label %166

166:                                              ; preds = %163, %143
  br label %167

167:                                              ; preds = %166, %136, %130
  br label %168

168:                                              ; preds = %167, %124
  br label %169

169:                                              ; preds = %168, %123
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %171 = call i32 @LocalFree(%struct.TYPE_28__* %170)
  br label %172

172:                                              ; preds = %169, %26
  br label %309

173:                                              ; preds = %1
  %174 = load i32, i32* @szOID_AUTHORITY_KEY_IDENTIFIER, align 4
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call %struct.TYPE_25__* @CertFindExtension(i32 %174, i32 %179, i32 %184)
  store %struct.TYPE_25__* %185, %struct.TYPE_25__** %5, align 8
  %186 = icmp ne %struct.TYPE_25__* %185, null
  br i1 %186, label %187, label %291

187:                                              ; preds = %173
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @X509_AUTHORITY_KEY_ID, align 4
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %201 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @CryptDecodeObjectEx(i32 %190, i32 %191, i32 %195, i32 %199, i32 %202, i32* null, %struct.TYPE_28__** %11, i64* %3)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %290

206:                                              ; preds = %187
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %242

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %242

218:                                              ; preds = %212
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = call i64 @CertCompareCertificateName(i32 %221, %struct.TYPE_19__* %223, i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %218
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 2
  %237 = call i64 @CertCompareIntegerBlob(%struct.TYPE_18__* %232, i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %230
  %240 = load i64, i64* @CERT_TRUST_HAS_NAME_MATCH_ISSUER, align 8
  store i64 %240, i64* %4, align 8
  br label %241

241:                                              ; preds = %239, %230, %218
  br label %287

242:                                              ; preds = %212, %206
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %286

248:                                              ; preds = %242
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %250 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %251 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_27__* %249, i32 %250, i32* null, i64* %3)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %285

254:                                              ; preds = %248
  %255 = load i64, i64* %3, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %255, %259
  br i1 %260, label %261, label %285

261:                                              ; preds = %254
  %262 = load i64, i64* %3, align 8
  %263 = call i32* @CryptMemAlloc(i64 %262)
  store i32* %263, i32** %12, align 8
  %264 = load i32*, i32** %12, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %284

266:                                              ; preds = %261
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %268 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %269 = load i32*, i32** %12, align 8
  %270 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_27__* %267, i32 %268, i32* %269, i64* %3)
  %271 = load i32*, i32** %12, align 8
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i64, i64* %3, align 8
  %277 = call i32 @memcmp(i32* %271, i32 %275, i64 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %266
  %280 = load i64, i64* @CERT_TRUST_HAS_KEY_MATCH_ISSUER, align 8
  store i64 %280, i64* %4, align 8
  br label %281

281:                                              ; preds = %279, %266
  %282 = load i32*, i32** %12, align 8
  %283 = call i32 @CryptMemFree(i32* %282)
  br label %284

284:                                              ; preds = %281, %261
  br label %285

285:                                              ; preds = %284, %254, %248
  br label %286

286:                                              ; preds = %285, %242
  br label %287

287:                                              ; preds = %286, %241
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %289 = call i32 @LocalFree(%struct.TYPE_28__* %288)
  br label %290

290:                                              ; preds = %287, %187
  br label %308

291:                                              ; preds = %173
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  %303 = call i64 @CertCompareCertificateName(i32 %294, %struct.TYPE_19__* %298, i32* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %291
  %306 = load i64, i64* @CERT_TRUST_HAS_NAME_MATCH_ISSUER, align 8
  store i64 %306, i64* %4, align 8
  br label %307

307:                                              ; preds = %305, %291
  br label %308

308:                                              ; preds = %307, %290
  br label %309

309:                                              ; preds = %308, %172
  %310 = load i64, i64* %4, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load i64, i64* @CERT_TRUST_IS_SELF_SIGNED, align 8
  %314 = load i64, i64* %4, align 8
  %315 = or i64 %314, %313
  store i64 %315, i64* %4, align 8
  br label %316

316:                                              ; preds = %312, %309
  %317 = load i64, i64* %4, align 8
  ret i64 %317
}

declare dso_local %struct.TYPE_25__* @CertFindExtension(i32, i32, i32) #1

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, %struct.TYPE_28__**, i64*) #1

declare dso_local i64 @CertCompareCertificateName(i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @CertCompareIntegerBlob(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CertGetCertificateContextProperty(%struct.TYPE_27__*, i32, i32*, i64*) #1

declare dso_local i32* @CryptMemAlloc(i64) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

declare dso_local i32 @CryptMemFree(i32*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
