; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.TYPE_23__ = type { i32 }

@NID_undef = common dso_local global i64 0, align 8
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@NID_dhpublicnumber = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_NONE = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_X9_42 = common dso_local global i32 0, align 4
@NID_sha1 = common dso_local global i64 0, align 8
@NID_id_smime_alg_ESDH = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dh_cms_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_cms_encrypt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @CMS_RecipientInfo_get0_pkey_ctx(i32* %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %249

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_22__* @EVP_PKEY_CTX_get0_pkey(i32* %29)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(i32* %31, %struct.TYPE_21__** %8, %struct.TYPE_23__** %11, i32* null, i32* null, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %241

35:                                               ; preds = %28
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = call i32 @X509_ALGOR_get0(i32** %10, i32* null, i32* null, %struct.TYPE_21__* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* @NID_undef, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32* @OBJ_nid2obj(i32 %40)
  %42 = icmp eq i32* %38, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %35
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @BN_to_ASN1_INTEGER(i32 %49, i32* null)
  store i32* %50, i32** %22, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %241

54:                                               ; preds = %43
  %55 = load i32*, i32** %22, align 8
  %56 = call i32 @i2d_ASN1_INTEGER(i32* %55, i8** %14)
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %22, align 8
  %58 = call i32 @ASN1_INTEGER_free(i32* %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %241

62:                                               ; preds = %54
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @ASN1_STRING_set0(%struct.TYPE_23__* %63, i8* %64, i32 %65)
  %67 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %68 = or i32 %67, 7
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  store i8* null, i8** %14, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = load i32, i32* @NID_dhpublicnumber, align 4
  %81 = call i32* @OBJ_nid2obj(i32 %80)
  %82 = load i32, i32* @V_ASN1_UNDEF, align 4
  %83 = call i32 @X509_ALGOR_set0(%struct.TYPE_21__* %79, i32* %81, i32 %82, %struct.TYPE_23__* null)
  br label %84

84:                                               ; preds = %62, %35
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @EVP_PKEY_CTX_get_dh_kdf_type(i32* %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %241

90:                                               ; preds = %84
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @EVP_PKEY_CTX_get_dh_kdf_md(i32* %91, i32** %21)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %241

95:                                               ; preds = %90
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @EVP_PKEY_DH_KDF_NONE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* @EVP_PKEY_DH_KDF_X9_42, align 4
  store i32 %100, i32* %19, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i64 @EVP_PKEY_CTX_set_dh_kdf_type(i32* %101, i32 %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %241

106:                                              ; preds = %99
  br label %113

107:                                              ; preds = %95
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @EVP_PKEY_DH_KDF_X9_42, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %241

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i32*, i32** %21, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = call i32* (...) @EVP_sha1()
  store i32* %117, i32** %21, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %21, align 8
  %120 = call i64 @EVP_PKEY_CTX_set_dh_kdf_md(i32* %118, i32* %119)
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %241

123:                                              ; preds = %116
  br label %131

124:                                              ; preds = %113
  %125 = load i32*, i32** %21, align 8
  %126 = call i64 @EVP_MD_type(i32* %125)
  %127 = load i64, i64* @NID_sha1, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %241

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %123
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @CMS_RecipientInfo_kari_get0_alg(i32* %132, %struct.TYPE_21__** %8, i32** %13)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %241

136:                                              ; preds = %131
  %137 = load i32*, i32** %3, align 8
  %138 = call i32* @CMS_RecipientInfo_kari_get0_ctx(i32* %137)
  store i32* %138, i32** %6, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @EVP_CIPHER_CTX_type(i32* %139)
  store i32 %140, i32* %20, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %20, align 4
  %143 = call i32* @OBJ_nid2obj(i32 %142)
  %144 = call i64 @EVP_PKEY_CTX_set0_dh_kdf_oid(i32* %141, i32* %143)
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %241

147:                                              ; preds = %136
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @EVP_CIPHER_CTX_key_length(i32* %148)
  store i32 %149, i32* %7, align 4
  %150 = call %struct.TYPE_21__* (...) @X509_ALGOR_new()
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %9, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %152 = icmp eq %struct.TYPE_21__* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %241

154:                                              ; preds = %147
  %155 = load i32, i32* %20, align 4
  %156 = call i32* @OBJ_nid2obj(i32 %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = call i32* (...) @ASN1_TYPE_new()
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %241

167:                                              ; preds = %154
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i64 @EVP_CIPHER_param_to_asn1(i32* %168, i32* %171)
  %173 = icmp sle i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %241

175:                                              ; preds = %167
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @ASN1_TYPE_get(i32* %178)
  %180 = load i64, i64* @NID_undef, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @ASN1_TYPE_free(i32* %185)
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %182, %175
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i64 @EVP_PKEY_CTX_set_dh_kdf_outlen(i32* %190, i32 %191)
  %193 = icmp sle i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %241

195:                                              ; preds = %189
  %196 = load i32*, i32** %13, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = load i32*, i32** %13, align 8
  %200 = call i64 @ASN1_STRING_length(i32* %199)
  store i64 %200, i64* %17, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @ASN1_STRING_get0_data(i32* %201)
  %203 = load i64, i64* %17, align 8
  %204 = call i8* @OPENSSL_memdup(i32 %202, i64 %203)
  store i8* %204, i8** %15, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %198
  br label %241

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %208, %195
  %210 = load i32*, i32** %4, align 8
  %211 = load i8*, i8** %15, align 8
  %212 = load i64, i64* %17, align 8
  %213 = call i64 @EVP_PKEY_CTX_set0_dh_kdf_ukm(i32* %210, i8* %211, i64 %212)
  %214 = icmp sle i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %241

216:                                              ; preds = %209
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %218 = call i32 @i2d_X509_ALGOR(%struct.TYPE_21__* %217, i8** %14)
  store i32 %218, i32* %16, align 4
  %219 = load i8*, i8** %14, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %216
  %222 = load i32, i32* %16, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221, %216
  br label %241

225:                                              ; preds = %221
  %226 = call %struct.TYPE_23__* (...) @ASN1_STRING_new()
  store %struct.TYPE_23__* %226, %struct.TYPE_23__** %12, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %228 = icmp eq %struct.TYPE_23__* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %241

230:                                              ; preds = %225
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = load i32, i32* %16, align 4
  %234 = call i32 @ASN1_STRING_set0(%struct.TYPE_23__* %231, i8* %232, i32 %233)
  store i8* null, i8** %14, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %236 = load i32, i32* @NID_id_smime_alg_ESDH, align 4
  %237 = call i32* @OBJ_nid2obj(i32 %236)
  %238 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %240 = call i32 @X509_ALGOR_set0(%struct.TYPE_21__* %235, i32* %237, i32 %238, %struct.TYPE_23__* %239)
  store i32 1, i32* %18, align 4
  br label %241

241:                                              ; preds = %230, %229, %224, %215, %207, %194, %174, %166, %153, %146, %135, %129, %122, %111, %105, %94, %89, %61, %53, %34
  %242 = load i8*, i8** %14, align 8
  %243 = call i32 @OPENSSL_free(i8* %242)
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %245 = call i32 @X509_ALGOR_free(%struct.TYPE_21__* %244)
  %246 = load i8*, i8** %15, align 8
  %247 = call i32 @OPENSSL_free(i8* %246)
  %248 = load i32, i32* %18, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %241, %27
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32* @CMS_RecipientInfo_get0_pkey_ctx(i32*) #1

declare dso_local %struct.TYPE_22__* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32 @CMS_RecipientInfo_kari_get0_orig_id(i32*, %struct.TYPE_21__**, %struct.TYPE_23__**, i32*, i32*, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @i2d_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @ASN1_STRING_set0(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @X509_ALGOR_set0(%struct.TYPE_21__*, i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @EVP_PKEY_CTX_get_dh_kdf_type(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_get_dh_kdf_md(i32*, i32**) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_type(i32*, i32) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_md(i32*, i32*) #1

declare dso_local i64 @EVP_MD_type(i32*) #1

declare dso_local i32 @CMS_RecipientInfo_kari_get0_alg(i32*, %struct.TYPE_21__**, i32**) #1

declare dso_local i32* @CMS_RecipientInfo_kari_get0_ctx(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_type(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_dh_kdf_oid(i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(i32*) #1

declare dso_local %struct.TYPE_21__* @X509_ALGOR_new(...) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i64 @EVP_CIPHER_param_to_asn1(i32*, i32*) #1

declare dso_local i64 @ASN1_TYPE_get(i32*) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_outlen(i32*, i32) #1

declare dso_local i64 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @OPENSSL_memdup(i32, i64) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_dh_kdf_ukm(i32*, i8*, i64) #1

declare dso_local i32 @i2d_X509_ALGOR(%struct.TYPE_21__*, i8**) #1

declare dso_local %struct.TYPE_23__* @ASN1_STRING_new(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
