; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_http_request_validate.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_http_request_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64, i32, i32*, i64, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"Disabling slow client after %zu attempts to read the request (%zu bytes received)\00", align 1
@HTTP_VALIDATION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HTTP_VALIDATION_INCOMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@WEB_FIELDS_MAX = common dso_local global i32 0, align 4
@WEB_CLIENT_MODE_NORMAL = common dso_local global i64 0, align 8
@NETDATA_WEB_REQUEST_URL_SIZE = common dso_local global i64 0, align 8
@HTTP_VALIDATION_MALFORMED_URL = common dso_local global i32 0, align 4
@HTTP_VALIDATION_OK = common dso_local global i32 0, align 4
@WEB_CLIENT_MODE_STREAM = common dso_local global i64 0, align 8
@HTTP_VALIDATION_REDIRECT = common dso_local global i32 0, align 4
@NETDATA_SSL_NO_HANDSHAKE = common dso_local global i32 0, align 4
@netdata_srv_ctx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.web_client*)* @http_request_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_request_validate(%struct.web_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  %15 = load %struct.web_client*, %struct.web_client** %3, align 8
  %16 = getelementptr inbounds %struct.web_client, %struct.web_client* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @buffer_tostring(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %21 = load %struct.web_client*, %struct.web_client** %3, align 8
  %22 = getelementptr inbounds %struct.web_client, %struct.web_client* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.web_client*, %struct.web_client** %3, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.web_client*, %struct.web_client** %3, align 8
  %29 = getelementptr inbounds %struct.web_client, %struct.web_client* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @buffer_strlen(i32 %31)
  %33 = load %struct.web_client*, %struct.web_client** %3, align 8
  %34 = getelementptr inbounds %struct.web_client, %struct.web_client* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.web_client*, %struct.web_client** %3, align 8
  %36 = getelementptr inbounds %struct.web_client, %struct.web_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %89

39:                                               ; preds = %1
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, 4
  store i64 %44, i64* %6, align 8
  br label %46

45:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.web_client*, %struct.web_client** %3, align 8
  %48 = getelementptr inbounds %struct.web_client, %struct.web_client* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load %struct.web_client*, %struct.web_client** %3, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @url_is_request_complete(i8* %54, i8* %57, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %53
  %65 = load %struct.web_client*, %struct.web_client** %3, align 8
  %66 = getelementptr inbounds %struct.web_client, %struct.web_client* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 10
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.web_client*, %struct.web_client** %3, align 8
  %71 = getelementptr inbounds %struct.web_client, %struct.web_client* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.web_client*, %struct.web_client** %3, align 8
  %74 = getelementptr inbounds %struct.web_client, %struct.web_client* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @buffer_strlen(i32 %76)
  %78 = call i32 @info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %77)
  %79 = load %struct.web_client*, %struct.web_client** %3, align 8
  %80 = getelementptr inbounds %struct.web_client, %struct.web_client* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load %struct.web_client*, %struct.web_client** %3, align 8
  %82 = getelementptr inbounds %struct.web_client, %struct.web_client* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.web_client*, %struct.web_client** %3, align 8
  %84 = call i32 @web_client_disable_wait_receive(%struct.web_client* %83)
  %85 = load i32, i32* @HTTP_VALIDATION_NOT_SUPPORTED, align 4
  store i32 %85, i32* %2, align 4
  br label %342

86:                                               ; preds = %64
  %87 = load i32, i32* @HTTP_VALIDATION_INCOMPLETE, align 4
  store i32 %87, i32* %2, align 4
  br label %342

88:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %101

89:                                               ; preds = %1
  %90 = load %struct.web_client*, %struct.web_client** %3, align 8
  %91 = getelementptr inbounds %struct.web_client, %struct.web_client* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %6, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load %struct.web_client*, %struct.web_client** %3, align 8
  %98 = getelementptr inbounds %struct.web_client, %struct.web_client* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @url_is_request_complete(i8* %93, i8* %96, i64 %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %89, %88
  %102 = load %struct.web_client*, %struct.web_client** %3, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i8* @web_client_valid_method(%struct.web_client* %102, i8* %103)
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %101
  %108 = load %struct.web_client*, %struct.web_client** %3, align 8
  %109 = getelementptr inbounds %struct.web_client, %struct.web_client* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load %struct.web_client*, %struct.web_client** %3, align 8
  %111 = getelementptr inbounds %struct.web_client, %struct.web_client* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.web_client*, %struct.web_client** %3, align 8
  %113 = call i32 @web_client_disable_wait_receive(%struct.web_client* %112)
  %114 = load i32, i32* @HTTP_VALIDATION_NOT_SUPPORTED, align 4
  store i32 %114, i32* %2, align 4
  br label %342

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %147, label %118

118:                                              ; preds = %115
  %119 = load %struct.web_client*, %struct.web_client** %3, align 8
  %120 = getelementptr inbounds %struct.web_client, %struct.web_client* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @buffer_tostring(i32 %122)
  %124 = inttoptr i64 %123 to i8*
  %125 = call i8* @strstr(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %118
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8* %130, i8** %8, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.web_client*, %struct.web_client** %3, align 8
  %136 = getelementptr inbounds %struct.web_client, %struct.web_client* %135, i32 0, i32 1
  store i32 0, i32* %136, align 8
  %137 = load %struct.web_client*, %struct.web_client** %3, align 8
  %138 = getelementptr inbounds %struct.web_client, %struct.web_client* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.web_client*, %struct.web_client** %3, align 8
  %140 = call i32 @web_client_disable_wait_receive(%struct.web_client* %139)
  %141 = load i32, i32* @HTTP_VALIDATION_NOT_SUPPORTED, align 4
  store i32 %141, i32* %2, align 4
  br label %342

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %118
  %144 = load %struct.web_client*, %struct.web_client** %3, align 8
  %145 = call i32 @web_client_enable_wait_receive(%struct.web_client* %144)
  %146 = load i32, i32* @HTTP_VALIDATION_INCOMPLETE, align 4
  store i32 %146, i32* %2, align 4
  br label %342

147:                                              ; preds = %115
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %4, align 8
  store i8* %149, i8** %5, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = call i8* @url_find_protocol(i8* %150)
  store i8* %151, i8** %4, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load %struct.web_client*, %struct.web_client** %3, align 8
  %161 = call i32 @web_client_enable_wait_receive(%struct.web_client* %160)
  %162 = load i32, i32* @HTTP_VALIDATION_INCOMPLETE, align 4
  store i32 %162, i32* %2, align 4
  br label %342

163:                                              ; preds = %148
  %164 = load i8*, i8** %4, align 8
  store i8* %164, i8** %9, align 8
  %165 = load i32, i32* @WEB_FIELDS_MAX, align 4
  %166 = zext i32 %165 to i64
  %167 = call i8* @llvm.stacksave()
  store i8* %167, i8** %11, align 8
  %168 = alloca i8*, i64 %166, align 16
  store i64 %166, i64* %12, align 8
  br label %169

169:                                              ; preds = %335, %163
  %170 = load i8*, i8** %4, align 8
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %336

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %187, %173
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %4, align 8
  %182 = load i8, i8* %180, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 13
  br label %185

185:                                              ; preds = %179, %174
  %186 = phi i1 [ false, %174 ], [ %184, %179 ]
  br i1 %186, label %187, label %188

187:                                              ; preds = %185
  br label %174

188:                                              ; preds = %185
  %189 = load i8*, i8** %4, align 8
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %336

197:                                              ; preds = %188
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %4, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 10
  %203 = zext i1 %202 to i32
  %204 = call i64 @likely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %335

206:                                              ; preds = %197
  %207 = load i8*, i8** %4, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 13
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 10
  br label %217

217:                                              ; preds = %211, %206
  %218 = phi i1 [ false, %206 ], [ %216, %211 ]
  %219 = zext i1 %218 to i32
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %325

222:                                              ; preds = %217
  %223 = load i8*, i8** %9, align 8
  store i8 0, i8* %223, align 1
  %224 = load %struct.web_client*, %struct.web_client** %3, align 8
  %225 = getelementptr inbounds %struct.web_client, %struct.web_client* %224, i32 0, i32 2
  store i32* null, i32** %225, align 8
  %226 = load %struct.web_client*, %struct.web_client** %3, align 8
  %227 = getelementptr inbounds %struct.web_client, %struct.web_client* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @WEB_CLIENT_MODE_NORMAL, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %222
  %232 = load %struct.web_client*, %struct.web_client** %3, align 8
  %233 = getelementptr inbounds %struct.web_client, %struct.web_client* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = load i8*, i8** %5, align 8
  %236 = load i64, i64* @NETDATA_WEB_REQUEST_URL_SIZE, align 8
  %237 = add nsw i64 %236, 1
  %238 = call i32 @url_decode_r(i32 %234, i8* %235, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %231
  %241 = load i32, i32* @HTTP_VALIDATION_MALFORMED_URL, align 4
  store i32 %241, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %340

242:                                              ; preds = %231
  br label %308

243:                                              ; preds = %222
  %244 = load %struct.web_client*, %struct.web_client** %3, align 8
  %245 = load i8*, i8** %5, align 8
  %246 = call i32 @web_client_split_path_query(%struct.web_client* %244, i8* %245)
  %247 = load %struct.web_client*, %struct.web_client** %3, align 8
  %248 = getelementptr inbounds %struct.web_client, %struct.web_client* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %243
  %252 = load %struct.web_client*, %struct.web_client** %3, align 8
  %253 = getelementptr inbounds %struct.web_client, %struct.web_client* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load %struct.web_client*, %struct.web_client** %3, align 8
  %258 = getelementptr inbounds %struct.web_client, %struct.web_client* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  store i32 0, i32* %259, align 4
  br label %260

260:                                              ; preds = %256, %251, %243
  %261 = load %struct.web_client*, %struct.web_client** %3, align 8
  %262 = getelementptr inbounds %struct.web_client, %struct.web_client* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = load i8*, i8** %5, align 8
  %265 = load i64, i64* @NETDATA_WEB_REQUEST_URL_SIZE, align 8
  %266 = add nsw i64 %265, 1
  %267 = call i32 @url_decode_r(i32 %263, i8* %264, i64 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %260
  %270 = load i32, i32* @HTTP_VALIDATION_MALFORMED_URL, align 4
  store i32 %270, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %340

271:                                              ; preds = %260
  %272 = load %struct.web_client*, %struct.web_client** %3, align 8
  %273 = getelementptr inbounds %struct.web_client, %struct.web_client* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %307

276:                                              ; preds = %271
  %277 = load %struct.web_client*, %struct.web_client** %3, align 8
  %278 = getelementptr inbounds %struct.web_client, %struct.web_client* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %307

281:                                              ; preds = %276
  %282 = load %struct.web_client*, %struct.web_client** %3, align 8
  %283 = getelementptr inbounds %struct.web_client, %struct.web_client* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.web_client*, %struct.web_client** %3, align 8
  %286 = getelementptr inbounds %struct.web_client, %struct.web_client* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  store i32 %284, i32* %287, align 4
  %288 = load i8*, i8** %5, align 8
  %289 = load %struct.web_client*, %struct.web_client** %3, align 8
  %290 = getelementptr inbounds %struct.web_client, %struct.web_client* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %288, i64 %292
  store i8* %293, i8** %14, align 8
  %294 = load i8*, i8** %14, align 8
  %295 = call i32 @url_map_query_string(i8** %168, i8* %294)
  store i32 %295, i32* %10, align 4
  %296 = load %struct.web_client*, %struct.web_client** %3, align 8
  %297 = getelementptr inbounds %struct.web_client, %struct.web_client* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 8
  %299 = load i64, i64* @NETDATA_WEB_REQUEST_URL_SIZE, align 8
  %300 = add nsw i64 %299, 1
  %301 = load i32, i32* %10, align 4
  %302 = call i64 @url_parse_query_string(i32 %298, i64 %300, i8** %168, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %281
  %305 = load i32, i32* @HTTP_VALIDATION_MALFORMED_URL, align 4
  store i32 %305, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %340

306:                                              ; preds = %281
  br label %307

307:                                              ; preds = %306, %276, %271
  br label %308

308:                                              ; preds = %307, %242
  %309 = load i8*, i8** %9, align 8
  store i8 32, i8* %309, align 1
  %310 = load %struct.web_client*, %struct.web_client** %3, align 8
  %311 = getelementptr inbounds %struct.web_client, %struct.web_client* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.web_client*, %struct.web_client** %3, align 8
  %314 = getelementptr inbounds %struct.web_client, %struct.web_client* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 8
  %316 = load i64, i64* @NETDATA_WEB_REQUEST_URL_SIZE, align 8
  %317 = call i32 @strncpyz(i32 %312, i32 %315, i64 %316)
  %318 = load %struct.web_client*, %struct.web_client** %3, align 8
  %319 = getelementptr inbounds %struct.web_client, %struct.web_client* %318, i32 0, i32 1
  store i32 0, i32* %319, align 8
  %320 = load %struct.web_client*, %struct.web_client** %3, align 8
  %321 = getelementptr inbounds %struct.web_client, %struct.web_client* %320, i32 0, i32 0
  store i64 0, i64* %321, align 8
  %322 = load %struct.web_client*, %struct.web_client** %3, align 8
  %323 = call i32 @web_client_disable_wait_receive(%struct.web_client* %322)
  %324 = load i32, i32* @HTTP_VALIDATION_OK, align 4
  store i32 %324, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %340

325:                                              ; preds = %217
  %326 = load %struct.web_client*, %struct.web_client** %3, align 8
  %327 = load i8*, i8** %4, align 8
  %328 = load %struct.web_client*, %struct.web_client** %3, align 8
  %329 = getelementptr inbounds %struct.web_client, %struct.web_client* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @WEB_CLIENT_MODE_STREAM, align 8
  %332 = icmp eq i64 %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i8* @http_header_parse(%struct.web_client* %326, i8* %327, i32 %333)
  store i8* %334, i8** %4, align 8
  br label %335

335:                                              ; preds = %325, %197
  br label %169

336:                                              ; preds = %196, %169
  %337 = load %struct.web_client*, %struct.web_client** %3, align 8
  %338 = call i32 @web_client_enable_wait_receive(%struct.web_client* %337)
  %339 = load i32, i32* @HTTP_VALIDATION_INCOMPLETE, align 4
  store i32 %339, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %340

340:                                              ; preds = %336, %308, %304, %269, %240
  %341 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %341)
  br label %342

342:                                              ; preds = %340, %159, %143, %134, %107, %86, %69
  %343 = load i32, i32* %2, align 4
  ret i32 %343
}

declare dso_local i64 @buffer_tostring(i32) #1

declare dso_local i64 @buffer_strlen(i32) #1

declare dso_local i32 @url_is_request_complete(i8*, i8*, i64) #1

declare dso_local i32 @info(i8*, i32, i64) #1

declare dso_local i32 @web_client_disable_wait_receive(%struct.web_client*) #1

declare dso_local i8* @web_client_valid_method(%struct.web_client*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @web_client_enable_wait_receive(%struct.web_client*) #1

declare dso_local i8* @url_find_protocol(i8*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @url_decode_r(i32, i8*, i64) #1

declare dso_local i32 @web_client_split_path_query(%struct.web_client*, i8*) #1

declare dso_local i32 @url_map_query_string(i8**, i8*) #1

declare dso_local i64 @url_parse_query_string(i32, i64, i8**, i32) #1

declare dso_local i32 @strncpyz(i32, i32, i64) #1

declare dso_local i8* @http_header_parse(%struct.web_client*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
