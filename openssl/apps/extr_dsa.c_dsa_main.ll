; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_dsa.c_dsa_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_dsa.c_dsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@dsa_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"read DSA key\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"unable to load Key\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Public Key=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"writing DSA key\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"unable to write private key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_main(i32 %0, i8** %1) #0 {
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
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
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
  %31 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 2, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* @dsa_options, align 4
  %36 = call i8* @opt_init(i32 %33, i8** %34, i32 %35)
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %89, %2
  %38 = call i32 (...) @opt_next()
  store i32 %38, i32* %16, align 4
  %39 = icmp ne i32 %38, 144
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  switch i32 %41, label %89 [
    i32 144, label %42
    i32 143, label %42
    i32 142, label %47
    i32 140, label %50
    i32 141, label %57
    i32 136, label %59
    i32 137, label %66
    i32 145, label %68
    i32 135, label %71
    i32 134, label %73
    i32 130, label %75
    i32 129, label %75
    i32 131, label %75
    i32 138, label %78
    i32 128, label %79
    i32 139, label %80
    i32 133, label %81
    i32 132, label %82
    i32 146, label %83
  ]

42:                                               ; preds = %40, %40
  br label %43

43:                                               ; preds = %94, %64, %55, %42
  store i32 0, i32* %25, align 4
  %44 = load i32*, i32** @bio_err, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %316

47:                                               ; preds = %40
  %48 = load i32, i32* @dsa_options, align 4
  %49 = call i32 @opt_help(i32 %48)
  store i32 0, i32* %25, align 4
  br label %316

50:                                               ; preds = %40
  %51 = call i8* (...) @opt_arg()
  %52 = load i32, i32* @OPT_FMT_ANY, align 4
  %53 = call i32 @opt_format(i8* %51, i32 %52, i32* %17)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %43

56:                                               ; preds = %50
  br label %89

57:                                               ; preds = %40
  %58 = call i8* (...) @opt_arg()
  store i8* %58, i8** %9, align 8
  br label %89

59:                                               ; preds = %40
  %60 = call i8* (...) @opt_arg()
  %61 = load i32, i32* @OPT_FMT_ANY, align 4
  %62 = call i32 @opt_format(i8* %60, i32 %61, i32* %18)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %43

65:                                               ; preds = %59
  br label %89

66:                                               ; preds = %40
  %67 = call i8* (...) @opt_arg()
  store i8* %67, i8** %10, align 8
  br label %89

68:                                               ; preds = %40
  %69 = call i8* (...) @opt_arg()
  %70 = call i32* @setup_engine(i8* %69, i32 0)
  store i32* %70, i32** %7, align 8
  br label %89

71:                                               ; preds = %40
  %72 = call i8* (...) @opt_arg()
  store i8* %72, i8** %14, align 8
  br label %89

73:                                               ; preds = %40
  %74 = call i8* (...) @opt_arg()
  store i8* %74, i8** %15, align 8
  br label %89

75:                                               ; preds = %40, %40, %40
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 131
  store i32 %77, i32* %26, align 4
  br label %89

78:                                               ; preds = %40
  store i32 1, i32* %20, align 4
  br label %89

79:                                               ; preds = %40
  store i32 1, i32* %19, align 4
  br label %89

80:                                               ; preds = %40
  store i32 1, i32* %22, align 4
  br label %89

81:                                               ; preds = %40
  store i32 1, i32* %23, align 4
  br label %89

82:                                               ; preds = %40
  store i32 1, i32* %24, align 4
  br label %89

83:                                               ; preds = %40
  %84 = call i32 (...) @opt_unknown()
  %85 = call i32 @opt_cipher(i32 %84, i32** %8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %316

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %40, %88, %82, %81, %80, %79, %78, %75, %73, %71, %68, %66, %65, %57, %56
  br label %37

90:                                               ; preds = %37
  %91 = call i32 (...) @opt_num_rest()
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %43

95:                                               ; preds = %90
  %96 = load i32, i32* %23, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %24, align 4
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i1 [ true, %95 ], [ %100, %98 ]
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 1
  store i32 %104, i32* %27, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i32 1, i32* %27, align 4
  br label %111

111:                                              ; preds = %110, %107, %101
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 @app_passwd(i8* %112, i8* %113, i8** %12, i8** %13)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** @bio_err, align 8
  %118 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %316

119:                                              ; preds = %111
  %120 = load i32*, i32** @bio_err, align 8
  %121 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* %23, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32* @load_pubkey(i8* %125, i32 %126, i32 1, i8* %127, i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %129, i32** %28, align 8
  br label %136

130:                                              ; preds = %119
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32* @load_key(i8* %131, i32 %132, i32 1, i8* %133, i32* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %135, i32** %28, align 8
  br label %136

136:                                              ; preds = %130, %124
  %137 = load i32*, i32** %28, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32*, i32** %28, align 8
  %141 = call i32* @EVP_PKEY_get1_DSA(i32* %140)
  store i32* %141, i32** %6, align 8
  %142 = load i32*, i32** %28, align 8
  %143 = call i32 @EVP_PKEY_free(i32* %142)
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32*, i32** %6, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32*, i32** @bio_err, align 8
  %149 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i32*, i32** @bio_err, align 8
  %151 = call i32 @ERR_print_errors(i32* %150)
  br label %316

152:                                              ; preds = %144
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %27, align 4
  %156 = call i32* @bio_open_owner(i8* %153, i32 %154, i32 %155)
  store i32* %156, i32** %5, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %316

160:                                              ; preds = %152
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load i32, i32* %23, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %27, align 4
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi i1 [ true, %163 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @DSA_print(i32* %173, i32* %174, i32 0)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %169
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @perror(i8* %178)
  %180 = load i32*, i32** @bio_err, align 8
  %181 = call i32 @ERR_print_errors(i32* %180)
  br label %316

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %160
  %184 = load i32, i32* %22, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  store i32* null, i32** %29, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @DSA_get0_key(i32* %187, i32** %29, i32* null)
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %191 = load i32*, i32** %5, align 8
  %192 = load i32*, i32** %29, align 8
  %193 = call i32 @BN_print(i32* %191, i32* %192)
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %196

196:                                              ; preds = %186, %183
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %25, align 4
  br label %316

200:                                              ; preds = %196
  %201 = load i32*, i32** @bio_err, align 8
  %202 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* @FORMAT_ASN1, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load i32, i32* %23, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %24, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209, %206
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @i2d_DSA_PUBKEY_bio(i32* %213, i32* %214)
  store i32 %215, i32* %21, align 4
  br label %222

216:                                              ; preds = %209
  %217 = load i32, i32* %27, align 4
  %218 = call i32 @assert(i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @i2d_DSAPrivateKey_bio(i32* %219, i32* %220)
  store i32 %221, i32* %21, align 4
  br label %222

222:                                              ; preds = %216, %212
  br label %307

223:                                              ; preds = %200
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* @FORMAT_PEM, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %223
  %228 = load i32, i32* %23, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %24, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230, %227
  %234 = load i32*, i32** %5, align 8
  %235 = load i32*, i32** %6, align 8
  %236 = call i32 @PEM_write_bio_DSA_PUBKEY(i32* %234, i32* %235)
  store i32 %236, i32* %21, align 4
  br label %245

237:                                              ; preds = %230
  %238 = load i32, i32* %27, align 4
  %239 = call i32 @assert(i32 %238)
  %240 = load i32*, i32** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %240, i32* %241, i32* %242, i32* null, i32 0, i32* null, i8* %243)
  store i32 %244, i32* %21, align 4
  br label %245

245:                                              ; preds = %237, %233
  br label %306

246:                                              ; preds = %223
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* @FORMAT_MSBLOB, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* @FORMAT_PVK, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %302

254:                                              ; preds = %250, %246
  %255 = call i32* (...) @EVP_PKEY_new()
  store i32* %255, i32** %30, align 8
  %256 = load i32*, i32** %30, align 8
  %257 = icmp eq i32* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %316

259:                                              ; preds = %254
  %260 = load i32*, i32** %30, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = call i32 @EVP_PKEY_set1_DSA(i32* %260, i32* %261)
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* @FORMAT_PVK, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %282

266:                                              ; preds = %259
  %267 = load i32, i32* %23, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32*, i32** @bio_err, align 8
  %271 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %272 = load i32*, i32** %30, align 8
  %273 = call i32 @EVP_PKEY_free(i32* %272)
  br label %316

274:                                              ; preds = %266
  %275 = load i32, i32* %27, align 4
  %276 = call i32 @assert(i32 %275)
  %277 = load i32*, i32** %5, align 8
  %278 = load i32*, i32** %30, align 8
  %279 = load i32, i32* %26, align 4
  %280 = load i8*, i8** %13, align 8
  %281 = call i32 @i2b_PVK_bio(i32* %277, i32* %278, i32 %279, i32 0, i8* %280)
  store i32 %281, i32* %21, align 4
  br label %299

282:                                              ; preds = %259
  %283 = load i32, i32* %23, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %24, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285, %282
  %289 = load i32*, i32** %5, align 8
  %290 = load i32*, i32** %30, align 8
  %291 = call i32 @i2b_PublicKey_bio(i32* %289, i32* %290)
  store i32 %291, i32* %21, align 4
  br label %298

292:                                              ; preds = %285
  %293 = load i32, i32* %27, align 4
  %294 = call i32 @assert(i32 %293)
  %295 = load i32*, i32** %5, align 8
  %296 = load i32*, i32** %30, align 8
  %297 = call i32 @i2b_PrivateKey_bio(i32* %295, i32* %296)
  store i32 %297, i32* %21, align 4
  br label %298

298:                                              ; preds = %292, %288
  br label %299

299:                                              ; preds = %298, %274
  %300 = load i32*, i32** %30, align 8
  %301 = call i32 @EVP_PKEY_free(i32* %300)
  br label %305

302:                                              ; preds = %250
  %303 = load i32*, i32** @bio_err, align 8
  %304 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %303, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %316

305:                                              ; preds = %299
  br label %306

306:                                              ; preds = %305, %245
  br label %307

307:                                              ; preds = %306, %222
  %308 = load i32, i32* %21, align 4
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32*, i32** @bio_err, align 8
  %312 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %313 = load i32*, i32** @bio_err, align 8
  %314 = call i32 @ERR_print_errors(i32* %313)
  br label %316

315:                                              ; preds = %307
  store i32 0, i32* %25, align 4
  br label %316

316:                                              ; preds = %315, %310, %302, %269, %258, %199, %177, %159, %147, %116, %87, %47, %43
  %317 = load i32*, i32** %5, align 8
  %318 = call i32 @BIO_free_all(i32* %317)
  %319 = load i32*, i32** %6, align 8
  %320 = call i32 @DSA_free(i32* %319)
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @release_engine(i32* %321)
  %323 = load i8*, i8** %12, align 8
  %324 = call i32 @OPENSSL_free(i8* %323)
  %325 = load i8*, i8** %13, align 8
  %326 = call i32 @OPENSSL_free(i8* %325)
  %327 = load i32, i32* %25, align 4
  ret i32 %327
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

declare dso_local i32* @EVP_PKEY_get1_DSA(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DSA_print(i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @DSA_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @BN_print(i32*, i32*) #1

declare dso_local i32 @i2d_DSA_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @i2d_DSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSA_PUBKEY(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_DSA(i32*, i32*) #1

declare dso_local i32 @i2b_PVK_bio(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @i2b_PublicKey_bio(i32*, i32*) #1

declare dso_local i32 @i2b_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
