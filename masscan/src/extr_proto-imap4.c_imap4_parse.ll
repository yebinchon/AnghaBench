; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-imap4.c_imap4_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-imap4.c_imap4_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, i32, i32, i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_IMAP4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"a001 CAPABILITY\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"a002 STARTTLS\0D\0A\00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@banner_ssl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @imap4_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imap4_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
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

26:                                               ; preds = %417, %7
  %27 = load i32, i32* %16, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %420

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
  br label %417

40:                                               ; preds = %31
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %413 [
    i32 0, label %42
    i32 1, label %65
    i32 2, label %86
    i32 3, label %109
    i32 4, label %132
    i32 5, label %173
    i32 100, label %193
    i32 300, label %193
    i32 101, label %228
    i32 301, label %228
    i32 102, label %251
    i32 302, label %251
    i32 103, label %274
    i32 303, label %297
    i32 104, label %320
    i32 304, label %320
    i32 105, label %343
    i32 200, label %363
    i32 400, label %363
    i32 305, label %383
    i32 -1, label %412
  ]

42:                                               ; preds = %40
  %43 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %44 = load i32, i32* @PROTO_IMAP4, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @banout_append_char(%struct.BannerOutput* %43, i32 %44, i8 zeroext %49)
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %16, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 42
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %64

61:                                               ; preds = %42
  store i32 -1, i32* %15, align 4
  %62 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %63 = call i32 @tcp_close(%struct.InteractiveData* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %416

65:                                               ; preds = %40
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %75 = load i32, i32* @PROTO_IMAP4, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @banout_append_char(%struct.BannerOutput* %74, i32 %75, i8 zeroext %80)
  br label %417

82:                                               ; preds = %65
  store i32 -1, i32* %15, align 4
  %83 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %84 = call i32 @tcp_close(%struct.InteractiveData* %83)
  br label %85

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %40, %85
  %87 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %88 = load i32, i32* @PROTO_IMAP4, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @banout_append_char(%struct.BannerOutput* %87, i32 %88, i8 zeroext %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 79
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %108

105:                                              ; preds = %86
  store i32 -1, i32* %15, align 4
  %106 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %107 = call i32 @tcp_close(%struct.InteractiveData* %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %416

109:                                              ; preds = %40
  %110 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %111 = load i32, i32* @PROTO_IMAP4, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @banout_append_char(%struct.BannerOutput* %110, i32 %111, i8 zeroext %116)
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 75
  br i1 %124, label %125, label %128

125:                                              ; preds = %109
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %131

128:                                              ; preds = %109
  store i32 -1, i32* %15, align 4
  %129 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %130 = call i32 @tcp_close(%struct.InteractiveData* %129)
  br label %131

131:                                              ; preds = %128, %125
  br label %416

132:                                              ; preds = %40
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %151

140:                                              ; preds = %132
  %141 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %142 = load i32, i32* @PROTO_IMAP4, align 4
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %16, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = call i32 @banout_append_char(%struct.BannerOutput* %141, i32 %142, i8 zeroext %147)
  %149 = load i32, i32* %15, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %416

151:                                              ; preds = %132
  %152 = load i8*, i8** %11, align 8
  %153 = load i32, i32* %16, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 10
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %161 = load i32, i32* @PROTO_IMAP4, align 4
  %162 = load i8*, i8** %11, align 8
  %163 = load i32, i32* %16, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @banout_append_char(%struct.BannerOutput* %160, i32 %161, i8 zeroext %166)
  br label %416

168:                                              ; preds = %151
  %169 = load i32, i32* %15, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %40, %172
  %174 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %175 = load i32, i32* @PROTO_IMAP4, align 4
  %176 = load i8*, i8** %11, align 8
  %177 = load i32, i32* %16, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @banout_append_char(%struct.BannerOutput* %174, i32 %175, i8 zeroext %180)
  %182 = load i8*, i8** %11, align 8
  %183 = load i32, i32* %16, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 10
  br i1 %188, label %189, label %192

189:                                              ; preds = %173
  %190 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %191 = call i32 @tcp_transmit(%struct.InteractiveData* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17, i32 0)
  store i32 100, i32* %15, align 4
  br label %192

192:                                              ; preds = %189, %173
  br label %416

193:                                              ; preds = %40, %40
  %194 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %195 = load i32, i32* @PROTO_IMAP4, align 4
  %196 = load i8*, i8** %11, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = call i32 @banout_append_char(%struct.BannerOutput* %194, i32 %195, i8 zeroext %200)
  %202 = load i8*, i8** %11, align 8
  %203 = load i32, i32* %16, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp eq i32 %207, 42
  br i1 %208, label %209, label %212

209:                                              ; preds = %193
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %210, 100
  store i32 %211, i32* %15, align 4
  br label %227

212:                                              ; preds = %193
  %213 = load i8*, i8** %11, align 8
  %214 = load i32, i32* %16, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 97
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %226

223:                                              ; preds = %212
  store i32 -1, i32* %15, align 4
  %224 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %225 = call i32 @tcp_close(%struct.InteractiveData* %224)
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %209
  br label %416

228:                                              ; preds = %40, %40
  %229 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %230 = load i32, i32* @PROTO_IMAP4, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = load i32, i32* %16, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = call i32 @banout_append_char(%struct.BannerOutput* %229, i32 %230, i8 zeroext %235)
  %237 = load i8*, i8** %11, align 8
  %238 = load i32, i32* %16, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 48
  br i1 %243, label %244, label %247

244:                                              ; preds = %228
  %245 = load i32, i32* %15, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %15, align 4
  br label %250

247:                                              ; preds = %228
  store i32 -1, i32* %15, align 4
  %248 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %249 = call i32 @tcp_close(%struct.InteractiveData* %248)
  br label %250

250:                                              ; preds = %247, %244
  br label %416

251:                                              ; preds = %40, %40
  %252 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %253 = load i32, i32* @PROTO_IMAP4, align 4
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
  %266 = icmp eq i32 %265, 48
  br i1 %266, label %267, label %270

267:                                              ; preds = %251
  %268 = load i32, i32* %15, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %273

270:                                              ; preds = %251
  store i32 -1, i32* %15, align 4
  %271 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %272 = call i32 @tcp_close(%struct.InteractiveData* %271)
  br label %273

273:                                              ; preds = %270, %267
  br label %416

274:                                              ; preds = %40
  %275 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %276 = load i32, i32* @PROTO_IMAP4, align 4
  %277 = load i8*, i8** %11, align 8
  %278 = load i32, i32* %16, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = call i32 @banout_append_char(%struct.BannerOutput* %275, i32 %276, i8 zeroext %281)
  %283 = load i8*, i8** %11, align 8
  %284 = load i32, i32* %16, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 49
  br i1 %289, label %290, label %293

290:                                              ; preds = %274
  %291 = load i32, i32* %15, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %15, align 4
  br label %296

293:                                              ; preds = %274
  store i32 -1, i32* %15, align 4
  %294 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %295 = call i32 @tcp_close(%struct.InteractiveData* %294)
  br label %296

296:                                              ; preds = %293, %290
  br label %416

297:                                              ; preds = %40
  %298 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %299 = load i32, i32* @PROTO_IMAP4, align 4
  %300 = load i8*, i8** %11, align 8
  %301 = load i32, i32* %16, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = call i32 @banout_append_char(%struct.BannerOutput* %298, i32 %299, i8 zeroext %304)
  %306 = load i8*, i8** %11, align 8
  %307 = load i32, i32* %16, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = icmp eq i32 %311, 50
  br i1 %312, label %313, label %316

313:                                              ; preds = %297
  %314 = load i32, i32* %15, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %15, align 4
  br label %319

316:                                              ; preds = %297
  store i32 -1, i32* %15, align 4
  %317 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %318 = call i32 @tcp_close(%struct.InteractiveData* %317)
  br label %319

319:                                              ; preds = %316, %313
  br label %416

320:                                              ; preds = %40, %40
  %321 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %322 = load i32, i32* @PROTO_IMAP4, align 4
  %323 = load i8*, i8** %11, align 8
  %324 = load i32, i32* %16, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = call i32 @banout_append_char(%struct.BannerOutput* %321, i32 %322, i8 zeroext %327)
  %329 = load i8*, i8** %11, align 8
  %330 = load i32, i32* %16, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp eq i32 %334, 32
  br i1 %335, label %336, label %339

336:                                              ; preds = %320
  %337 = load i32, i32* %15, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %15, align 4
  br label %342

339:                                              ; preds = %320
  store i32 -1, i32* %15, align 4
  %340 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %341 = call i32 @tcp_close(%struct.InteractiveData* %340)
  br label %342

342:                                              ; preds = %339, %336
  br label %416

343:                                              ; preds = %40
  %344 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %345 = load i32, i32* @PROTO_IMAP4, align 4
  %346 = load i8*, i8** %11, align 8
  %347 = load i32, i32* %16, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = call i32 @banout_append_char(%struct.BannerOutput* %344, i32 %345, i8 zeroext %350)
  %352 = load i8*, i8** %11, align 8
  %353 = load i32, i32* %16, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp eq i32 %357, 10
  br i1 %358, label %359, label %362

359:                                              ; preds = %343
  %360 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %361 = call i32 @tcp_transmit(%struct.InteractiveData* %360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15, i32 0)
  store i32 300, i32* %15, align 4
  br label %362

362:                                              ; preds = %359, %343
  br label %416

363:                                              ; preds = %40, %40
  %364 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %365 = load i32, i32* @PROTO_IMAP4, align 4
  %366 = load i8*, i8** %11, align 8
  %367 = load i32, i32* %16, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = call i32 @banout_append_char(%struct.BannerOutput* %364, i32 %365, i8 zeroext %370)
  %372 = load i8*, i8** %11, align 8
  %373 = load i32, i32* %16, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = icmp eq i32 %377, 10
  br i1 %378, label %379, label %382

379:                                              ; preds = %363
  %380 = load i32, i32* %15, align 4
  %381 = sub i32 %380, 100
  store i32 %381, i32* %15, align 4
  br label %382

382:                                              ; preds = %379, %363
  br label %416

383:                                              ; preds = %40
  %384 = load i8*, i8** %11, align 8
  %385 = load i32, i32* %16, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %384, i64 %386
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %389, 10
  br i1 %390, label %391, label %411

391:                                              ; preds = %383
  %392 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %393 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %17, align 4
  %395 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %396 = call i32 @memset(%struct.ProtocolState* %395, i32 0, i32 16)
  %397 = load i32, i32* @PROTO_SSL3, align 4
  %398 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %399 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %398, i32 0, i32 3
  store i32 %397, i32* %399, align 4
  %400 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %401 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %400, i32 0, i32 2
  store i32 1, i32* %401, align 4
  %402 = load i32, i32* %17, align 4
  %403 = trunc i32 %402 to i16
  %404 = zext i16 %403 to i32
  %405 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %406 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  store i32 0, i32* %15, align 4
  %407 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %408 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @banner_ssl, i32 0, i32 0), align 8
  %409 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @banner_ssl, i32 0, i32 1), align 8
  %410 = call i32 @tcp_transmit(%struct.InteractiveData* %407, i8* %408, i32 %409, i32 0)
  br label %416

411:                                              ; preds = %383
  br label %416

412:                                              ; preds = %40
  br label %413

413:                                              ; preds = %40, %412
  %414 = load i64, i64* %12, align 8
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %16, align 4
  br label %416

416:                                              ; preds = %413, %411, %391, %382, %362, %342, %319, %296, %273, %250, %227, %192, %159, %140, %131, %108, %64
  br label %417

417:                                              ; preds = %416, %73, %39
  %418 = load i32, i32* %16, align 4
  %419 = add i32 %418, 1
  store i32 %419, i32* %16, align 4
  br label %26

420:                                              ; preds = %26
  %421 = load i32, i32* %15, align 4
  %422 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %423 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 4
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
