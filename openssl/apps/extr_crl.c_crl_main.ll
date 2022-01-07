; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_crl.c_crl_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_crl.c_crl_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@crl_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error initialising X509 store\0A\00", align 1
@X509_LU_X509 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error getting CRL issuer certificate\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error getting CRL issuer public key\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"verify failure\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"verify OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing CRL signing key\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"CRL signing key\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error creating delta CRL\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"issuer=\00", align 1
@NID_crl_number = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"crlNumber=\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lastUpdate=\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"nextUpdate=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%s Fingerprint=\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%02X%c\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"unable to write CRL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crl_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i64, align 8
  %50 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %51 = call i32* (...) @EVP_sha1()
  store i32* %51, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %52 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %52, i32* %27, align 4
  %53 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %53, i32* %28, align 4
  %54 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %54, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %41, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* @crl_options, align 4
  %58 = call i8* @opt_init(i32 %55, i8** %56, i32 %57)
  store i8* %58, i8** %20, align 8
  br label %59

59:                                               ; preds = %149, %2
  %60 = call i32 (...) @opt_next()
  store i32 %60, i32* %21, align 4
  %61 = icmp ne i32 %60, 151
  br i1 %61, label %62, label %150

62:                                               ; preds = %59
  %63 = load i32, i32* %21, align 4
  switch i32 %63, label %149 [
    i32 151, label %64
    i32 150, label %64
    i32 145, label %69
    i32 143, label %72
    i32 144, label %79
    i32 130, label %81
    i32 131, label %88
    i32 140, label %90
    i32 141, label %97
    i32 148, label %99
    i32 154, label %101
    i32 155, label %103
    i32 153, label %105
    i32 134, label %107
    i32 135, label %108
    i32 133, label %109
    i32 146, label %110
    i32 128, label %113
    i32 129, label %114
    i32 147, label %115
    i32 142, label %118
    i32 139, label %121
    i32 136, label %124
    i32 132, label %127
    i32 149, label %130
    i32 152, label %133
    i32 156, label %136
    i32 137, label %137
    i32 138, label %143
  ]

64:                                               ; preds = %62, %62
  br label %65

65:                                               ; preds = %154, %147, %141, %95, %86, %77, %64
  %66 = load i32, i32* @bio_err, align 4
  %67 = load i8*, i8** %20, align 8
  %68 = call i32 (i32, i8*, ...) @BIO_printf(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %476

69:                                               ; preds = %62
  %70 = load i32, i32* @crl_options, align 4
  %71 = call i32 @opt_help(i32 %70)
  store i32 0, i32* %30, align 4
  br label %476

72:                                               ; preds = %62
  %73 = call i8* (...) @opt_arg()
  %74 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %75 = call i32 @opt_format(i8* %73, i32 %74, i32* %27)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %65

78:                                               ; preds = %72
  br label %149

79:                                               ; preds = %62
  %80 = call i8* (...) @opt_arg()
  store i8* %80, i8** %13, align 8
  br label %149

81:                                               ; preds = %62
  %82 = call i8* (...) @opt_arg()
  %83 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %84 = call i32 @opt_format(i8* %82, i32 %83, i32* %28)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %65

87:                                               ; preds = %81
  br label %149

88:                                               ; preds = %62
  %89 = call i8* (...) @opt_arg()
  store i8* %89, i8** %14, align 8
  br label %149

90:                                               ; preds = %62
  %91 = call i8* (...) @opt_arg()
  %92 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %93 = call i32 @opt_format(i8* %91, i32 %92, i32* %29)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %65

96:                                               ; preds = %90
  br label %149

97:                                               ; preds = %62
  %98 = call i8* (...) @opt_arg()
  store i8* %98, i8** %16, align 8
  br label %149

99:                                               ; preds = %62
  %100 = call i8* (...) @opt_arg()
  store i8* %100, i8** %15, align 8
  br label %149

101:                                              ; preds = %62
  %102 = call i8* (...) @opt_arg()
  store i8* %102, i8** %18, align 8
  store i32 1, i32* %36, align 4
  br label %149

103:                                              ; preds = %62
  %104 = call i8* (...) @opt_arg()
  store i8* %104, i8** %17, align 8
  store i32 1, i32* %36, align 4
  br label %149

105:                                              ; preds = %62
  %106 = call i8* (...) @opt_arg()
  store i8* %106, i8** %19, align 8
  store i32 1, i32* %36, align 4
  br label %149

107:                                              ; preds = %62
  store i32 1, i32* %38, align 4
  br label %149

108:                                              ; preds = %62
  store i32 1, i32* %37, align 4
  br label %149

109:                                              ; preds = %62
  store i32 1, i32* %39, align 4
  br label %149

110:                                              ; preds = %62
  %111 = load i32, i32* %31, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %31, align 4
  store i32 %112, i32* %41, align 4
  br label %149

113:                                              ; preds = %62
  store i32 1, i32* %36, align 4
  br label %149

114:                                              ; preds = %62
  store i32 1, i32* %35, align 4
  br label %149

115:                                              ; preds = %62
  %116 = load i32, i32* %31, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %31, align 4
  store i32 %117, i32* %22, align 4
  br label %149

118:                                              ; preds = %62
  %119 = load i32, i32* %31, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %31, align 4
  store i32 %120, i32* %23, align 4
  br label %149

121:                                              ; preds = %62
  %122 = load i32, i32* %31, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %31, align 4
  store i32 %123, i32* %24, align 4
  br label %149

124:                                              ; preds = %62
  %125 = load i32, i32* %31, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %31, align 4
  store i32 %126, i32* %25, align 4
  br label %149

127:                                              ; preds = %62
  %128 = load i32, i32* %31, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %31, align 4
  store i32 %129, i32* %26, align 4
  br label %149

130:                                              ; preds = %62
  %131 = load i32, i32* %31, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %31, align 4
  store i32 %132, i32* %33, align 4
  br label %149

133:                                              ; preds = %62
  %134 = load i32, i32* %31, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %31, align 4
  store i32 %135, i32* %34, align 4
  br label %149

136:                                              ; preds = %62
  store i32 1, i32* %32, align 4
  br label %149

137:                                              ; preds = %62
  %138 = call i8* (...) @opt_arg()
  %139 = call i32 @set_nameopt(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %65

142:                                              ; preds = %137
  br label %149

143:                                              ; preds = %62
  %144 = call i32 (...) @opt_unknown()
  %145 = call i32 @opt_md(i32 %144, i32** %12)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  br label %65

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %62, %142, %136, %133, %130, %127, %124, %121, %118, %115, %114, %113, %110, %109, %108, %107, %105, %103, %101, %99, %97, %96, %88, %87, %79, %78
  br label %59

150:                                              ; preds = %59
  %151 = call i32 (...) @opt_num_rest()
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %65

155:                                              ; preds = %150
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %27, align 4
  %158 = call i32* @load_crl(i8* %156, i32 %157)
  store i32* %158, i32** %5, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %476

162:                                              ; preds = %155
  %163 = load i32, i32* %36, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %235

165:                                              ; preds = %162
  %166 = load i8*, i8** %17, align 8
  %167 = load i32, i32* %37, align 4
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* %38, align 4
  %170 = load i8*, i8** %19, align 8
  %171 = load i32, i32* %39, align 4
  %172 = call i32* @setup_verify(i8* %166, i32 %167, i8* %168, i32 %169, i8* %170, i32 %171)
  store i32* %172, i32** %7, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %476

175:                                              ; preds = %165
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 (...) @X509_LOOKUP_file()
  %178 = call i32* @X509_STORE_add_lookup(i32* %176, i32 %177)
  store i32* %178, i32** %9, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %476

182:                                              ; preds = %175
  %183 = call i32* (...) @X509_STORE_CTX_new()
  store i32* %183, i32** %8, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @X509_STORE_CTX_init(i32* %187, i32* %188, i32* null, i32* null)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %186, %182
  %192 = load i32, i32* @bio_err, align 4
  %193 = call i32 (i32, i8*, ...) @BIO_printf(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %476

194:                                              ; preds = %186
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @X509_LU_X509, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @X509_CRL_get_issuer(i32* %197)
  %199 = call i32* @X509_STORE_CTX_get_obj_by_subject(i32* %195, i32 %196, i32 %198)
  store i32* %199, i32** %10, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32, i32* @bio_err, align 4
  %204 = call i32 (i32, i8*, ...) @BIO_printf(i32 %203, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %476

205:                                              ; preds = %194
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @X509_OBJECT_get0_X509(i32* %206)
  %208 = call i32* @X509_get_pubkey(i32 %207)
  store i32* %208, i32** %11, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @X509_OBJECT_free(i32* %209)
  %211 = load i32*, i32** %11, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* @bio_err, align 4
  %215 = call i32 (i32, i8*, ...) @BIO_printf(i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %476

216:                                              ; preds = %205
  %217 = load i32*, i32** %5, align 8
  %218 = load i32*, i32** %11, align 8
  %219 = call i32 @X509_CRL_verify(i32* %217, i32* %218)
  store i32 %219, i32* %40, align 4
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 @EVP_PKEY_free(i32* %220)
  %222 = load i32, i32* %40, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %476

225:                                              ; preds = %216
  %226 = load i32, i32* %40, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* @bio_err, align 4
  %230 = call i32 (i32, i8*, ...) @BIO_printf(i32 %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %234

231:                                              ; preds = %225
  %232 = load i32, i32* @bio_err, align 4
  %233 = call i32 (i32, i8*, ...) @BIO_printf(i32 %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %162
  %236 = load i8*, i8** %15, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %280

238:                                              ; preds = %235
  %239 = load i8*, i8** %16, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @bio_err, align 4
  %243 = call i32 @BIO_puts(i32 %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %476

244:                                              ; preds = %238
  %245 = load i8*, i8** %15, align 8
  %246 = load i32, i32* %27, align 4
  %247 = call i32* @load_crl(i8* %245, i32 %246)
  store i32* %247, i32** %42, align 8
  %248 = load i32*, i32** %42, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %244
  br label %476

251:                                              ; preds = %244
  %252 = load i8*, i8** %16, align 8
  %253 = load i32, i32* %29, align 4
  %254 = call i32* @load_key(i8* %252, i32 %253, i32 0, i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32* %254, i32** %11, align 8
  %255 = load i32*, i32** %11, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load i32*, i32** %42, align 8
  %259 = call i32 @X509_CRL_free(i32* %258)
  br label %476

260:                                              ; preds = %251
  %261 = load i32*, i32** %5, align 8
  %262 = load i32*, i32** %42, align 8
  %263 = load i32*, i32** %11, align 8
  %264 = load i32*, i32** %12, align 8
  %265 = call i32* @X509_CRL_diff(i32* %261, i32* %262, i32* %263, i32* %264, i32 0)
  store i32* %265, i32** %43, align 8
  %266 = load i32*, i32** %42, align 8
  %267 = call i32 @X509_CRL_free(i32* %266)
  %268 = load i32*, i32** %11, align 8
  %269 = call i32 @EVP_PKEY_free(i32* %268)
  %270 = load i32*, i32** %43, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %260
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @X509_CRL_free(i32* %273)
  %275 = load i32*, i32** %43, align 8
  store i32* %275, i32** %5, align 8
  br label %279

276:                                              ; preds = %260
  %277 = load i32, i32* @bio_err, align 4
  %278 = call i32 @BIO_puts(i32 %277, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %476

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %235
  %281 = load i32, i32* %32, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load i32*, i32** %5, align 8
  %285 = call i32 @X509_CRL_get0_signature(i32* %284, i32** %44, i32* null)
  %286 = load i32*, i32** %44, align 8
  %287 = call i32 @corrupt_signature(i32* %286)
  br label %288

288:                                              ; preds = %283, %280
  %289 = load i32, i32* %31, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %437

291:                                              ; preds = %288
  store i32 1, i32* %40, align 4
  br label %292

292:                                              ; preds = %433, %291
  %293 = load i32, i32* %40, align 4
  %294 = load i32, i32* %31, align 4
  %295 = icmp sle i32 %293, %294
  br i1 %295, label %296, label %436

296:                                              ; preds = %292
  %297 = load i32, i32* %23, align 4
  %298 = load i32, i32* %40, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = load i32, i32* @bio_out, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @X509_CRL_get_issuer(i32* %302)
  %304 = call i32 (...) @get_nameopt()
  %305 = call i32 @print_name(i32 %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %296
  %307 = load i32, i32* %34, align 4
  %308 = load i32, i32* %40, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %306
  %311 = load i32*, i32** %5, align 8
  %312 = load i32, i32* @NID_crl_number, align 4
  %313 = call i32* @X509_CRL_get_ext_d2i(i32* %311, i32 %312, i32* null, i32* null)
  store i32* %313, i32** %45, align 8
  %314 = load i32, i32* @bio_out, align 4
  %315 = call i32 (i32, i8*, ...) @BIO_printf(i32 %314, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %316 = load i32*, i32** %45, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %324

318:                                              ; preds = %310
  %319 = load i32, i32* @bio_out, align 4
  %320 = load i32*, i32** %45, align 8
  %321 = call i32 @i2a_ASN1_INTEGER(i32 %319, i32* %320)
  %322 = load i32*, i32** %45, align 8
  %323 = call i32 @ASN1_INTEGER_free(i32* %322)
  br label %327

324:                                              ; preds = %310
  %325 = load i32, i32* @bio_out, align 4
  %326 = call i32 @BIO_puts(i32 %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %318
  %328 = load i32, i32* @bio_out, align 4
  %329 = call i32 (i32, i8*, ...) @BIO_printf(i32 %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %306
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %40, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load i32, i32* @bio_out, align 4
  %336 = load i32*, i32** %5, align 8
  %337 = call i32 @X509_CRL_get_issuer(i32* %336)
  %338 = call i32 @X509_NAME_hash(i32 %337)
  %339 = call i32 (i32, i8*, ...) @BIO_printf(i32 %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %334, %330
  %341 = load i32, i32* %41, align 4
  %342 = load i32, i32* %40, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %340
  %345 = load i32, i32* @bio_out, align 4
  %346 = load i32*, i32** %5, align 8
  %347 = call i32 @X509_CRL_get_issuer(i32* %346)
  %348 = call i32 @X509_NAME_hash_old(i32 %347)
  %349 = call i32 (i32, i8*, ...) @BIO_printf(i32 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %348)
  br label %350

350:                                              ; preds = %344, %340
  %351 = load i32, i32* %24, align 4
  %352 = load i32, i32* %40, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %363

354:                                              ; preds = %350
  %355 = load i32, i32* @bio_out, align 4
  %356 = call i32 (i32, i8*, ...) @BIO_printf(i32 %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %357 = load i32, i32* @bio_out, align 4
  %358 = load i32*, i32** %5, align 8
  %359 = call i64 @X509_CRL_get0_lastUpdate(i32* %358)
  %360 = call i32 @ASN1_TIME_print(i32 %357, i64 %359)
  %361 = load i32, i32* @bio_out, align 4
  %362 = call i32 (i32, i8*, ...) @BIO_printf(i32 %361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %363

363:                                              ; preds = %354, %350
  %364 = load i32, i32* %25, align 4
  %365 = load i32, i32* %40, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %384

367:                                              ; preds = %363
  %368 = load i32, i32* @bio_out, align 4
  %369 = call i32 (i32, i8*, ...) @BIO_printf(i32 %368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %370 = load i32*, i32** %5, align 8
  %371 = call i64 @X509_CRL_get0_nextUpdate(i32* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %367
  %374 = load i32, i32* @bio_out, align 4
  %375 = load i32*, i32** %5, align 8
  %376 = call i64 @X509_CRL_get0_nextUpdate(i32* %375)
  %377 = call i32 @ASN1_TIME_print(i32 %374, i64 %376)
  br label %381

378:                                              ; preds = %367
  %379 = load i32, i32* @bio_out, align 4
  %380 = call i32 (i32, i8*, ...) @BIO_printf(i32 %379, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %373
  %382 = load i32, i32* @bio_out, align 4
  %383 = call i32 (i32, i8*, ...) @BIO_printf(i32 %382, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %384

384:                                              ; preds = %381, %363
  %385 = load i32, i32* %33, align 4
  %386 = load i32, i32* %40, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %432

388:                                              ; preds = %384
  %389 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %390 = zext i32 %389 to i64
  %391 = call i8* @llvm.stacksave()
  store i8* %391, i8** %48, align 8
  %392 = alloca i8, i64 %390, align 16
  store i64 %390, i64* %49, align 8
  %393 = load i32*, i32** %5, align 8
  %394 = load i32*, i32** %12, align 8
  %395 = call i32 @X509_CRL_digest(i32* %393, i32* %394, i8* %392, i32* %47)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %388
  %398 = load i32, i32* @bio_err, align 4
  %399 = call i32 (i32, i8*, ...) @BIO_printf(i32 %398, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 6, i32* %50, align 4
  br label %428

400:                                              ; preds = %388
  %401 = load i32, i32* @bio_out, align 4
  %402 = load i32*, i32** %12, align 8
  %403 = call i32 @EVP_MD_type(i32* %402)
  %404 = call i32 @OBJ_nid2sn(i32 %403)
  %405 = call i32 (i32, i8*, ...) @BIO_printf(i32 %401, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %404)
  store i32 0, i32* %46, align 4
  br label %406

406:                                              ; preds = %424, %400
  %407 = load i32, i32* %46, align 4
  %408 = load i32, i32* %47, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %427

410:                                              ; preds = %406
  %411 = load i32, i32* @bio_out, align 4
  %412 = load i32, i32* %46, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %392, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  %417 = load i32, i32* %46, align 4
  %418 = add nsw i32 %417, 1
  %419 = load i32, i32* %47, align 4
  %420 = icmp eq i32 %418, %419
  %421 = zext i1 %420 to i64
  %422 = select i1 %420, i32 10, i32 58
  %423 = call i32 (i32, i8*, ...) @BIO_printf(i32 %411, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %416, i32 %422)
  br label %424

424:                                              ; preds = %410
  %425 = load i32, i32* %46, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %46, align 4
  br label %406

427:                                              ; preds = %406
  store i32 0, i32* %50, align 4
  br label %428

428:                                              ; preds = %397, %427
  %429 = load i8*, i8** %48, align 8
  call void @llvm.stackrestore(i8* %429)
  %430 = load i32, i32* %50, align 4
  switch i32 %430, label %492 [
    i32 0, label %431
    i32 6, label %476
  ]

431:                                              ; preds = %428
  br label %432

432:                                              ; preds = %431, %384
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %40, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %40, align 4
  br label %292

436:                                              ; preds = %292
  br label %437

437:                                              ; preds = %436, %288
  %438 = load i8*, i8** %14, align 8
  %439 = load i32, i32* %28, align 4
  %440 = call i32* @bio_open_default(i8* %438, i8 signext 119, i32 %439)
  store i32* %440, i32** %6, align 8
  %441 = load i32*, i32** %6, align 8
  %442 = icmp eq i32* %441, null
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %476

444:                                              ; preds = %437
  %445 = load i32, i32* %35, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %444
  %448 = load i32*, i32** %6, align 8
  %449 = load i32*, i32** %5, align 8
  %450 = call i32 (...) @get_nameopt()
  %451 = call i32 @X509_CRL_print_ex(i32* %448, i32* %449, i32 %450)
  br label %452

452:                                              ; preds = %447, %444
  %453 = load i32, i32* %26, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  store i32 0, i32* %30, align 4
  br label %476

456:                                              ; preds = %452
  %457 = load i32, i32* %28, align 4
  %458 = load i32, i32* @FORMAT_ASN1, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %465

460:                                              ; preds = %456
  %461 = load i32*, i32** %6, align 8
  %462 = load i32*, i32** %5, align 8
  %463 = call i64 @i2d_X509_CRL_bio(i32* %461, i32* %462)
  %464 = trunc i64 %463 to i32
  store i32 %464, i32* %40, align 4
  br label %469

465:                                              ; preds = %456
  %466 = load i32*, i32** %6, align 8
  %467 = load i32*, i32** %5, align 8
  %468 = call i32 @PEM_write_bio_X509_CRL(i32* %466, i32* %467)
  store i32 %468, i32* %40, align 4
  br label %469

469:                                              ; preds = %465, %460
  %470 = load i32, i32* %40, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %475, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* @bio_err, align 4
  %474 = call i32 (i32, i8*, ...) @BIO_printf(i32 %473, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %476

475:                                              ; preds = %469
  store i32 0, i32* %30, align 4
  br label %476

476:                                              ; preds = %475, %472, %455, %443, %428, %276, %257, %250, %241, %224, %213, %202, %191, %181, %174, %161, %69, %65
  %477 = load i32, i32* %30, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load i32, i32* @bio_err, align 4
  %481 = call i32 @ERR_print_errors(i32 %480)
  br label %482

482:                                              ; preds = %479, %476
  %483 = load i32*, i32** %6, align 8
  %484 = call i32 @BIO_free_all(i32* %483)
  %485 = load i32*, i32** %5, align 8
  %486 = call i32 @X509_CRL_free(i32* %485)
  %487 = load i32*, i32** %8, align 8
  %488 = call i32 @X509_STORE_CTX_free(i32* %487)
  %489 = load i32*, i32** %7, align 8
  %490 = call i32 @X509_STORE_free(i32* %489)
  %491 = load i32, i32* %30, align 4
  ret i32 %491

492:                                              ; preds = %428
  unreachable
}

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @set_nameopt(i8*) #1

declare dso_local i32 @opt_md(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32* @load_crl(i8*, i32) #1

declare dso_local i32* @setup_verify(i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32* @X509_STORE_CTX_new(...) #1

declare dso_local i32 @X509_STORE_CTX_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @X509_STORE_CTX_get_obj_by_subject(i32*, i32, i32) #1

declare dso_local i32 @X509_CRL_get_issuer(i32*) #1

declare dso_local i32* @X509_get_pubkey(i32) #1

declare dso_local i32 @X509_OBJECT_get0_X509(i32*) #1

declare dso_local i32 @X509_OBJECT_free(i32*) #1

declare dso_local i32 @X509_CRL_verify(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @X509_CRL_free(i32*) #1

declare dso_local i32* @X509_CRL_diff(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509_CRL_get0_signature(i32*, i32**, i32*) #1

declare dso_local i32 @corrupt_signature(i32*) #1

declare dso_local i32 @print_name(i32, i8*, i32, i32) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i32* @X509_CRL_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i32 @i2a_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @X509_NAME_hash(i32) #1

declare dso_local i32 @X509_NAME_hash_old(i32) #1

declare dso_local i32 @ASN1_TIME_print(i32, i64) #1

declare dso_local i64 @X509_CRL_get0_lastUpdate(i32*) #1

declare dso_local i64 @X509_CRL_get0_nextUpdate(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @X509_CRL_digest(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32 @X509_CRL_print_ex(i32*, i32*, i32) #1

declare dso_local i64 @i2d_X509_CRL_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_X509_CRL(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @X509_STORE_CTX_free(i32*) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
