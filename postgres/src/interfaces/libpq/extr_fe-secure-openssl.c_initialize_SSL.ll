; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_initialize_SSL.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_initialize_SSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32*, i32, i32*, i32 }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create SSL context: %s\0A\00", align 1
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ROOT_CERT_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"could not read root certificate file \22%s\22: %s\0A\00", align 1
@ROOT_CRL_FILE = common dso_local global i8* null, align 8
@X509_V_FLAG_CRL_CHECK = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [148 x i8] c"could not get home directory to locate root certificate file\0AEither provide the file or change sslmode to disable server certificate verification.\0A\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"root certificate file \22%s\22 does not exist\0AEither provide the file or change sslmode to disable server certificate verification.\0A\00", align 1
@USER_CERT_FILE = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"could not open certificate file \22%s\22: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"could not read certificate file \22%s\22: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"could not establish SSL connection: %s\0A\00", align 1
@USER_KEY_FILE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [52 x i8] c"certificate present, but not private key file \22%s\22\0A\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [92 x i8] c"private key file \22%s\22 has group or world access; permissions should be u=rw (0600) or less\0A\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"could not load private key file \22%s\22: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"certificate does not match private key file \22%s\22: %s\0A\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@verify_cb = common dso_local global i32 0, align 4
@SSL_OP_NO_COMPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @initialize_SSL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_SSL(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %22 = load i32, i32* @MAXPGPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i32, i32* @MAXPGPATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %29 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  store i32* null, i32** %13, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %75

36:                                               ; preds = %1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69, %64, %58, %53, %47, %42, %36, %1
  %76 = trunc i64 %23 to i32
  %77 = call i32 @pqGetHomeDirectory(i8* %25, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = call i32 (...) @SSLv23_method()
  %81 = call i32* @SSL_CTX_new(i32 %80)
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = call i32 (...) @ERR_get_error()
  %86 = call i8* @SSLerrmessage(i32 %85)
  store i8* %86, i8** %14, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 8
  %89 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %88, i32 %89, i8* %90)
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @SSLerrfree(i8* %92)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

94:                                               ; preds = %79
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %97 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @SSL_CTX_set_options(i32* %95, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %102 = call i32 @SSL_CTX_set_mode(i32* %100, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %94
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = trunc i64 %27 to i32
  %118 = call i32 @strlcpy(i8* %28, i8* %116, i32 %117)
  br label %129

119:                                              ; preds = %107, %94
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = trunc i64 %27 to i32
  %124 = load i8*, i8** @ROOT_CERT_FILE, align 8
  %125 = call i32 @snprintf(i8* %28, i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %124)
  br label %128

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %127, align 16
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %113
  %130 = getelementptr inbounds i8, i8* %28, i64 0
  %131 = load i8, i8* %130, align 16
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %202

134:                                              ; preds = %129
  %135 = call i64 @stat(i8* %28, %struct.stat* %5)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %202

137:                                              ; preds = %134
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @SSL_CTX_load_verify_locations(i32* %138, i8* %28, i32* null)
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = call i32 (...) @ERR_get_error()
  %143 = call i8* @SSLerrmessage(i32 %142)
  store i8* %143, i8** %17, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = call i32 @libpq_gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i8*, i8** %17, align 8
  %148 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %145, i32 %146, i8* %28, i8* %147)
  %149 = load i8*, i8** %17, align 8
  %150 = call i32 @SSLerrfree(i8* %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @SSL_CTX_free(i32* %151)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

153:                                              ; preds = %137
  %154 = load i32*, i32** %4, align 8
  %155 = call i32* @SSL_CTX_get_cert_store(i32* %154)
  store i32* %155, i32** %16, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %201

157:                                              ; preds = %153
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strlen(i8* %165)
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = trunc i64 %27 to i32
  %173 = call i32 @strlcpy(i8* %28, i8* %171, i32 %172)
  br label %184

174:                                              ; preds = %162, %157
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = trunc i64 %27 to i32
  %179 = load i8*, i8** @ROOT_CRL_FILE, align 8
  %180 = call i32 @snprintf(i8* %28, i32 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %179)
  br label %183

181:                                              ; preds = %174
  %182 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %182, align 16
  br label %183

183:                                              ; preds = %181, %177
  br label %184

184:                                              ; preds = %183, %168
  %185 = getelementptr inbounds i8, i8* %28, i64 0
  %186 = load i8, i8* %185, align 16
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @X509_STORE_load_locations(i32* %190, i8* %28, i32* null)
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32*, i32** %16, align 8
  %195 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %196 = load i32, i32* @X509_V_FLAG_CRL_CHECK_ALL, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @X509_STORE_set_flags(i32* %194, i32 %197)
  br label %199

199:                                              ; preds = %193, %189, %184
  %200 = call i32 (...) @ERR_clear_error()
  br label %201

201:                                              ; preds = %199, %153
  store i32 1, i32* %12, align 4
  br label %229

202:                                              ; preds = %134, %129
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 118
  br i1 %209, label %210, label %228

210:                                              ; preds = %202
  %211 = getelementptr inbounds i8, i8* %28, i64 0
  %212 = load i8, i8* %211, align 16
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 8
  %218 = call i32 @libpq_gettext(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.3, i64 0, i64 0))
  %219 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %217, i32 %218)
  br label %225

220:                                              ; preds = %210
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 8
  %223 = call i32 @libpq_gettext(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0))
  %224 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %222, i32 %223, i8* %28)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @SSL_CTX_free(i32* %226)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

228:                                              ; preds = %202
  store i32 0, i32* %12, align 4
  br label %229

229:                                              ; preds = %228, %201
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i64 @strlen(i8* %237)
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = trunc i64 %27 to i32
  %245 = call i32 @strlcpy(i8* %28, i8* %243, i32 %244)
  br label %256

246:                                              ; preds = %234, %229
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = trunc i64 %27 to i32
  %251 = load i8*, i8** @USER_CERT_FILE, align 8
  %252 = call i32 @snprintf(i8* %28, i32 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %251)
  br label %255

253:                                              ; preds = %246
  %254 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %254, align 16
  br label %255

255:                                              ; preds = %253, %249
  br label %256

256:                                              ; preds = %255, %240
  %257 = getelementptr inbounds i8, i8* %28, i64 0
  %258 = load i8, i8* %257, align 16
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 0, i32* %11, align 4
  br label %302

262:                                              ; preds = %256
  %263 = call i64 @stat(i8* %28, %struct.stat* %5)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %262
  %266 = load i64, i64* @errno, align 8
  %267 = load i64, i64* @ENOENT, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %265
  %270 = load i64, i64* @errno, align 8
  %271 = load i64, i64* @ENOTDIR, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %269
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 8
  %276 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %277 = load i64, i64* @errno, align 8
  %278 = trunc i64 %30 to i32
  %279 = call i8* @strerror_r(i64 %277, i8* %31, i32 %278)
  %280 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %275, i32 %276, i8* %28, i8* %279)
  %281 = load i32*, i32** %4, align 8
  %282 = call i32 @SSL_CTX_free(i32* %281)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

283:                                              ; preds = %269, %265
  store i32 0, i32* %11, align 4
  br label %301

284:                                              ; preds = %262
  %285 = load i32*, i32** %4, align 8
  %286 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %285, i8* %28)
  %287 = icmp ne i32 %286, 1
  br i1 %287, label %288, label %300

288:                                              ; preds = %284
  %289 = call i32 (...) @ERR_get_error()
  %290 = call i8* @SSLerrmessage(i32 %289)
  store i8* %290, i8** %18, align 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 8
  %293 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %294 = load i8*, i8** %18, align 8
  %295 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %292, i32 %293, i8* %28, i8* %294)
  %296 = load i8*, i8** %18, align 8
  %297 = call i32 @SSLerrfree(i8* %296)
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @SSL_CTX_free(i32* %298)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

300:                                              ; preds = %284
  store i32 1, i32* %11, align 4
  br label %301

301:                                              ; preds = %300, %283
  br label %302

302:                                              ; preds = %301, %261
  %303 = load i32*, i32** %4, align 8
  %304 = call i32 @SSL_new(i32* %303)
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 6
  store i32 %304, i32* %306, align 4
  %307 = icmp ne i32 %304, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %302
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %313 = call i32 @SSL_set_app_data(i32 %311, %struct.TYPE_5__* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %308
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 10
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @my_SSL_set_fd(%struct.TYPE_5__* %316, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %334, label %322

322:                                              ; preds = %315, %308, %302
  %323 = call i32 (...) @ERR_get_error()
  %324 = call i8* @SSLerrmessage(i32 %323)
  store i8* %324, i8** %19, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 8
  %327 = call i32 @libpq_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %328 = load i8*, i8** %19, align 8
  %329 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %326, i32 %327, i8* %328)
  %330 = load i8*, i8** %19, align 8
  %331 = call i32 @SSLerrfree(i8* %330)
  %332 = load i32*, i32** %4, align 8
  %333 = call i32 @SSL_CTX_free(i32* %332)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

334:                                              ; preds = %315
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 5
  store i32 1, i32* %336, align 8
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @SSL_CTX_free(i32* %337)
  store i32* null, i32** %4, align 8
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %358

341:                                              ; preds = %334
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  %344 = load i8*, i8** %343, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %358

346:                                              ; preds = %341
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load i8*, i8** %348, align 8
  %350 = call i64 @strlen(i8* %349)
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %346
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = trunc i64 %27 to i32
  %357 = call i32 @strlcpy(i8* %28, i8* %355, i32 %356)
  br label %368

358:                                              ; preds = %346, %341, %334
  %359 = load i32, i32* %10, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = trunc i64 %27 to i32
  %363 = load i8*, i8** @USER_KEY_FILE, align 8
  %364 = call i32 @snprintf(i8* %28, i32 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %363)
  br label %367

365:                                              ; preds = %358
  %366 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %366, align 16
  br label %367

367:                                              ; preds = %365, %361
  br label %368

368:                                              ; preds = %367, %352
  %369 = load i32, i32* %11, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %420

371:                                              ; preds = %368
  %372 = getelementptr inbounds i8, i8* %28, i64 0
  %373 = load i8, i8* %372, align 16
  %374 = sext i8 %373 to i32
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %420

376:                                              ; preds = %371
  %377 = call i64 @stat(i8* %28, %struct.stat* %5)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 8
  %382 = call i32 @libpq_gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %383 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %381, i32 %382, i8* %28)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

384:                                              ; preds = %376
  %385 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @S_ISREG(i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @S_IRWXG, align 4
  %393 = load i32, i32* @S_IRWXO, align 4
  %394 = or i32 %392, %393
  %395 = and i32 %391, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %389, %384
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 8
  %400 = call i32 @libpq_gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.9, i64 0, i64 0))
  %401 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %399, i32 %400, i8* %28)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

402:                                              ; preds = %389
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %407 = call i32 @SSL_use_PrivateKey_file(i32 %405, i8* %28, i32 %406)
  %408 = icmp ne i32 %407, 1
  br i1 %408, label %409, label %419

409:                                              ; preds = %402
  %410 = call i32 (...) @ERR_get_error()
  %411 = call i8* @SSLerrmessage(i32 %410)
  store i8* %411, i8** %20, align 8
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 8
  %414 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %415 = load i8*, i8** %20, align 8
  %416 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %413, i32 %414, i8* %28, i8* %415)
  %417 = load i8*, i8** %20, align 8
  %418 = call i32 @SSLerrfree(i8* %417)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

419:                                              ; preds = %402
  br label %420

420:                                              ; preds = %419, %371, %368
  %421 = load i32, i32* %11, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %439

423:                                              ; preds = %420
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @SSL_check_private_key(i32 %426)
  %428 = icmp ne i32 %427, 1
  br i1 %428, label %429, label %439

429:                                              ; preds = %423
  %430 = call i32 (...) @ERR_get_error()
  %431 = call i8* @SSLerrmessage(i32 %430)
  store i8* %431, i8** %21, align 8
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 8
  %434 = call i32 @libpq_gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %435 = load i8*, i8** %21, align 8
  %436 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %433, i32 %434, i8* %28, i8* %435)
  %437 = load i8*, i8** %21, align 8
  %438 = call i32 @SSLerrfree(i8* %437)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

439:                                              ; preds = %423, %420
  %440 = load i32, i32* %12, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 6
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %447 = load i32, i32* @verify_cb, align 4
  %448 = call i32 @SSL_set_verify(i32 %445, i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %442, %439
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %450

450:                                              ; preds = %449, %429, %409, %397, %379, %322, %288, %273, %225, %141, %84
  %451 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %451)
  %452 = load i32, i32* %2, align 4
  ret i32 %452
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @pqGetHomeDirectory(i8*, i32) #2

declare dso_local i32* @SSL_CTX_new(i32) #2

declare dso_local i32 @SSLv23_method(...) #2

declare dso_local i8* @SSLerrmessage(i32) #2

declare dso_local i32 @ERR_get_error(...) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @SSLerrfree(i8*) #2

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #2

declare dso_local i32 @SSL_CTX_set_mode(i32*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

declare dso_local i32* @SSL_CTX_get_cert_store(i32*) #2

declare dso_local i32 @X509_STORE_load_locations(i32*, i8*, i32*) #2

declare dso_local i32 @X509_STORE_set_flags(i32*, i32) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i8* @strerror_r(i64, i8*, i32) #2

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #2

declare dso_local i32 @SSL_new(i32*) #2

declare dso_local i32 @SSL_set_app_data(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @my_SSL_set_fd(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @SSL_use_PrivateKey_file(i32, i8*, i32) #2

declare dso_local i32 @SSL_check_private_key(i32) #2

declare dso_local i32 @SSL_set_verify(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
