; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smtp.c_smtp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smtp.c_smtp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.SMTPSTUFF }
%struct.SMTPSTUFF = type { i32, i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_SMTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"EHLO masscan\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"STARTTLS\0D\0A\00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@banner_ssl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @smtp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smtp_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.SMTPSTUFF*, align 8
  %18 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %19 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %20 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %23 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.SMTPSTUFF* %24, %struct.SMTPSTUFF** %17, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @UNUSEDPARM(i8* %25)
  %27 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %28 = bitcast %struct.Banner1* %27 to i8*
  %29 = call i32 @UNUSEDPARM(i8* %28)
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %359, %7
  %31 = load i32, i32* %16, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %362

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  switch i32 %36, label %355 [
    i32 0, label %37
    i32 100, label %37
    i32 200, label %37
    i32 1, label %42
    i32 2, label %42
    i32 3, label %42
    i32 101, label %42
    i32 102, label %42
    i32 103, label %42
    i32 201, label %42
    i32 202, label %42
    i32 203, label %42
    i32 4, label %83
    i32 104, label %83
    i32 204, label %83
    i32 5, label %130
    i32 105, label %204
    i32 205, label %278
  ]

37:                                               ; preds = %35, %35, %35
  %38 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %39 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %16, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = call i32 @isdigit(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  store i32 -1, i32* %15, align 4
  %54 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %55 = call i32 @tcp_close(%struct.InteractiveData* %54)
  br label %82

56:                                               ; preds = %42
  %57 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %58 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 10
  store i32 %60, i32* %58, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %16, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %69 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %75 = load i32, i32* @PROTO_SMTP, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @banout_append_char(%struct.BannerOutput* %74, i32 %75, i8 zeroext %80)
  br label %82

82:                                               ; preds = %56, %53
  br label %358

83:                                               ; preds = %35, %35, %35
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %93 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %97 = load i32, i32* @PROTO_SMTP, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %16, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @banout_append_char(%struct.BannerOutput* %96, i32 %97, i8 zeroext %102)
  br label %129

104:                                              ; preds = %83
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %114 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %118 = load i32, i32* @PROTO_SMTP, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @banout_append_char(%struct.BannerOutput* %117, i32 %118, i8 zeroext %123)
  br label %128

125:                                              ; preds = %104
  store i32 -1, i32* %15, align 4
  %126 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %127 = call i32 @tcp_close(%struct.InteractiveData* %126)
  br label %128

128:                                              ; preds = %125, %112
  br label %129

129:                                              ; preds = %128, %91
  br label %358

130:                                              ; preds = %35
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %16, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %359

139:                                              ; preds = %130
  %140 = load i8*, i8** %11, align 8
  %141 = load i32, i32* %16, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 10
  br i1 %146, label %147, label %173

147:                                              ; preds = %139
  %148 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %149 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %154 = call i32 @tcp_transmit(%struct.InteractiveData* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14, i32 0)
  store i32 100, i32* %15, align 4
  %155 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %156 = load i32, i32* @PROTO_SMTP, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @banout_append_char(%struct.BannerOutput* %155, i32 %156, i8 zeroext %161)
  br label %172

163:                                              ; preds = %147
  %164 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %165 = load i32, i32* @PROTO_SMTP, align 4
  %166 = load i8*, i8** %11, align 8
  %167 = load i32, i32* %16, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @banout_append_char(%struct.BannerOutput* %164, i32 %165, i8 zeroext %170)
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %163, %152
  br label %202

173:                                              ; preds = %139
  %174 = load i8*, i8** %11, align 8
  %175 = load i32, i32* %16, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load i8*, i8** %11, align 8
  %183 = load i32, i32* %16, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = call i32 @isprint(i8 zeroext %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %181, %173
  store i32 -1, i32* %15, align 4
  %190 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %191 = call i32 @tcp_close(%struct.InteractiveData* %190)
  br label %359

192:                                              ; preds = %181
  %193 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %194 = load i32, i32* @PROTO_SMTP, align 4
  %195 = load i8*, i8** %11, align 8
  %196 = load i32, i32* %16, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = call i32 @banout_append_char(%struct.BannerOutput* %193, i32 %194, i8 zeroext %199)
  br label %201

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %172
  br label %203

203:                                              ; preds = %202
  br label %358

204:                                              ; preds = %35
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* %16, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 13
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %359

213:                                              ; preds = %204
  %214 = load i8*, i8** %11, align 8
  %215 = load i32, i32* %16, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 10
  br i1 %220, label %221, label %247

221:                                              ; preds = %213
  %222 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %223 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %221
  %227 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %228 = call i32 @tcp_transmit(%struct.InteractiveData* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10, i32 0)
  store i32 200, i32* %15, align 4
  %229 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %230 = load i32, i32* @PROTO_SMTP, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = load i32, i32* %16, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = call i32 @banout_append_char(%struct.BannerOutput* %229, i32 %230, i8 zeroext %235)
  br label %246

237:                                              ; preds = %221
  %238 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %239 = load i32, i32* @PROTO_SMTP, align 4
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* %16, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = call i32 @banout_append_char(%struct.BannerOutput* %238, i32 %239, i8 zeroext %244)
  store i32 100, i32* %15, align 4
  br label %246

246:                                              ; preds = %237, %226
  br label %276

247:                                              ; preds = %213
  %248 = load i8*, i8** %11, align 8
  %249 = load i32, i32* %16, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %247
  %256 = load i8*, i8** %11, align 8
  %257 = load i32, i32* %16, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = call i32 @isprint(i8 zeroext %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %255, %247
  store i32 -1, i32* %15, align 4
  %264 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %265 = call i32 @tcp_close(%struct.InteractiveData* %264)
  br label %359

266:                                              ; preds = %255
  %267 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %268 = load i32, i32* @PROTO_SMTP, align 4
  %269 = load i8*, i8** %11, align 8
  %270 = load i32, i32* %16, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = call i32 @banout_append_char(%struct.BannerOutput* %267, i32 %268, i8 zeroext %273)
  br label %275

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %246
  br label %277

277:                                              ; preds = %276
  br label %358

278:                                              ; preds = %35
  %279 = load i8*, i8** %11, align 8
  %280 = load i32, i32* %16, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp eq i32 %284, 13
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  br label %359

287:                                              ; preds = %278
  %288 = load i8*, i8** %11, align 8
  %289 = load i32, i32* %16, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp eq i32 %293, 10
  br i1 %294, label %295, label %324

295:                                              ; preds = %287
  %296 = load %struct.SMTPSTUFF*, %struct.SMTPSTUFF** %17, align 8
  %297 = getelementptr inbounds %struct.SMTPSTUFF, %struct.SMTPSTUFF* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 220
  br i1 %299, label %300, label %320

300:                                              ; preds = %295
  %301 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %302 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %18, align 4
  %304 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %305 = call i32 @memset(%struct.ProtocolState* %304, i32 0, i32 24)
  %306 = load i32, i32* @PROTO_SSL3, align 4
  %307 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %308 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %307, i32 0, i32 3
  store i32 %306, i32* %308, align 4
  %309 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %310 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %309, i32 0, i32 2
  store i32 1, i32* %310, align 4
  %311 = load i32, i32* %18, align 4
  %312 = trunc i32 %311 to i16
  %313 = zext i16 %312 to i32
  %314 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %315 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  store i32 0, i32* %15, align 4
  %316 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %317 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_ssl, i32 0, i32 0), align 8
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_ssl, i32 0, i32 1), align 8
  %319 = call i32 @tcp_transmit(%struct.InteractiveData* %316, i8* %317, i32 %318, i32 0)
  br label %323

320:                                              ; preds = %295
  store i32 -1, i32* %15, align 4
  %321 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %322 = call i32 @tcp_close(%struct.InteractiveData* %321)
  br label %323

323:                                              ; preds = %320, %300
  br label %353

324:                                              ; preds = %287
  %325 = load i8*, i8** %11, align 8
  %326 = load i32, i32* %16, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %340, label %332

332:                                              ; preds = %324
  %333 = load i8*, i8** %11, align 8
  %334 = load i32, i32* %16, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = call i32 @isprint(i8 zeroext %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %332, %324
  store i32 -1, i32* %15, align 4
  %341 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %342 = call i32 @tcp_close(%struct.InteractiveData* %341)
  br label %359

343:                                              ; preds = %332
  %344 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %345 = load i32, i32* @PROTO_SMTP, align 4
  %346 = load i8*, i8** %11, align 8
  %347 = load i32, i32* %16, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = call i32 @banout_append_char(%struct.BannerOutput* %344, i32 %345, i8 zeroext %350)
  br label %352

352:                                              ; preds = %343
  br label %353

353:                                              ; preds = %352, %323
  br label %354

354:                                              ; preds = %353
  br label %358

355:                                              ; preds = %35
  %356 = load i64, i64* %12, align 8
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %16, align 4
  br label %358

358:                                              ; preds = %355, %354, %277, %203, %129, %82
  br label %359

359:                                              ; preds = %358, %340, %286, %263, %212, %189, %138
  %360 = load i32, i32* %16, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %16, align 4
  br label %30

362:                                              ; preds = %30
  %363 = load i32, i32* %15, align 4
  %364 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %365 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @tcp_close(%struct.InteractiveData*) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

declare dso_local i32 @tcp_transmit(%struct.InteractiveData*, i8*, i32, i32) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
