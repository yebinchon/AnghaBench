; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i8* }

@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@EVP_PKEY_OP_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFY = common dso_local global i32 0, align 4
@RSA_PKCS1_OAEP_PADDING = common dso_local global i32 0, align 4
@EVP_PKEY_OP_TYPE_CRYPT = common dso_local global i32 0, align 4
@RSA_F_PKEY_RSA_CTRL = common dso_local global i32 0, align 4
@RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE = common dso_local global i32 0, align 4
@RSA_R_INVALID_PSS_SALTLEN = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_MAX = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_AUTO = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@RSA_R_PSS_SALTLEN_TOO_SMALL = common dso_local global i32 0, align 4
@RSA_MIN_MODULUS_BITS = common dso_local global i32 0, align 4
@RSA_R_KEY_SIZE_TOO_SMALL = common dso_local global i32 0, align 4
@RSA_R_BAD_E_VALUE = common dso_local global i32 0, align 4
@RSA_DEFAULT_PRIME_NUM = common dso_local global i32 0, align 4
@RSA_MAX_PRIME_NUM = common dso_local global i32 0, align 4
@RSA_R_KEY_PRIME_NUM_INVALID = common dso_local global i32 0, align 4
@RSA_R_INVALID_PADDING_MODE = common dso_local global i32 0, align 4
@RSA_R_DIGEST_NOT_ALLOWED = common dso_local global i32 0, align 4
@RSA_R_INVALID_MGF1_MD = common dso_local global i32 0, align 4
@RSA_R_MGF1_DIGEST_NOT_ALLOWED = common dso_local global i32 0, align 4
@RSA_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i8*)* @pkey_rsa_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_ctrl(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %406 [
    i32 129, label %15
    i32 142, label %92
    i32 128, label %98
    i32 141, label %98
    i32 135, label %172
    i32 133, label %184
    i32 134, label %209
    i32 130, label %225
    i32 143, label %225
    i32 140, label %249
    i32 146, label %278
    i32 132, label %284
    i32 145, label %284
    i32 131, label %343
    i32 144, label %376
    i32 147, label %395
    i32 136, label %395
    i32 148, label %395
    i32 137, label %396
    i32 138, label %396
    i32 150, label %396
    i32 149, label %396
    i32 139, label %402
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @check_padding_md(i8* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %407

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %40 = load i32, i32* @EVP_PKEY_OP_VERIFY, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %88

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = call i8* (...) @EVP_sha1()
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  br label %61

55:                                               ; preds = %31
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = call i32 @pkey_ctx_is_pss(%struct.TYPE_7__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %88

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EVP_PKEY_OP_TYPE_CRYPT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %88

73:                                               ; preds = %65
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = call i8* (...) @EVP_sha1()
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  store i32 1, i32* %5, align 4
  br label %407

87:                                               ; preds = %19, %15
  br label %88

88:                                               ; preds = %87, %72, %59, %44
  %89 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %90 = load i32, i32* @RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE, align 4
  %91 = call i32 @RSAerr(i32 %89, i32 %90)
  store i32 -2, i32* %5, align 4
  br label %407

92:                                               ; preds = %4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = bitcast i8* %96 to i32*
  store i32 %95, i32* %97, align 4
  store i32 1, i32* %5, align 4
  br label %407

98:                                               ; preds = %4, %4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %106 = load i32, i32* @RSA_R_INVALID_PSS_SALTLEN, align 4
  %107 = call i32 @RSAerr(i32 %105, i32 %106)
  store i32 -2, i32* %5, align 4
  br label %407

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 141
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 4
  br label %171

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @RSA_PSS_SALTLEN_MAX, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 -2, i32* %5, align 4
  br label %407

122:                                              ; preds = %117
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = call i32 @rsa_pss_restricted(%struct.TYPE_6__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @RSA_PSS_SALTLEN_AUTO, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @EVP_PKEY_OP_VERIFY, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %138 = load i32, i32* @RSA_R_INVALID_PSS_SALTLEN, align 4
  %139 = call i32 @RSAerr(i32 %137, i32 %138)
  store i32 -2, i32* %5, align 4
  br label %407

140:                                              ; preds = %130, %126
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @EVP_MD_size(i8* %150)
  %152 = icmp sgt i32 %147, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %144, %140
  %154 = load i32, i32* %8, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156, %144
  %163 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %164 = load i32, i32* @RSA_R_PSS_SALTLEN_TOO_SMALL, align 4
  %165 = call i32 @RSAerr(i32 %163, i32 %164)
  store i32 0, i32* %5, align 4
  br label %407

166:                                              ; preds = %156, %153
  br label %167

167:                                              ; preds = %166, %122
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %111
  store i32 1, i32* %5, align 4
  br label %407

172:                                              ; preds = %4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @RSA_MIN_MODULUS_BITS, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %178 = load i32, i32* @RSA_R_KEY_SIZE_TOO_SMALL, align 4
  %179 = call i32 @RSAerr(i32 %177, i32 %178)
  store i32 -2, i32* %5, align 4
  br label %407

180:                                              ; preds = %172
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  store i32 1, i32* %5, align 4
  br label %407

184:                                              ; preds = %4
  %185 = load i8*, i8** %9, align 8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %197, label %187

187:                                              ; preds = %184
  %188 = load i8*, i8** %9, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = call i32 @BN_is_odd(i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i8*, i8** %9, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = call i32 @BN_is_one(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192, %187, %184
  %198 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %199 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %200 = call i32 @RSAerr(i32 %198, i32 %199)
  store i32 -2, i32* %5, align 4
  br label %407

201:                                              ; preds = %192
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 9
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @BN_free(i8* %204)
  %206 = load i8*, i8** %9, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 9
  store i8* %206, i8** %208, align 8
  store i32 1, i32* %5, align 4
  br label %407

209:                                              ; preds = %4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @RSA_DEFAULT_PRIME_NUM, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @RSA_MAX_PRIME_NUM, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213, %209
  %218 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %219 = load i32, i32* @RSA_R_KEY_PRIME_NUM_INVALID, align 4
  %220 = call i32 @RSAerr(i32 %218, i32 %219)
  store i32 -2, i32* %5, align 4
  br label %407

221:                                              ; preds = %213
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 8
  store i32 1, i32* %5, align 4
  br label %407

225:                                              ; preds = %4, %4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %233 = load i32, i32* @RSA_R_INVALID_PADDING_MODE, align 4
  %234 = call i32 @RSAerr(i32 %232, i32 %233)
  store i32 -2, i32* %5, align 4
  br label %407

235:                                              ; preds = %225
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 143
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = bitcast i8* %242 to i8**
  store i8* %241, i8** %243, align 8
  br label %248

244:                                              ; preds = %235
  %245 = load i8*, i8** %9, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %244, %238
  store i32 1, i32* %5, align 4
  br label %407

249:                                              ; preds = %4
  %250 = load i8*, i8** %9, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @check_padding_md(i8* %250, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %249
  store i32 0, i32* %5, align 4
  br label %407

257:                                              ; preds = %249
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %259 = call i32 @rsa_pss_restricted(%struct.TYPE_6__* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @EVP_MD_type(i8* %264)
  %266 = load i8*, i8** %9, align 8
  %267 = call i32 @EVP_MD_type(i8* %266)
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  store i32 1, i32* %5, align 4
  br label %407

270:                                              ; preds = %261
  %271 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %272 = load i32, i32* @RSA_R_DIGEST_NOT_ALLOWED, align 4
  %273 = call i32 @RSAerr(i32 %271, i32 %272)
  store i32 0, i32* %5, align 4
  br label %407

274:                                              ; preds = %257
  %275 = load i8*, i8** %9, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  store i8* %275, i8** %277, align 8
  store i32 1, i32* %5, align 4
  br label %407

278:                                              ; preds = %4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = bitcast i8* %282 to i8**
  store i8* %281, i8** %283, align 8
  store i32 1, i32* %5, align 4
  br label %407

284:                                              ; preds = %4, %4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %284
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %298 = load i32, i32* @RSA_R_INVALID_MGF1_MD, align 4
  %299 = call i32 @RSAerr(i32 %297, i32 %298)
  store i32 -2, i32* %5, align 4
  br label %407

300:                                              ; preds = %290, %284
  %301 = load i32, i32* %7, align 4
  %302 = icmp eq i32 %301, 145
  br i1 %302, label %303, label %321

303:                                              ; preds = %300
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 6
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 6
  %311 = load i8*, i8** %310, align 8
  %312 = load i8*, i8** %9, align 8
  %313 = bitcast i8* %312 to i8**
  store i8* %311, i8** %313, align 8
  br label %320

314:                                              ; preds = %303
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** %9, align 8
  %319 = bitcast i8* %318 to i8**
  store i8* %317, i8** %319, align 8
  br label %320

320:                                              ; preds = %314, %308
  br label %342

321:                                              ; preds = %300
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %323 = call i32 @rsa_pss_restricted(%struct.TYPE_6__* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %321
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 6
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @EVP_MD_type(i8* %328)
  %330 = load i8*, i8** %9, align 8
  %331 = call i32 @EVP_MD_type(i8* %330)
  %332 = icmp eq i32 %329, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  store i32 1, i32* %5, align 4
  br label %407

334:                                              ; preds = %325
  %335 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %336 = load i32, i32* @RSA_R_MGF1_DIGEST_NOT_ALLOWED, align 4
  %337 = call i32 @RSAerr(i32 %335, i32 %336)
  store i32 0, i32* %5, align 4
  br label %407

338:                                              ; preds = %321
  %339 = load i8*, i8** %9, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 6
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %338, %320
  store i32 1, i32* %5, align 4
  br label %407

343:                                              ; preds = %4
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %348 = icmp ne i32 %346, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %343
  %350 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %351 = load i32, i32* @RSA_R_INVALID_PADDING_MODE, align 4
  %352 = call i32 @RSAerr(i32 %350, i32 %351)
  store i32 -2, i32* %5, align 4
  br label %407

353:                                              ; preds = %343
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 7
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @OPENSSL_free(i8* %356)
  %358 = load i8*, i8** %9, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %370

360:                                              ; preds = %353
  %361 = load i32, i32* %8, align 4
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %360
  %364 = load i8*, i8** %9, align 8
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 7
  store i8* %364, i8** %366, align 8
  %367 = load i32, i32* %8, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 8
  store i32 %367, i32* %369, align 8
  br label %375

370:                                              ; preds = %360, %353
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 7
  store i8* null, i8** %372, align 8
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 8
  store i32 0, i32* %374, align 8
  br label %375

375:                                              ; preds = %370, %363
  store i32 1, i32* %5, align 4
  br label %407

376:                                              ; preds = %4
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %376
  %383 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %384 = load i32, i32* @RSA_R_INVALID_PADDING_MODE, align 4
  %385 = call i32 @RSAerr(i32 %383, i32 %384)
  store i32 -2, i32* %5, align 4
  br label %407

386:                                              ; preds = %376
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 7
  %389 = load i8*, i8** %388, align 8
  %390 = load i8*, i8** %9, align 8
  %391 = bitcast i8* %390 to i8**
  store i8* %389, i8** %391, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 8
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %5, align 4
  br label %407

395:                                              ; preds = %4, %4, %4
  store i32 1, i32* %5, align 4
  br label %407

396:                                              ; preds = %4, %4, %4, %4
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %398 = call i32 @pkey_ctx_is_pss(%struct.TYPE_7__* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %396
  store i32 1, i32* %5, align 4
  br label %407

401:                                              ; preds = %396
  br label %402

402:                                              ; preds = %4, %401
  %403 = load i32, i32* @RSA_F_PKEY_RSA_CTRL, align 4
  %404 = load i32, i32* @RSA_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %405 = call i32 @RSAerr(i32 %403, i32 %404)
  store i32 -2, i32* %5, align 4
  br label %407

406:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %407

407:                                              ; preds = %406, %402, %400, %395, %386, %382, %375, %349, %342, %334, %333, %296, %278, %274, %270, %269, %256, %248, %231, %221, %217, %201, %197, %180, %176, %171, %162, %136, %121, %104, %92, %88, %83, %30
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local i32 @check_padding_md(i8*, i32) #1

declare dso_local i8* @EVP_sha1(...) #1

declare dso_local i32 @pkey_ctx_is_pss(%struct.TYPE_7__*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @rsa_pss_restricted(%struct.TYPE_6__*) #1

declare dso_local i32 @EVP_MD_size(i8*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_free(i8*) #1

declare dso_local i32 @EVP_MD_type(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
