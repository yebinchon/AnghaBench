; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_rsa.c_rsa_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_rsa.c_rsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@rsa_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Only private keys can be checked\0A\00", align 1
@FORMAT_PEMRSA = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_ASN1RSA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"RSA key ok\0A\00", align 1
@ERR_LIB_RSA = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"RSA key error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"writing RSA key\0A\00", align 1
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %36, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 2, i32* %27, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @rsa_options, align 4
  %40 = call i8* @opt_init(i32 %37, i8** %38, i32 %39)
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %96, %2
  %42 = call i32 (...) @opt_next()
  store i32 %42, i32* %28, align 4
  %43 = icmp ne i32 %42, 146
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  %45 = load i32, i32* %28, align 4
  switch i32 %45, label %96 [
    i32 146, label %46
    i32 145, label %46
    i32 144, label %51
    i32 142, label %54
    i32 143, label %61
    i32 138, label %63
    i32 139, label %70
    i32 137, label %72
    i32 136, label %74
    i32 147, label %76
    i32 135, label %79
    i32 134, label %80
    i32 130, label %81
    i32 129, label %82
    i32 132, label %83
    i32 131, label %83
    i32 133, label %83
    i32 140, label %86
    i32 128, label %87
    i32 141, label %88
    i32 149, label %89
    i32 148, label %90
  ]

46:                                               ; preds = %44, %44
  br label %47

47:                                               ; preds = %101, %94, %68, %59, %46
  %48 = load i32*, i32** @bio_err, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %412

51:                                               ; preds = %44
  %52 = load i32, i32* @rsa_options, align 4
  %53 = call i32 @opt_help(i32 %52)
  store i32 0, i32* %26, align 4
  br label %412

54:                                               ; preds = %44
  %55 = call i8* (...) @opt_arg()
  %56 = load i32, i32* @OPT_FMT_ANY, align 4
  %57 = call i32 @opt_format(i8* %55, i32 %56, i32* %18)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %47

60:                                               ; preds = %54
  br label %96

61:                                               ; preds = %44
  %62 = call i8* (...) @opt_arg()
  store i8* %62, i8** %9, align 8
  br label %96

63:                                               ; preds = %44
  %64 = call i8* (...) @opt_arg()
  %65 = load i32, i32* @OPT_FMT_ANY, align 4
  %66 = call i32 @opt_format(i8* %64, i32 %65, i32* %19)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %47

69:                                               ; preds = %63
  br label %96

70:                                               ; preds = %44
  %71 = call i8* (...) @opt_arg()
  store i8* %71, i8** %10, align 8
  br label %96

72:                                               ; preds = %44
  %73 = call i8* (...) @opt_arg()
  store i8* %73, i8** %14, align 8
  br label %96

74:                                               ; preds = %44
  %75 = call i8* (...) @opt_arg()
  store i8* %75, i8** %15, align 8
  br label %96

76:                                               ; preds = %44
  %77 = call i8* (...) @opt_arg()
  %78 = call i32* @setup_engine(i8* %77, i32 0)
  store i32* %78, i32** %5, align 8
  br label %96

79:                                               ; preds = %44
  store i32 1, i32* %24, align 4
  br label %96

80:                                               ; preds = %44
  store i32 1, i32* %25, align 4
  br label %96

81:                                               ; preds = %44
  store i32 2, i32* %24, align 4
  br label %96

82:                                               ; preds = %44
  store i32 2, i32* %25, align 4
  br label %96

83:                                               ; preds = %44, %44, %44
  %84 = load i32, i32* %28, align 4
  %85 = sub nsw i32 %84, 133
  store i32 %85, i32* %27, align 4
  br label %96

86:                                               ; preds = %44
  store i32 1, i32* %22, align 4
  br label %96

87:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %96

88:                                               ; preds = %44
  store i32 1, i32* %23, align 4
  br label %96

89:                                               ; preds = %44
  store i32 1, i32* %21, align 4
  br label %96

90:                                               ; preds = %44
  %91 = call i32 (...) @opt_unknown()
  %92 = call i32 @opt_cipher(i32 %91, i32** %8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %47

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %44, %95, %89, %88, %87, %86, %83, %82, %81, %80, %79, %76, %74, %72, %70, %69, %61, %60
  br label %41

97:                                               ; preds = %41
  %98 = call i32 (...) @opt_num_rest()
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %47

102:                                              ; preds = %97
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %24, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %25, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i1 [ true, %105 ], [ %116, %115 ]
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  store i32 %120, i32* %17, align 4
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @app_passwd(i8* %121, i8* %122, i8** %12, i8** %13)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load i32*, i32** @bio_err, align 8
  %127 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %412

128:                                              ; preds = %117
  %129 = load i32, i32* %21, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** @bio_err, align 8
  %136 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %412

137:                                              ; preds = %131, %128
  %138 = load i32, i32* %24, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  store i32 -1, i32* %30, align 4
  %141 = load i32, i32* %24, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @FORMAT_PEM, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @FORMAT_PEMRSA, align 4
  store i32 %148, i32* %30, align 4
  br label %156

149:                                              ; preds = %143
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @FORMAT_ASN1, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @FORMAT_ASN1RSA, align 4
  store i32 %154, i32* %30, align 4
  br label %155

155:                                              ; preds = %153, %149
  br label %156

156:                                              ; preds = %155, %147
  br label %159

157:                                              ; preds = %140
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %30, align 4
  br label %159

159:                                              ; preds = %157, %156
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %30, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32* @load_pubkey(i8* %160, i32 %161, i32 1, i8* %162, i32* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %164, i32** %29, align 8
  br label %171

165:                                              ; preds = %137
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %18, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* @load_key(i8* %166, i32 %167, i32 1, i8* %168, i32* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %170, i32** %29, align 8
  br label %171

171:                                              ; preds = %165, %159
  %172 = load i32*, i32** %29, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %29, align 8
  %176 = call i32* @EVP_PKEY_get1_RSA(i32* %175)
  store i32* %176, i32** %7, align 8
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32*, i32** %29, align 8
  %179 = call i32 @EVP_PKEY_free(i32* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32*, i32** @bio_err, align 8
  %184 = call i32 @ERR_print_errors(i32* %183)
  br label %412

185:                                              ; preds = %177
  %186 = load i8*, i8** %10, align 8
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %17, align 4
  %189 = call i32* @bio_open_owner(i8* %186, i32 %187, i32 %188)
  store i32* %189, i32** %6, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %412

193:                                              ; preds = %185
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i1 [ true, %196 ], [ %201, %199 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i32*, i32** %6, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @RSA_print(i32* %206, i32* %207, i32 0)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %202
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @perror(i8* %211)
  %213 = load i32*, i32** @bio_err, align 8
  %214 = call i32 @ERR_print_errors(i32* %213)
  br label %412

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %23, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @RSA_get0_key(i32* %220, i32** %31, i32* null, i32* null)
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %31, align 8
  %226 = call i32 @BN_print(i32* %224, i32* %225)
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %229

229:                                              ; preds = %219, %216
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %275

232:                                              ; preds = %229
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @RSA_check_key_ex(i32* %233, i32* null)
  store i32 %234, i32* %32, align 4
  %235 = load i32, i32* %32, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %274

240:                                              ; preds = %232
  %241 = load i32, i32* %32, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %259, %243
  %245 = call i64 (...) @ERR_peek_error()
  store i64 %245, i64* %33, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load i64, i64* %33, align 8
  %249 = call i64 @ERR_GET_LIB(i64 %248)
  %250 = load i64, i64* @ERR_LIB_RSA, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load i64, i64* %33, align 8
  %254 = call i64 @ERR_GET_REASON(i64 %253)
  %255 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %256 = icmp ne i64 %254, %255
  br label %257

257:                                              ; preds = %252, %247, %244
  %258 = phi i1 [ false, %247 ], [ false, %244 ], [ %256, %252 ]
  br i1 %258, label %259, label %265

259:                                              ; preds = %257
  %260 = load i32*, i32** %6, align 8
  %261 = load i64, i64* %33, align 8
  %262 = call i32 @ERR_reason_error_string(i64 %261)
  %263 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %260, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %262)
  %264 = call i32 (...) @ERR_get_error()
  br label %244

265:                                              ; preds = %257
  br label %273

266:                                              ; preds = %240
  %267 = load i32, i32* %32, align 4
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32*, i32** @bio_err, align 8
  %271 = call i32 @ERR_print_errors(i32* %270)
  br label %412

272:                                              ; preds = %266
  br label %273

273:                                              ; preds = %272, %265
  br label %274

274:                                              ; preds = %273, %237
  br label %275

275:                                              ; preds = %274, %229
  %276 = load i32, i32* %22, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 0, i32* %26, align 4
  br label %412

279:                                              ; preds = %275
  %280 = load i32*, i32** @bio_err, align 8
  %281 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @FORMAT_ASN1, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %310

285:                                              ; preds = %279
  %286 = load i32, i32* %25, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %24, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %25, align 4
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32*, i32** %6, align 8
  %296 = load i32*, i32** %7, align 8
  %297 = call i32 @i2d_RSAPublicKey_bio(i32* %295, i32* %296)
  store i32 %297, i32* %16, align 4
  br label %302

298:                                              ; preds = %291
  %299 = load i32*, i32** %6, align 8
  %300 = load i32*, i32** %7, align 8
  %301 = call i32 @i2d_RSA_PUBKEY_bio(i32* %299, i32* %300)
  store i32 %301, i32* %16, align 4
  br label %302

302:                                              ; preds = %298, %294
  br label %309

303:                                              ; preds = %288
  %304 = load i32, i32* %17, align 4
  %305 = call i32 @assert(i32 %304)
  %306 = load i32*, i32** %6, align 8
  %307 = load i32*, i32** %7, align 8
  %308 = call i32 @i2d_RSAPrivateKey_bio(i32* %306, i32* %307)
  store i32 %308, i32* %16, align 4
  br label %309

309:                                              ; preds = %303, %302
  br label %402

310:                                              ; preds = %279
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* @FORMAT_PEM, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %341

314:                                              ; preds = %310
  %315 = load i32, i32* %25, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* %24, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %317, %314
  %321 = load i32, i32* %25, align 4
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i32*, i32** %6, align 8
  %325 = load i32*, i32** %7, align 8
  %326 = call i32 @PEM_write_bio_RSAPublicKey(i32* %324, i32* %325)
  store i32 %326, i32* %16, align 4
  br label %331

327:                                              ; preds = %320
  %328 = load i32*, i32** %6, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = call i32 @PEM_write_bio_RSA_PUBKEY(i32* %328, i32* %329)
  store i32 %330, i32* %16, align 4
  br label %331

331:                                              ; preds = %327, %323
  br label %340

332:                                              ; preds = %317
  %333 = load i32, i32* %17, align 4
  %334 = call i32 @assert(i32 %333)
  %335 = load i32*, i32** %6, align 8
  %336 = load i32*, i32** %7, align 8
  %337 = load i32*, i32** %8, align 8
  %338 = load i8*, i8** %13, align 8
  %339 = call i32 @PEM_write_bio_RSAPrivateKey(i32* %335, i32* %336, i32* %337, i32* null, i32 0, i32* null, i8* %338)
  store i32 %339, i32* %16, align 4
  br label %340

340:                                              ; preds = %332, %331
  br label %401

341:                                              ; preds = %310
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* @FORMAT_MSBLOB, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %349, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* @FORMAT_PVK, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %397

349:                                              ; preds = %345, %341
  %350 = call i32* (...) @EVP_PKEY_new()
  store i32* %350, i32** %34, align 8
  %351 = load i32*, i32** %34, align 8
  %352 = icmp eq i32* %351, null
  br i1 %352, label %353, label %354

353:                                              ; preds = %349
  br label %412

354:                                              ; preds = %349
  %355 = load i32*, i32** %34, align 8
  %356 = load i32*, i32** %7, align 8
  %357 = call i32 @EVP_PKEY_set1_RSA(i32* %355, i32* %356)
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* @FORMAT_PVK, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %377

361:                                              ; preds = %354
  %362 = load i32, i32* %24, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = load i32*, i32** @bio_err, align 8
  %366 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %365, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %367 = load i32*, i32** %34, align 8
  %368 = call i32 @EVP_PKEY_free(i32* %367)
  br label %412

369:                                              ; preds = %361
  %370 = load i32, i32* %17, align 4
  %371 = call i32 @assert(i32 %370)
  %372 = load i32*, i32** %6, align 8
  %373 = load i32*, i32** %34, align 8
  %374 = load i32, i32* %27, align 4
  %375 = load i8*, i8** %13, align 8
  %376 = call i32 @i2b_PVK_bio(i32* %372, i32* %373, i32 %374, i32 0, i8* %375)
  store i32 %376, i32* %16, align 4
  br label %394

377:                                              ; preds = %354
  %378 = load i32, i32* %24, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* %25, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %380, %377
  %384 = load i32*, i32** %6, align 8
  %385 = load i32*, i32** %34, align 8
  %386 = call i32 @i2b_PublicKey_bio(i32* %384, i32* %385)
  store i32 %386, i32* %16, align 4
  br label %393

387:                                              ; preds = %380
  %388 = load i32, i32* %17, align 4
  %389 = call i32 @assert(i32 %388)
  %390 = load i32*, i32** %6, align 8
  %391 = load i32*, i32** %34, align 8
  %392 = call i32 @i2b_PrivateKey_bio(i32* %390, i32* %391)
  store i32 %392, i32* %16, align 4
  br label %393

393:                                              ; preds = %387, %383
  br label %394

394:                                              ; preds = %393, %369
  %395 = load i32*, i32** %34, align 8
  %396 = call i32 @EVP_PKEY_free(i32* %395)
  br label %400

397:                                              ; preds = %345
  %398 = load i32*, i32** @bio_err, align 8
  %399 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %398, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %412

400:                                              ; preds = %394
  br label %401

401:                                              ; preds = %400, %340
  br label %402

402:                                              ; preds = %401, %309
  %403 = load i32, i32* %16, align 4
  %404 = icmp sle i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = load i32*, i32** @bio_err, align 8
  %407 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %406, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %408 = load i32*, i32** @bio_err, align 8
  %409 = call i32 @ERR_print_errors(i32* %408)
  br label %411

410:                                              ; preds = %402
  store i32 0, i32* %26, align 4
  br label %411

411:                                              ; preds = %410, %405
  br label %412

412:                                              ; preds = %411, %397, %364, %353, %278, %269, %210, %192, %182, %134, %125, %51, %47
  %413 = load i32*, i32** %5, align 8
  %414 = call i32 @release_engine(i32* %413)
  %415 = load i32*, i32** %6, align 8
  %416 = call i32 @BIO_free_all(i32* %415)
  %417 = load i32*, i32** %7, align 8
  %418 = call i32 @RSA_free(i32* %417)
  %419 = load i8*, i8** %12, align 8
  %420 = call i32 @OPENSSL_free(i8* %419)
  %421 = load i8*, i8** %13, align 8
  %422 = call i32 @OPENSSL_free(i8* %421)
  %423 = load i32, i32* %26, align 4
  ret i32 %423
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i8*, i8**, i8**) #1

declare dso_local i32* @load_pubkey(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_get1_RSA(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RSA_print(i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @RSA_get0_key(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @BN_print(i32*, i32*) #1

declare dso_local i32 @RSA_check_key_ex(i32*, i32*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ERR_reason_error_string(i64) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @i2d_RSAPublicKey_bio(i32*, i32*) #1

declare dso_local i32 @i2d_RSA_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @i2d_RSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSAPublicKey(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSA_PUBKEY(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @i2b_PVK_bio(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @i2b_PublicKey_bio(i32*, i32*) #1

declare dso_local i32 @i2b_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
