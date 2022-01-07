; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_coap_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_coap_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.CoapLink = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"[-] CoAP: short length\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[-] CoAP: version=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"[-] CoAP: type=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[-] CoAP: token-length=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rsp=%u.%u(%s)\00", align 1
@PROTO_COAP = common dso_local global i32 0, align 4
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" token=0x%llu\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" PARSE_ERR\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" /If-Match/\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" /Uri-Host/\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" /Etag\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" /If-None-Match/\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" /Uri-Port/\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c" /Location-Path/\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" /Uri-Path/\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" /Content-Format/\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" /Max-Age/\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c" /Uri-Query/\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" /Accept/\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c" /Location-Query/\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c" /Proxy-Uri/\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c" /Proxy-Scheme/\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" /Size1/\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c" /(Unknown)/\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" text-plain\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c" application/link-format\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" application/xml\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c" application/octet-stream\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c" application/exi\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" application/json\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c" (unknown-content-type)\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"[+] CoAP: valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.BannerOutput*, i32*)* @coap_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coap_parse(i8* %0, i64 %1, %struct.BannerOutput* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.BannerOutput*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.CoapLink*, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.BannerOutput* %2, %struct.BannerOutput** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %485

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 3
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 3
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 15
  store i32 %47, i32* %13, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %56, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %30
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %485

68:                                               ; preds = %30
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %485

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = icmp ugt i32 %75, 8
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = add i32 4, %78
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %74
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %485

86:                                               ; preds = %77
  store i64 0, i64* %14, align 8
  store i64 0, i64* %18, align 8
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i64, i64* %14, align 8
  %94 = shl i64 %93, 8
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %18, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = or i64 %95, %100
  store i64 %101, i64* %14, align 8
  br label %102

102:                                              ; preds = %92
  %103 = load i64, i64* %18, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %18, align 8
  br label %87

105:                                              ; preds = %87
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %107 = load i32, i32* %12, align 4
  %108 = lshr i32 %107, 5
  %109 = zext i32 %108 to i64
  %110 = load i32, i32* %12, align 4
  %111 = and i32 %110, 31
  %112 = load i32, i32* %12, align 4
  %113 = call i8* @response_code(i32 %112)
  %114 = call i32 (i8*, i32, i8*, i64, ...) @sprintf_s(i8* %106, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %109, i32 %111, i8* %113)
  %115 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %116 = load i32, i32* @PROTO_COAP, align 4
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %118 = load i32, i32* @AUTO_LEN, align 4
  %119 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %115, i32 %116, i8* %117, i32 %118)
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %105
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %124 = load i64, i64* %14, align 8
  %125 = call i32 (i8*, i32, i8*, i64, ...) @sprintf_s(i8* %123, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %124)
  %126 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %127 = load i32, i32* @PROTO_COAP, align 4
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %129 = load i32, i32* @AUTO_LEN, align 4
  %130 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %126, i32 %127, i8* %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %105
  %132 = load i32, i32* %13, align 4
  %133 = add i32 4, %132
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %406, %131
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %7, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %410

139:                                              ; preds = %134
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %22, align 4
  %148 = icmp eq i32 %147, 255
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %410

150:                                              ; preds = %139
  %151 = load i32, i32* %22, align 4
  %152 = lshr i32 %151, 0
  %153 = and i32 %152, 15
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %22, align 4
  %155 = lshr i32 %154, 4
  %156 = and i32 %155, 15
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  switch i32 %157, label %158 [
    i32 13, label %162
    i32 14, label %185
    i32 15, label %221
  ]

158:                                              ; preds = %150
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %16, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %16, align 4
  br label %230

162:                                              ; preds = %150
  %163 = load i32, i32* %15, align 4
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* %7, align 8
  %166 = icmp uge i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %169 = load i32, i32* @PROTO_COAP, align 4
  %170 = load i32, i32* @AUTO_LEN, align 4
  %171 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %168, i32 %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  store i32 -1, i32* %16, align 4
  br label %184

172:                                              ; preds = %162
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %15, align 4
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %179, 13
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %16, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %16, align 4
  br label %184

184:                                              ; preds = %172, %167
  br label %230

185:                                              ; preds = %150
  %186 = load i32, i32* %15, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %7, align 8
  %190 = icmp uge i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %193 = load i32, i32* @PROTO_COAP, align 4
  %194 = load i32, i32* @AUTO_LEN, align 4
  %195 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %192, i32 %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  store i32 -1, i32* %16, align 4
  br label %220

196:                                              ; preds = %185
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %15, align 4
  %199 = add i32 %198, 0
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = shl i32 %203, 8
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %15, align 4
  %207 = add i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %204, %211
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = add i32 %213, 269
  store i32 %214, i32* %21, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add i32 %215, 2
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %16, align 4
  %219 = add i32 %218, %217
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %196, %191
  br label %230

221:                                              ; preds = %150
  %222 = load i32, i32* %23, align 4
  %223 = icmp ne i32 %222, 15
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %226 = load i32, i32* @PROTO_COAP, align 4
  %227 = load i32, i32* @AUTO_LEN, align 4
  %228 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %225, i32 %226, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %224, %221
  store i32 -1, i32* %16, align 4
  br label %230

230:                                              ; preds = %229, %220, %184, %158
  %231 = load i32, i32* %23, align 4
  switch i32 %231, label %232 [
    i32 13, label %233
    i32 14, label %253
  ]

232:                                              ; preds = %230
  br label %286

233:                                              ; preds = %230
  %234 = load i32, i32* %15, align 4
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* %7, align 8
  %237 = icmp uge i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %240 = load i32, i32* @PROTO_COAP, align 4
  %241 = load i32, i32* @AUTO_LEN, align 4
  %242 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %239, i32 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %241)
  store i32 -1, i32* %16, align 4
  br label %252

243:                                              ; preds = %233
  %244 = load i8*, i8** %6, align 8
  %245 = load i32, i32* %15, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %15, align 4
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %250, 13
  store i32 %251, i32* %23, align 4
  br label %252

252:                                              ; preds = %243, %238
  br label %286

253:                                              ; preds = %230
  %254 = load i32, i32* %15, align 4
  %255 = add i32 %254, 1
  %256 = zext i32 %255 to i64
  %257 = load i64, i64* %7, align 8
  %258 = icmp uge i64 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %261 = load i32, i32* @PROTO_COAP, align 4
  %262 = load i32, i32* @AUTO_LEN, align 4
  %263 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %260, i32 %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %262)
  store i32 -1, i32* %16, align 4
  br label %285

264:                                              ; preds = %253
  %265 = load i8*, i8** %6, align 8
  %266 = load i32, i32* %15, align 4
  %267 = add i32 %266, 0
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %265, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = shl i32 %271, 8
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = or i32 %272, %279
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* %23, align 4
  %282 = add i32 %281, 269
  store i32 %282, i32* %23, align 4
  %283 = load i32, i32* %15, align 4
  %284 = add i32 %283, 2
  store i32 %284, i32* %15, align 4
  br label %285

285:                                              ; preds = %264, %259
  br label %286

286:                                              ; preds = %285, %252, %232
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %23, align 4
  %289 = add i32 %287, %288
  %290 = zext i32 %289 to i64
  %291 = load i64, i64* %7, align 8
  %292 = icmp ugt i64 %290, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %295 = load i32, i32* @PROTO_COAP, align 4
  %296 = load i32, i32* @AUTO_LEN, align 4
  %297 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %294, i32 %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %296)
  store i32 -1, i32* %16, align 4
  br label %298

298:                                              ; preds = %293, %286
  %299 = load i32, i32* %16, align 4
  switch i32 %299, label %397 [
    i32 -1, label %300
    i32 1, label %301
    i32 3, label %306
    i32 4, label %311
    i32 5, label %316
    i32 7, label %321
    i32 8, label %326
    i32 11, label %331
    i32 12, label %336
    i32 14, label %362
    i32 15, label %367
    i32 17, label %372
    i32 20, label %377
    i32 35, label %382
    i32 39, label %387
    i32 60, label %392
  ]

300:                                              ; preds = %298
  br label %402

301:                                              ; preds = %298
  %302 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %303 = load i32, i32* @PROTO_COAP, align 4
  %304 = load i32, i32* @AUTO_LEN, align 4
  %305 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %302, i32 %303, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %304)
  br label %402

306:                                              ; preds = %298
  %307 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %308 = load i32, i32* @PROTO_COAP, align 4
  %309 = load i32, i32* @AUTO_LEN, align 4
  %310 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %307, i32 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %309)
  br label %402

311:                                              ; preds = %298
  %312 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %313 = load i32, i32* @PROTO_COAP, align 4
  %314 = load i32, i32* @AUTO_LEN, align 4
  %315 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %312, i32 %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %314)
  br label %402

316:                                              ; preds = %298
  %317 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %318 = load i32, i32* @PROTO_COAP, align 4
  %319 = load i32, i32* @AUTO_LEN, align 4
  %320 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %317, i32 %318, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %319)
  br label %402

321:                                              ; preds = %298
  %322 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %323 = load i32, i32* @PROTO_COAP, align 4
  %324 = load i32, i32* @AUTO_LEN, align 4
  %325 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %322, i32 %323, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %324)
  br label %402

326:                                              ; preds = %298
  %327 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %328 = load i32, i32* @PROTO_COAP, align 4
  %329 = load i32, i32* @AUTO_LEN, align 4
  %330 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %327, i32 %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %329)
  br label %402

331:                                              ; preds = %298
  %332 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %333 = load i32, i32* @PROTO_COAP, align 4
  %334 = load i32, i32* @AUTO_LEN, align 4
  %335 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %332, i32 %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %334)
  br label %402

336:                                              ; preds = %298
  %337 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %338 = load i32, i32* @PROTO_COAP, align 4
  %339 = load i32, i32* @AUTO_LEN, align 4
  %340 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %337, i32 %338, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %339)
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  br label %341

341:                                              ; preds = %358, %336
  %342 = load i64, i64* %18, align 8
  %343 = load i32, i32* %23, align 4
  %344 = zext i32 %343 to i64
  %345 = icmp ult i64 %342, %344
  br i1 %345, label %346, label %361

346:                                              ; preds = %341
  %347 = load i32, i32* %17, align 4
  %348 = shl i32 %347, 8
  %349 = load i8*, i8** %6, align 8
  %350 = load i32, i32* %15, align 4
  %351 = zext i32 %350 to i64
  %352 = load i64, i64* %18, align 8
  %353 = add i64 %351, %352
  %354 = getelementptr inbounds i8, i8* %349, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = or i32 %348, %356
  store i32 %357, i32* %17, align 4
  br label %358

358:                                              ; preds = %346
  %359 = load i64, i64* %18, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %18, align 8
  br label %341

361:                                              ; preds = %341
  br label %402

362:                                              ; preds = %298
  %363 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %364 = load i32, i32* @PROTO_COAP, align 4
  %365 = load i32, i32* @AUTO_LEN, align 4
  %366 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %363, i32 %364, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %365)
  br label %402

367:                                              ; preds = %298
  %368 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %369 = load i32, i32* @PROTO_COAP, align 4
  %370 = load i32, i32* @AUTO_LEN, align 4
  %371 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %368, i32 %369, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %370)
  br label %402

372:                                              ; preds = %298
  %373 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %374 = load i32, i32* @PROTO_COAP, align 4
  %375 = load i32, i32* @AUTO_LEN, align 4
  %376 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %373, i32 %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %375)
  br label %402

377:                                              ; preds = %298
  %378 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %379 = load i32, i32* @PROTO_COAP, align 4
  %380 = load i32, i32* @AUTO_LEN, align 4
  %381 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %378, i32 %379, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %380)
  br label %402

382:                                              ; preds = %298
  %383 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %384 = load i32, i32* @PROTO_COAP, align 4
  %385 = load i32, i32* @AUTO_LEN, align 4
  %386 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %383, i32 %384, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %385)
  br label %402

387:                                              ; preds = %298
  %388 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %389 = load i32, i32* @PROTO_COAP, align 4
  %390 = load i32, i32* @AUTO_LEN, align 4
  %391 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %388, i32 %389, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %390)
  br label %402

392:                                              ; preds = %298
  %393 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %394 = load i32, i32* @PROTO_COAP, align 4
  %395 = load i32, i32* @AUTO_LEN, align 4
  %396 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %393, i32 %394, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %395)
  br label %402

397:                                              ; preds = %298
  %398 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %399 = load i32, i32* @PROTO_COAP, align 4
  %400 = load i32, i32* @AUTO_LEN, align 4
  %401 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %398, i32 %399, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 %400)
  br label %402

402:                                              ; preds = %397, %392, %387, %382, %377, %372, %367, %362, %361, %331, %326, %321, %316, %311, %306, %301, %300
  %403 = load i32, i32* %16, align 4
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %410

406:                                              ; preds = %402
  %407 = load i32, i32* %23, align 4
  %408 = load i32, i32* %15, align 4
  %409 = add i32 %408, %407
  store i32 %409, i32* %15, align 4
  br label %134

410:                                              ; preds = %405, %149, %134
  %411 = load i32, i32* %17, align 4
  switch i32 %411, label %478 [
    i32 0, label %412
    i32 40, label %417
    i32 41, label %458
    i32 42, label %463
    i32 47, label %468
    i32 50, label %473
  ]

412:                                              ; preds = %410
  %413 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %414 = load i32, i32* @PROTO_COAP, align 4
  %415 = load i32, i32* @AUTO_LEN, align 4
  %416 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %413, i32 %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %415)
  br label %483

417:                                              ; preds = %410
  %418 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %419 = load i32, i32* @PROTO_COAP, align 4
  %420 = load i32, i32* @AUTO_LEN, align 4
  %421 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %418, i32 %419, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %420)
  store i64 0, i64* %25, align 8
  %422 = load i8*, i8** %6, align 8
  %423 = load i32, i32* %15, align 4
  %424 = load i64, i64* %7, align 8
  %425 = trunc i64 %424 to i32
  %426 = call %struct.CoapLink* @parse_links(i8* %422, i32 %423, i32 %425, i64* %25)
  store %struct.CoapLink* %426, %struct.CoapLink** %24, align 8
  store i64 0, i64* %18, align 8
  br label %427

427:                                              ; preds = %452, %417
  %428 = load i64, i64* %18, align 8
  %429 = load i64, i64* %25, align 8
  %430 = icmp ult i64 %428, %429
  br i1 %430, label %431, label %455

431:                                              ; preds = %427
  %432 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %433 = load i32, i32* @PROTO_COAP, align 4
  %434 = load i32, i32* @AUTO_LEN, align 4
  %435 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %432, i32 %433, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 %434)
  %436 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %437 = load i32, i32* @PROTO_COAP, align 4
  %438 = load i8*, i8** %6, align 8
  %439 = load %struct.CoapLink*, %struct.CoapLink** %24, align 8
  %440 = load i64, i64* %18, align 8
  %441 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %439, i64 %440
  %442 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %438, i64 %444
  %446 = load %struct.CoapLink*, %struct.CoapLink** %24, align 8
  %447 = load i64, i64* %18, align 8
  %448 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %446, i64 %447
  %449 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %436, i32 %437, i8* %445, i32 %450)
  br label %452

452:                                              ; preds = %431
  %453 = load i64, i64* %18, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %18, align 8
  br label %427

455:                                              ; preds = %427
  %456 = load %struct.CoapLink*, %struct.CoapLink** %24, align 8
  %457 = call i32 @free(%struct.CoapLink* %456)
  br label %483

458:                                              ; preds = %410
  %459 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %460 = load i32, i32* @PROTO_COAP, align 4
  %461 = load i32, i32* @AUTO_LEN, align 4
  %462 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %459, i32 %460, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %461)
  br label %483

463:                                              ; preds = %410
  %464 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %465 = load i32, i32* @PROTO_COAP, align 4
  %466 = load i32, i32* @AUTO_LEN, align 4
  %467 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %464, i32 %465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %466)
  br label %483

468:                                              ; preds = %410
  %469 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %470 = load i32, i32* @PROTO_COAP, align 4
  %471 = load i32, i32* @AUTO_LEN, align 4
  %472 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %469, i32 %470, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %471)
  br label %483

473:                                              ; preds = %410
  %474 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %475 = load i32, i32* @PROTO_COAP, align 4
  %476 = load i32, i32* @AUTO_LEN, align 4
  %477 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %474, i32 %475, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %476)
  br label %483

478:                                              ; preds = %410
  %479 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %480 = load i32, i32* @PROTO_COAP, align 4
  %481 = load i32, i32* @AUTO_LEN, align 4
  %482 = call i32 (%struct.BannerOutput*, i32, ...) @banout_append(%struct.BannerOutput* %479, i32 %480, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %481)
  br label %483

483:                                              ; preds = %478, %473, %468, %463, %458, %455, %412
  %484 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %486

485:                                              ; preds = %83, %71, %65, %28
  store i32 0, i32* %5, align 4
  br label %486

486:                                              ; preds = %485, %483
  %487 = load i32, i32* %5, align 4
  ret i32 %487
}

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i64, ...) #1

declare dso_local i8* @response_code(i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, ...) #1

declare dso_local %struct.CoapLink* @parse_links(i8*, i32, i32, i64*) #1

declare dso_local i32 @free(%struct.CoapLink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
