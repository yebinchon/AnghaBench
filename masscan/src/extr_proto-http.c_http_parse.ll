; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32, i32, i32 }
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@.str = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@PROTO_HTTP = common dso_local global i32 0, align 4
@HTTPFIELD_NEWLINE = common dso_local global i64 0, align 8
@SMACK_NOT_FOUND = common dso_local global i64 0, align 8
@HTTPFIELD_UNKNOWN = common dso_local global i64 0, align 8
@PROTO_HTML_FULL = common dso_local global i32 0, align 4
@PROTO_HTML_TITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @http_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %23 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %24 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @UNUSEDPARM(i8* %26)
  %28 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %29 = bitcast %struct.InteractiveData* %28 to i8*
  %30 = call i32 @UNUSEDPARM(i8* %29)
  %31 = load i32, i32* %15, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 65535
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %20, align 8
  %38 = load i32, i32* %15, align 4
  %39 = lshr i32 %38, 0
  %40 = and i32 %39, 255
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %372, %7
  %42 = load i32, i32* %16, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %375

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  switch i32 %47, label %368 [
    i32 0, label %48
    i32 1, label %48
    i32 2, label %48
    i32 3, label %48
    i32 4, label %48
    i32 5, label %70
    i32 6, label %95
    i32 7, label %120
    i32 9, label %130
    i32 10, label %163
    i32 11, label %210
    i32 12, label %231
    i32 13, label %268
    i32 14, label %300
    i32 15, label %334
    i32 16, label %367
  ]

48:                                               ; preds = %46, %46, %46, %46, %46
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %16, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call signext i8 @toupper(i8 zeroext %53)
  %55 = sext i8 %54 to i32
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* @.str, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  store i32 16, i32* %15, align 4
  %63 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %64 = bitcast %struct.InteractiveData* %63 to i8*
  %65 = call i32 @tcp_close(i8* %64)
  br label %69

66:                                               ; preds = %48
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %371

70:                                               ; preds = %46
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %15, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %94

81:                                               ; preds = %70
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %16, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @isdigit(i8 zeroext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  store i32 16, i32* %15, align 4
  %90 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %91 = bitcast %struct.InteractiveData* %90 to i8*
  %92 = call i32 @tcp_close(i8* %91)
  br label %93

93:                                               ; preds = %89, %81
  br label %94

94:                                               ; preds = %93, %78
  br label %371

95:                                               ; preds = %46
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isspace(i8 zeroext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %119

106:                                              ; preds = %95
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @isdigit(i8 zeroext %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  store i32 16, i32* %15, align 4
  %115 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %116 = bitcast %struct.InteractiveData* %115 to i8*
  %117 = call i32 @tcp_close(i8* %116)
  br label %118

118:                                              ; preds = %114, %106
  br label %119

119:                                              ; preds = %118, %103
  br label %371

120:                                              ; preds = %46
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 9, i32* %15, align 4
  br label %129

129:                                              ; preds = %128, %120
  br label %371

130:                                              ; preds = %46
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %16, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %371

139:                                              ; preds = %130
  %140 = load i8*, i8** %11, align 8
  %141 = load i32, i32* %16, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 10
  br i1 %146, label %147, label %160

147:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  store i32 13, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %19, align 4
  %149 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %150 = load i32, i32* @PROTO_HTTP, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %18, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %18, align 4
  %157 = sub i32 %155, %156
  %158 = call i32 @banout_append(%struct.BannerOutput* %149, i32 %150, i8* %154, i32 %157)
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %18, align 4
  br label %371

160:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  store i32 10, i32* %15, align 4
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %46, %162
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 13
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %371

172:                                              ; preds = %163
  %173 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %174 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %11, align 8
  %177 = load i64, i64* %12, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i64 @smack_search_next(i32 %175, i32* %17, i8* %176, i32* %16, i32 %178)
  store i64 %179, i64* %20, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add i32 %180, -1
  store i32 %181, i32* %16, align 4
  %182 = load i64, i64* %20, align 8
  %183 = load i64, i64* @HTTPFIELD_NEWLINE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %172
  store i32 0, i32* %17, align 4
  store i32 9, i32* %15, align 4
  br label %209

186:                                              ; preds = %172
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %208

191:                                              ; preds = %186
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* @HTTPFIELD_UNKNOWN, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %197 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @smack_next_match(i32 %198, i32* %17)
  store i64 %199, i64* %21, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = load i64, i64* %21, align 8
  store i64 %204, i64* %20, align 8
  br label %205

205:                                              ; preds = %203, %195
  store i32 11, i32* %15, align 4
  br label %207

206:                                              ; preds = %191
  store i32 11, i32* %15, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %208

208:                                              ; preds = %207, %190
  br label %209

209:                                              ; preds = %208, %185
  br label %371

210:                                              ; preds = %46
  %211 = load i8*, i8** %11, align 8
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %216, 10
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  store i32 9, i32* %15, align 4
  br label %371

219:                                              ; preds = %210
  %220 = load i8*, i8** %11, align 8
  %221 = load i32, i32* %16, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = call i32 @isspace(i8 zeroext %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %371

228:                                              ; preds = %219
  store i32 12, i32* %15, align 4
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %46, %230
  %232 = load i8*, i8** %11, align 8
  %233 = load i32, i32* %16, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 13
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %371

240:                                              ; preds = %231
  %241 = load i8*, i8** %11, align 8
  %242 = load i32, i32* %16, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 10
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  store i32 9, i32* %15, align 4
  br label %371

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %20, align 8
  switch i64 %251, label %267 [
    i64 129, label %252
    i64 130, label %252
    i64 128, label %252
    i64 131, label %253
  ]

252:                                              ; preds = %250, %250, %250
  br label %267

253:                                              ; preds = %250
  %254 = load i8*, i8** %11, align 8
  %255 = load i32, i32* %16, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = and i32 %259, 255
  %261 = trunc i32 %260 to i8
  %262 = call i32 @isdigit(i8 zeroext %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  br label %266

265:                                              ; preds = %253
  store i64 0, i64* %20, align 8
  br label %266

266:                                              ; preds = %265, %264
  br label %267

267:                                              ; preds = %250, %266, %252
  br label %371

268:                                              ; preds = %46
  %269 = load i32, i32* %16, align 4
  store i32 %269, i32* %22, align 4
  %270 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %271 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i8*, i8** %11, align 8
  %274 = load i64, i64* %12, align 8
  %275 = trunc i64 %274 to i32
  %276 = call i64 @smack_search_next(i32 %272, i32* %17, i8* %273, i32* %22, i32 %275)
  store i64 %276, i64* %20, align 8
  %277 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %278 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %268
  %282 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %283 = load i32, i32* @PROTO_HTML_FULL, align 4
  %284 = load i8*, i8** %11, align 8
  %285 = load i32, i32* %16, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* %16, align 4
  %290 = sub i32 %288, %289
  %291 = call i32 @banout_append(%struct.BannerOutput* %282, i32 %283, i8* %287, i32 %290)
  br label %292

292:                                              ; preds = %281, %268
  %293 = load i64, i64* %20, align 8
  %294 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 14, i32* %15, align 4
  br label %297

297:                                              ; preds = %296, %292
  %298 = load i32, i32* %22, align 4
  %299 = sub i32 %298, 1
  store i32 %299, i32* %16, align 4
  br label %371

300:                                              ; preds = %46
  br label %301

301:                                              ; preds = %330, %300
  %302 = load i32, i32* %16, align 4
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %12, align 8
  %305 = icmp ult i64 %303, %304
  br i1 %305, label %306, label %333

306:                                              ; preds = %301
  %307 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %308 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %306
  %312 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %313 = load i32, i32* @PROTO_HTML_FULL, align 4
  %314 = load i8*, i8** %11, align 8
  %315 = load i32, i32* %16, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = call i32 @banout_append_char(%struct.BannerOutput* %312, i32 %313, i8 zeroext %318)
  br label %320

320:                                              ; preds = %311, %306
  %321 = load i8*, i8** %11, align 8
  %322 = load i32, i32* %16, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = icmp eq i32 %326, 62
  br i1 %327, label %328, label %329

328:                                              ; preds = %320
  store i32 15, i32* %15, align 4
  br label %333

329:                                              ; preds = %320
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %16, align 4
  %332 = add i32 %331, 1
  store i32 %332, i32* %16, align 4
  br label %301

333:                                              ; preds = %328, %301
  br label %371

334:                                              ; preds = %46
  %335 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %336 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %341 = load i32, i32* @PROTO_HTML_FULL, align 4
  %342 = load i8*, i8** %11, align 8
  %343 = load i32, i32* %16, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = call i32 @banout_append_char(%struct.BannerOutput* %340, i32 %341, i8 zeroext %346)
  br label %348

348:                                              ; preds = %339, %334
  %349 = load i8*, i8** %11, align 8
  %350 = load i32, i32* %16, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 60
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  store i32 13, i32* %15, align 4
  br label %366

357:                                              ; preds = %348
  %358 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %359 = load i32, i32* @PROTO_HTML_TITLE, align 4
  %360 = load i8*, i8** %11, align 8
  %361 = load i32, i32* %16, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = call i32 @banout_append_char(%struct.BannerOutput* %358, i32 %359, i8 zeroext %364)
  br label %366

366:                                              ; preds = %357, %356
  br label %371

367:                                              ; preds = %46
  br label %368

368:                                              ; preds = %46, %367
  %369 = load i64, i64* %12, align 8
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %16, align 4
  br label %371

371:                                              ; preds = %368, %366, %333, %297, %267, %248, %239, %227, %218, %209, %171, %147, %138, %129, %119, %94, %69
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %16, align 4
  %374 = add i32 %373, 1
  store i32 %374, i32* %16, align 4
  br label %41

375:                                              ; preds = %41
  %376 = load i32, i32* %19, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load i32, i32* %15, align 4
  %380 = icmp ult i32 %379, 13
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = load i32, i32* %16, align 4
  store i32 %382, i32* %19, align 4
  br label %383

383:                                              ; preds = %381, %378, %375
  %384 = load i32, i32* %18, align 4
  %385 = load i32, i32* %19, align 4
  %386 = icmp ult i32 %384, %385
  br i1 %386, label %387, label %398

387:                                              ; preds = %383
  %388 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %389 = load i32, i32* @PROTO_HTTP, align 4
  %390 = load i8*, i8** %11, align 8
  %391 = load i32, i32* %18, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i32, i32* %19, align 4
  %395 = load i32, i32* %18, align 4
  %396 = sub i32 %394, %395
  %397 = call i32 @banout_append(%struct.BannerOutput* %388, i32 %389, i8* %393, i32 %396)
  br label %398

398:                                              ; preds = %387, %383
  %399 = load i32, i32* %15, align 4
  %400 = icmp eq i32 %399, 16
  br i1 %400, label %401, label %405

401:                                              ; preds = %398
  %402 = load i32, i32* %15, align 4
  %403 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %404 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 4
  br label %419

405:                                              ; preds = %398
  %406 = load i32, i32* %17, align 4
  %407 = and i32 %406, 65535
  %408 = shl i32 %407, 16
  %409 = load i64, i64* %20, align 8
  %410 = trunc i64 %409 to i32
  %411 = and i32 %410, 255
  %412 = shl i32 %411, 8
  %413 = or i32 %408, %412
  %414 = load i32, i32* %15, align 4
  %415 = and i32 %414, 255
  %416 = or i32 %413, %415
  %417 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %418 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %417, i32 0, i32 0
  store i32 %416, i32* %418, align 4
  br label %419

419:                                              ; preds = %405, %401
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local signext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @tcp_close(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i64 @smack_search_next(i32, i32*, i8*, i32*, i32) #1

declare dso_local i64 @smack_next_match(i32, i32*) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
