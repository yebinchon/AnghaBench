; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-pop3.c_pop3_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-pop3.c_pop3_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, i32, i32, i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_POP3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"+OK\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CAPA\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STLS\0D\0A\00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@banner_ssl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @pop3_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop3_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
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
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %18 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %19 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @UNUSEDPARM(i8* %21)
  %23 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %24 = bitcast %struct.Banner1* %23 to i8*
  %25 = call i32 @UNUSEDPARM(i8* %24)
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %351, %7
  %27 = load i32, i32* %16, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %354

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %16, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %351

40:                                               ; preds = %31
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %347 [
    i32 0, label %42
    i32 1, label %42
    i32 2, label %42
    i32 3, label %70
    i32 4, label %92
    i32 204, label %92
    i32 5, label %125
    i32 205, label %125
    i32 6, label %148
    i32 206, label %148
    i32 8, label %171
    i32 9, label %200
    i32 10, label %242
    i32 208, label %272
    i32 100, label %318
  ]

42:                                               ; preds = %40, %40, %40
  %43 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %44 = load i32, i32* @PROTO_POP3, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @banout_append_char(%struct.BannerOutput* %43, i32 %44, i8 zeroext %49)
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* @.str, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %55, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %42
  store i32 -1, i32* %15, align 4
  %64 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %65 = call i32 @tcp_close(%struct.InteractiveData* %64)
  br label %69

66:                                               ; preds = %42
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %350

70:                                               ; preds = %40
  %71 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %72 = load i32, i32* @PROTO_POP3, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @banout_append_char(%struct.BannerOutput* %71, i32 %72, i8 zeroext %77)
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %16, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %88 = call i32 @tcp_transmit(%struct.InteractiveData* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6, i32 0)
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %86, %70
  br label %350

92:                                               ; preds = %40, %40
  %93 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %94 = load i32, i32* @PROTO_POP3, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @banout_append_char(%struct.BannerOutput* %93, i32 %94, i8 zeroext %99)
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  store i32 100, i32* %15, align 4
  br label %124

109:                                              ; preds = %92
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 43
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %123

120:                                              ; preds = %109
  store i32 -1, i32* %15, align 4
  %121 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %122 = call i32 @tcp_close(%struct.InteractiveData* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %108
  br label %350

125:                                              ; preds = %40, %40
  %126 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %127 = load i32, i32* @PROTO_POP3, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %16, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @banout_append_char(%struct.BannerOutput* %126, i32 %127, i8 zeroext %132)
  %134 = load i8*, i8** %11, align 8
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 79
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %147

144:                                              ; preds = %125
  store i32 -1, i32* %15, align 4
  %145 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %146 = call i32 @tcp_close(%struct.InteractiveData* %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %350

148:                                              ; preds = %40, %40
  %149 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %150 = load i32, i32* @PROTO_POP3, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @banout_append_char(%struct.BannerOutput* %149, i32 %150, i8 zeroext %155)
  %157 = load i8*, i8** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 75
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load i32, i32* %15, align 4
  %166 = add i32 %165, 2
  store i32 %166, i32* %15, align 4
  br label %170

167:                                              ; preds = %148
  store i32 -1, i32* %15, align 4
  %168 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %169 = call i32 @tcp_close(%struct.InteractiveData* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %350

171:                                              ; preds = %40
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 13
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %351

180:                                              ; preds = %171
  %181 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %182 = load i32, i32* @PROTO_POP3, align 4
  %183 = load i8*, i8** %11, align 8
  %184 = load i32, i32* %16, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = call i32 @banout_append_char(%struct.BannerOutput* %181, i32 %182, i8 zeroext %187)
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* %16, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 10
  br i1 %195, label %196, label %199

196:                                              ; preds = %180
  %197 = load i32, i32* %15, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %199

199:                                              ; preds = %196, %180
  br label %350

200:                                              ; preds = %40
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %16, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 13
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %351

209:                                              ; preds = %200
  %210 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %211 = load i32, i32* @PROTO_POP3, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = load i32, i32* %16, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = call i32 @banout_append_char(%struct.BannerOutput* %210, i32 %211, i8 zeroext %216)
  %218 = load i8*, i8** %11, align 8
  %219 = load i32, i32* %16, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 46
  br i1 %224, label %225, label %228

225:                                              ; preds = %209
  %226 = load i32, i32* %15, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %241

228:                                              ; preds = %209
  %229 = load i8*, i8** %11, align 8
  %230 = load i32, i32* %16, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 10
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %351

237:                                              ; preds = %228
  %238 = load i32, i32* %15, align 4
  %239 = add i32 %238, -1
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %240, %225
  br label %350

242:                                              ; preds = %40
  %243 = load i8*, i8** %11, align 8
  %244 = load i32, i32* %16, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %248, 13
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  br label %351

251:                                              ; preds = %242
  %252 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %253 = load i32, i32* @PROTO_POP3, align 4
  %254 = load i8*, i8** %11, align 8
  %255 = load i32, i32* %16, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = call i32 @banout_append_char(%struct.BannerOutput* %252, i32 %253, i8 zeroext %258)
  %260 = load i8*, i8** %11, align 8
  %261 = load i32, i32* %16, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp eq i32 %265, 10
  br i1 %266, label %267, label %270

267:                                              ; preds = %251
  %268 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %269 = call i32 @tcp_transmit(%struct.InteractiveData* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6, i32 0)
  store i32 204, i32* %15, align 4
  br label %271

270:                                              ; preds = %251
  store i32 8, i32* %15, align 4
  br label %271

271:                                              ; preds = %270, %267
  br label %350

272:                                              ; preds = %40
  %273 = load i8*, i8** %11, align 8
  %274 = load i32, i32* %16, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 13
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  br label %351

281:                                              ; preds = %272
  %282 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %283 = load i32, i32* @PROTO_POP3, align 4
  %284 = load i8*, i8** %11, align 8
  %285 = load i32, i32* %16, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = call i32 @banout_append_char(%struct.BannerOutput* %282, i32 %283, i8 zeroext %288)
  %290 = load i8*, i8** %11, align 8
  %291 = load i32, i32* %16, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp eq i32 %295, 10
  br i1 %296, label %297, label %317

297:                                              ; preds = %281
  %298 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %299 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %17, align 4
  %301 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %302 = call i32 @memset(%struct.ProtocolState* %301, i32 0, i32 16)
  %303 = load i32, i32* @PROTO_SSL3, align 4
  %304 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %305 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %307 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %306, i32 0, i32 2
  store i32 1, i32* %307, align 4
  %308 = load i32, i32* %17, align 4
  %309 = trunc i32 %308 to i16
  %310 = zext i16 %309 to i32
  %311 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %312 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  store i32 0, i32* %15, align 4
  %313 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %314 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @banner_ssl, i32 0, i32 0), align 8
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @banner_ssl, i32 0, i32 1), align 8
  %316 = call i32 @tcp_transmit(%struct.InteractiveData* %313, i8* %314, i32 %315, i32 0)
  br label %350

317:                                              ; preds = %281
  br label %350

318:                                              ; preds = %40
  %319 = load i8*, i8** %11, align 8
  %320 = load i32, i32* %16, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 13
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %351

327:                                              ; preds = %318
  %328 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %329 = load i32, i32* @PROTO_POP3, align 4
  %330 = load i8*, i8** %11, align 8
  %331 = load i32, i32* %16, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = call i32 @banout_append_char(%struct.BannerOutput* %328, i32 %329, i8 zeroext %334)
  %336 = load i8*, i8** %11, align 8
  %337 = load i32, i32* %16, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = icmp eq i32 %341, 10
  br i1 %342, label %343, label %346

343:                                              ; preds = %327
  store i32 -1, i32* %15, align 4
  %344 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %345 = call i32 @tcp_close(%struct.InteractiveData* %344)
  br label %346

346:                                              ; preds = %343, %327
  br label %350

347:                                              ; preds = %40
  %348 = load i64, i64* %12, align 8
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %16, align 4
  br label %350

350:                                              ; preds = %347, %346, %317, %297, %271, %241, %199, %170, %147, %124, %91, %69
  br label %351

351:                                              ; preds = %350, %326, %280, %250, %236, %208, %179, %39
  %352 = load i32, i32* %16, align 4
  %353 = add i32 %352, 1
  store i32 %353, i32* %16, align 4
  br label %26

354:                                              ; preds = %26
  %355 = load i32, i32* %15, align 4
  %356 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %357 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

declare dso_local i32 @tcp_close(%struct.InteractiveData*) #1

declare dso_local i32 @tcp_transmit(%struct.InteractiveData*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
