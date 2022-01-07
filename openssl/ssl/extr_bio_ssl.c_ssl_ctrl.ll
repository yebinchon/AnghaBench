; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_ssl_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_bio_ssl.c_ssl_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i8*, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, %struct.TYPE_18__*, i32 }

@BIO_FLAGS_READ = common dso_local global i32 0, align 4
@BIO_FLAGS_SHOULD_RETRY = common dso_local global i32 0, align 4
@BIO_FLAGS_WRITE = common dso_local global i32 0, align 4
@BIO_FLAGS_IO_SPECIAL = common dso_local global i32 0, align 4
@BIO_RR_SSL_X509_LOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64, i8*)* @ssl_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_ctrl(i8* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.TYPE_19__* @BIO_get_data(i8* %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @BIO_next(i8* %20)
  store i8* %21, i8** %17, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %11, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 135
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %352

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %342 [
    i32 143, label %33
    i32 147, label %92
    i32 132, label %93
    i32 133, label %103
    i32 134, label %117
    i32 136, label %128
    i32 135, label %132
    i32 137, label %173
    i32 148, label %183
    i32 141, label %186
    i32 140, label %191
    i32 146, label %199
    i32 149, label %210
    i32 144, label %222
    i32 145, label %239
    i32 139, label %247
    i32 150, label %290
    i32 138, label %333
    i32 142, label %341
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = call i32 @SSL_shutdown(%struct.TYPE_18__* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %47 = call i32 @SSL_set_connect_state(%struct.TYPE_18__* %46)
  br label %62

48:                                               ; preds = %33
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %60 = call i32 @SSL_set_accept_state(%struct.TYPE_18__* %59)
  br label %61

61:                                               ; preds = %58, %48
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = call i32 @SSL_clear(%struct.TYPE_18__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i64 0, i64* %16, align 8
  br label %350

67:                                               ; preds = %62
  %68 = load i8*, i8** %17, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @BIO_ctrl(i8* %71, i32 %72, i64 %73, i8* %74)
  store i64 %75, i64* %16, align 8
  br label %91

76:                                               ; preds = %67
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @BIO_ctrl(i8* %84, i32 %85, i64 %86, i8* %87)
  store i64 %88, i64* %16, align 8
  br label %90

89:                                               ; preds = %76
  store i64 1, i64* %16, align 8
  br label %90

90:                                               ; preds = %89, %81
  br label %91

91:                                               ; preds = %90, %70
  br label %350

92:                                               ; preds = %31
  store i64 0, i64* %16, align 8
  br label %350

93:                                               ; preds = %31
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = call i32 @SSL_set_connect_state(%struct.TYPE_18__* %97)
  br label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = call i32 @SSL_set_accept_state(%struct.TYPE_18__* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %350

103:                                              ; preds = %31
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp slt i64 %107, 60
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i64 5, i64* %8, align 8
  br label %110

110:                                              ; preds = %109, %103
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = call i64 @time(i32* null)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %350

117:                                              ; preds = %31
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %16, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp sge i64 %121, 512
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117
  br label %350

128:                                              ; preds = %31
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %16, align 8
  br label %350

132:                                              ; preds = %31
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = icmp ne %struct.TYPE_18__* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @ssl_free(i8* %136)
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @ssl_new(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  store i64 0, i64* %5, align 8
  br label %352

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %132
  %144 = load i8*, i8** %6, align 8
  %145 = load i64, i64* %8, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @BIO_set_shutdown(i8* %144, i32 %146)
  %148 = load i8*, i8** %9, align 8
  %149 = bitcast i8* %148 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %11, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 4
  store %struct.TYPE_18__* %150, %struct.TYPE_18__** %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %154 = call i8* @SSL_get_rbio(%struct.TYPE_18__* %153)
  store i8* %154, i8** %15, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %170

157:                                              ; preds = %143
  %158 = load i8*, i8** %17, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = call i32 @BIO_push(i8* %161, i8* %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @BIO_set_next(i8* %165, i8* %166)
  %168 = load i8*, i8** %15, align 8
  %169 = call i32 @BIO_up_ref(i8* %168)
  br label %170

170:                                              ; preds = %164, %143
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @BIO_set_init(i8* %171, i32 1)
  br label %350

173:                                              ; preds = %31
  %174 = load i8*, i8** %9, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8
  %178 = bitcast i8* %177 to %struct.TYPE_18__**
  store %struct.TYPE_18__** %178, %struct.TYPE_18__*** %10, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %180 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %180, align 8
  br label %182

181:                                              ; preds = %173
  store i64 0, i64* %16, align 8
  br label %182

182:                                              ; preds = %181, %176
  br label %350

183:                                              ; preds = %31
  %184 = load i8*, i8** %6, align 8
  %185 = call i64 @BIO_get_shutdown(i8* %184)
  store i64 %185, i64* %16, align 8
  br label %350

186:                                              ; preds = %31
  %187 = load i8*, i8** %6, align 8
  %188 = load i64, i64* %8, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 @BIO_set_shutdown(i8* %187, i32 %189)
  br label %350

191:                                              ; preds = %31
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i64, i64* %8, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i64 @BIO_ctrl(i8* %194, i32 %195, i64 %196, i8* %197)
  store i64 %198, i64* %16, align 8
  br label %350

199:                                              ; preds = %31
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %201 = call i64 @SSL_pending(%struct.TYPE_18__* %200)
  store i64 %201, i64* %16, align 8
  %202 = load i64, i64* %16, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @BIO_pending(i8* %207)
  store i64 %208, i64* %16, align 8
  br label %209

209:                                              ; preds = %204, %199
  br label %350

210:                                              ; preds = %31
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 @BIO_clear_retry_flags(i8* %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i64, i64* %8, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = call i64 @BIO_ctrl(i8* %215, i32 %216, i64 %217, i8* %218)
  store i64 %219, i64* %16, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 @BIO_copy_next_retry(i8* %220)
  br label %350

222:                                              ; preds = %31
  %223 = load i8*, i8** %17, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load i8*, i8** %17, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %226, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load i8*, i8** %17, align 8
  %233 = call i32 @BIO_up_ref(i8* %232)
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %235 = load i8*, i8** %17, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = call i32 @SSL_set_bio(%struct.TYPE_18__* %234, i8* %235, i8* %236)
  br label %238

238:                                              ; preds = %231, %225, %222
  br label %350

239:                                              ; preds = %31
  %240 = load i8*, i8** %6, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = icmp eq i8* %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %245 = call i32 @SSL_set_bio(%struct.TYPE_18__* %244, i8* null, i8* null)
  br label %246

246:                                              ; preds = %243, %239
  br label %350

247:                                              ; preds = %31
  %248 = load i8*, i8** %6, align 8
  %249 = call i32 @BIO_clear_retry_flags(i8* %248)
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 @BIO_set_retry_reason(i8* %250, i32 0)
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %253 = call i64 @SSL_do_handshake(%struct.TYPE_18__* %252)
  %254 = trunc i64 %253 to i32
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %16, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %257 = load i64, i64* %16, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @SSL_get_error(%struct.TYPE_18__* %256, i32 %258)
  switch i32 %259, label %288 [
    i32 130, label %260
    i32 129, label %266
    i32 131, label %272
    i32 128, label %282
  ]

260:                                              ; preds = %247
  %261 = load i8*, i8** %6, align 8
  %262 = load i32, i32* @BIO_FLAGS_READ, align 4
  %263 = load i32, i32* @BIO_FLAGS_SHOULD_RETRY, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @BIO_set_flags(i8* %261, i32 %264)
  br label %289

266:                                              ; preds = %247
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* @BIO_FLAGS_WRITE, align 4
  %269 = load i32, i32* @BIO_FLAGS_SHOULD_RETRY, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @BIO_set_flags(i8* %267, i32 %270)
  br label %289

272:                                              ; preds = %247
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* @BIO_FLAGS_IO_SPECIAL, align 4
  %275 = load i32, i32* @BIO_FLAGS_SHOULD_RETRY, align 4
  %276 = or i32 %274, %275
  %277 = call i32 @BIO_set_flags(i8* %273, i32 %276)
  %278 = load i8*, i8** %6, align 8
  %279 = load i8*, i8** %17, align 8
  %280 = call i32 @BIO_get_retry_reason(i8* %279)
  %281 = call i32 @BIO_set_retry_reason(i8* %278, i32 %280)
  br label %289

282:                                              ; preds = %247
  %283 = load i8*, i8** %6, align 8
  %284 = call i32 @BIO_set_retry_special(i8* %283)
  %285 = load i8*, i8** %6, align 8
  %286 = load i32, i32* @BIO_RR_SSL_X509_LOOKUP, align 4
  %287 = call i32 @BIO_set_retry_reason(i8* %285, i32 %286)
  br label %289

288:                                              ; preds = %247
  br label %289

289:                                              ; preds = %288, %282, %272, %266, %260
  br label %350

290:                                              ; preds = %31
  %291 = load i8*, i8** %9, align 8
  store i8* %291, i8** %14, align 8
  %292 = load i8*, i8** %14, align 8
  %293 = call %struct.TYPE_19__* @BIO_get_data(i8* %292)
  store %struct.TYPE_19__* %293, %struct.TYPE_19__** %13, align 8
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %295, align 8
  %297 = call i32 @SSL_free(%struct.TYPE_18__* %296)
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %299 = call %struct.TYPE_18__* @SSL_dup(%struct.TYPE_18__* %298)
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 4
  store %struct.TYPE_18__* %299, %struct.TYPE_18__** %301, align 8
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 3
  store i64 %304, i64* %306, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 2
  store i64 %309, i64* %311, align 8
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 5
  store i32 %314, i32* %316, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  store i64 %324, i64* %326, align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %328, align 8
  %330 = icmp ne %struct.TYPE_18__* %329, null
  %331 = zext i1 %330 to i32
  %332 = sext i32 %331 to i64
  store i64 %332, i64* %16, align 8
  br label %350

333:                                              ; preds = %31
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = load i64, i64* %8, align 8
  %339 = load i8*, i8** %9, align 8
  %340 = call i64 @BIO_ctrl(i8* %336, i32 %337, i64 %338, i8* %339)
  store i64 %340, i64* %16, align 8
  br label %350

341:                                              ; preds = %31
  store i64 0, i64* %16, align 8
  br label %350

342:                                              ; preds = %31
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = load i64, i64* %8, align 8
  %348 = load i8*, i8** %9, align 8
  %349 = call i64 @BIO_ctrl(i8* %345, i32 %346, i64 %347, i8* %348)
  store i64 %349, i64* %16, align 8
  br label %350

350:                                              ; preds = %342, %341, %333, %290, %289, %246, %238, %210, %209, %191, %186, %183, %182, %170, %128, %127, %110, %102, %92, %91, %66
  %351 = load i64, i64* %16, align 8
  store i64 %351, i64* %5, align 8
  br label %352

352:                                              ; preds = %350, %141, %30
  %353 = load i64, i64* %5, align 8
  ret i64 %353
}

declare dso_local %struct.TYPE_19__* @BIO_get_data(i8*) #1

declare dso_local i8* @BIO_next(i8*) #1

declare dso_local i32 @SSL_shutdown(%struct.TYPE_18__*) #1

declare dso_local i32 @SSL_set_connect_state(%struct.TYPE_18__*) #1

declare dso_local i32 @SSL_set_accept_state(%struct.TYPE_18__*) #1

declare dso_local i32 @SSL_clear(%struct.TYPE_18__*) #1

declare dso_local i64 @BIO_ctrl(i8*, i32, i64, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ssl_free(i8*) #1

declare dso_local i32 @ssl_new(i8*) #1

declare dso_local i32 @BIO_set_shutdown(i8*, i32) #1

declare dso_local i8* @SSL_get_rbio(%struct.TYPE_18__*) #1

declare dso_local i32 @BIO_push(i8*, i8*) #1

declare dso_local i32 @BIO_set_next(i8*, i8*) #1

declare dso_local i32 @BIO_up_ref(i8*) #1

declare dso_local i32 @BIO_set_init(i8*, i32) #1

declare dso_local i64 @BIO_get_shutdown(i8*) #1

declare dso_local i64 @SSL_pending(%struct.TYPE_18__*) #1

declare dso_local i64 @BIO_pending(i8*) #1

declare dso_local i32 @BIO_clear_retry_flags(i8*) #1

declare dso_local i32 @BIO_copy_next_retry(i8*) #1

declare dso_local i32 @SSL_set_bio(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @BIO_set_retry_reason(i8*, i32) #1

declare dso_local i64 @SSL_do_handshake(%struct.TYPE_18__*) #1

declare dso_local i32 @SSL_get_error(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @BIO_set_flags(i8*, i32) #1

declare dso_local i32 @BIO_get_retry_reason(i8*) #1

declare dso_local i32 @BIO_set_retry_special(i8*) #1

declare dso_local i32 @SSL_free(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @SSL_dup(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
