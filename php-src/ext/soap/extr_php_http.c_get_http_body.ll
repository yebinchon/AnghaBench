; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_get_http_body.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_get_http_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Connection: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Transfer-Encoding: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@FALSE = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@TRUE = common dso_local global i8 0, align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32, i8*)* @get_http_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_http_body(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [8192 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @get_http_header_value(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strncasecmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @efree(i8* %36)
  br label %38

38:                                               ; preds = %35, %25
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @get_http_header_value(i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strncasecmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @efree(i8* %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @get_http_header_value(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @efree(i8* %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call %struct.TYPE_8__* (...) @ZSTR_EMPTY_ALLOC()
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %4, align 8
  br label %304

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %212

73:                                               ; preds = %70
  %74 = load i8, i8* @FALSE, align 1
  store i8 %74, i8* %15, align 1
  br label %75

75:                                               ; preds = %181, %73
  %76 = load i8, i8* %15, align 1
  %77 = icmp ne i8 %76, 0
  %78 = xor i1 %77, true
  br i1 %78, label %79, label %182

79:                                               ; preds = %75
  store i32 0, i32* %17, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %82 = call i32 @php_stream_gets(i32* %80, i8* %81, i32 8192)
  %83 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %84 = call i64 @sscanf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %17)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %169

86:                                               ; preds = %79
  %87 = load i32, i32* %17, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %168

89:                                               ; preds = %86
  store i64 0, i64* %18, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %99, i32 0)
  br label %101

101:                                              ; preds = %98, %95
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %304

102:                                              ; preds = %89
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %107, %108
  %110 = call %struct.TYPE_8__* @zend_string_realloc(%struct.TYPE_8__* %106, i32 %109, i32 0)
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %8, align 8
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %17, align 4
  %113 = call %struct.TYPE_8__* @zend_string_alloc(i32 %112, i32 0)
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %8, align 8
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %138, %114
  %116 = load i64, i64* %18, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %115
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %18, align 8
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i64 @php_stream_read(i32* %121, i8* %127, i32 %132)
  store i64 %133, i64* %19, align 8
  %134 = load i64, i64* %19, align 8
  %135 = icmp sle i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %120
  %137 = load i8, i8* @TRUE, align 1
  store i8 %137, i8* %15, align 1
  br label %147

138:                                              ; preds = %120
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %18, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %18, align 8
  %142 = load i64, i64* %19, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %13, align 4
  br label %115

147:                                              ; preds = %136, %115
  %148 = load i32*, i32** %5, align 8
  %149 = call signext i8 @php_stream_getc(i32* %148)
  store i8 %149, i8* %14, align 1
  %150 = load i8, i8* %14, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 13
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32*, i32** %5, align 8
  %155 = call signext i8 @php_stream_getc(i32* %154)
  store i8 %155, i8* %14, align 1
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i8, i8* %14, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 10
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = icmp ne %struct.TYPE_8__* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %164, i32 0)
  br label %166

166:                                              ; preds = %163, %160
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %304

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167, %86
  br label %176

169:                                              ; preds = %79
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = icmp ne %struct.TYPE_8__* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %173, i32 0)
  br label %175

175:                                              ; preds = %172, %169
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %304

176:                                              ; preds = %168
  %177 = load i32, i32* %17, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8, i8* @TRUE, align 1
  store i8 %180, i8* %15, align 1
  br label %181

181:                                              ; preds = %179, %176
  br label %75

182:                                              ; preds = %75
  br label %183

183:                                              ; preds = %182, %205
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %186 = call i32 @php_stream_gets(i32* %184, i8* %185, i32 8192)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  br label %206

189:                                              ; preds = %183
  %190 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %191 = load i8, i8* %190, align 16
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 13
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %204, label %199

199:                                              ; preds = %194, %189
  %200 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %201 = load i8, i8* %200, align 16
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 10
  br i1 %203, label %204, label %205

204:                                              ; preds = %199, %194
  br label %206

205:                                              ; preds = %199
  br label %183

206:                                              ; preds = %204, %188
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %208 = icmp eq %struct.TYPE_8__* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call %struct.TYPE_8__* (...) @ZSTR_EMPTY_ALLOC()
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** %4, align 8
  br label %304

211:                                              ; preds = %206
  br label %293

212:                                              ; preds = %70
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %212
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @INT_MAX, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218, %215
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %304

223:                                              ; preds = %218
  %224 = load i32, i32* %12, align 4
  %225 = call %struct.TYPE_8__* @zend_string_alloc(i32 %224, i32 0)
  store %struct.TYPE_8__* %225, %struct.TYPE_8__** %8, align 8
  br label %226

226:                                              ; preds = %245, %223
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %226
  %231 = load i32*, i32** %5, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %13, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i64 @php_stream_read(i32* %231, i8* %237, i32 %240)
  store i64 %241, i64* %20, align 8
  %242 = load i64, i64* %20, align 8
  %243 = icmp sle i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %230
  br label %251

245:                                              ; preds = %230
  %246 = load i64, i64* %20, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %13, align 4
  br label %226

251:                                              ; preds = %244, %226
  br label %292

252:                                              ; preds = %212
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %290

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %284, %255
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %258 = icmp ne %struct.TYPE_8__* %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 4096
  %263 = call %struct.TYPE_8__* @zend_string_realloc(%struct.TYPE_8__* %260, i32 %262, i32 0)
  store %struct.TYPE_8__* %263, %struct.TYPE_8__** %8, align 8
  br label %266

264:                                              ; preds = %256
  %265 = call %struct.TYPE_8__* @zend_string_alloc(i32 4096, i32 0)
  store %struct.TYPE_8__* %265, %struct.TYPE_8__** %8, align 8
  br label %266

266:                                              ; preds = %264, %259
  %267 = load i32*, i32** %5, align 8
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = call i64 @php_stream_read(i32* %267, i8* %273, i32 4096)
  store i64 %274, i64* %21, align 8
  %275 = load i64, i64* %21, align 8
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %266
  %278 = load i64, i64* %21, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %278
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %13, align 4
  br label %283

283:                                              ; preds = %277, %266
  br label %284

284:                                              ; preds = %283
  %285 = load i32*, i32** %5, align 8
  %286 = call i32 @php_stream_eof(i32* %285)
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  br i1 %288, label %256, label %289

289:                                              ; preds = %284
  br label %291

290:                                              ; preds = %252
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %304

291:                                              ; preds = %289
  br label %292

292:                                              ; preds = %291, %251
  br label %293

293:                                              ; preds = %292, %211
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  store i8 0, i8* %299, align 1
  %300 = load i32, i32* %13, align 4
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %303, %struct.TYPE_8__** %4, align 8
  br label %304

304:                                              ; preds = %293, %290, %222, %209, %175, %166, %101, %67
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %305
}

declare dso_local i8* @get_http_header_value(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_8__* @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32 @php_stream_gets(i32*, i8*, i32) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @zend_string_release_ex(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @zend_string_realloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @zend_string_alloc(i32, i32) #1

declare dso_local i64 @php_stream_read(i32*, i8*, i32) #1

declare dso_local signext i8 @php_stream_getc(i32*) #1

declare dso_local i32 @php_stream_eof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
