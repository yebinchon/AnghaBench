; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ftp.c_ftp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ftp.c_ftp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.FTPSTUFF }
%struct.FTPSTUFF = type { i32, i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_FTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"AUTH TLS\0D\0A\00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@banner_ssl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @ftp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftp_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.FTPSTUFF*, align 8
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
  store %struct.FTPSTUFF* %24, %struct.FTPSTUFF** %17, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @UNUSEDPARM(i8* %25)
  %27 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %28 = bitcast %struct.Banner1* %27 to i8*
  %29 = call i32 @UNUSEDPARM(i8* %28)
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %285, %7
  %31 = load i32, i32* %16, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %288

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  switch i32 %36, label %281 [
    i32 0, label %37
    i32 100, label %37
    i32 1, label %42
    i32 2, label %42
    i32 3, label %42
    i32 101, label %42
    i32 102, label %42
    i32 103, label %42
    i32 4, label %83
    i32 104, label %83
    i32 5, label %130
    i32 105, label %204
  ]

37:                                               ; preds = %35, %35
  %38 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %39 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %35, %35, %35, %35, %35, %35, %37
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
  %57 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %58 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %57, i32 0, i32 0
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
  %68 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %69 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %75 = load i32, i32* @PROTO_FTP, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @banout_append_char(%struct.BannerOutput* %74, i32 %75, i8 zeroext %80)
  br label %82

82:                                               ; preds = %56, %53
  br label %284

83:                                               ; preds = %35, %35
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %93 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %97 = load i32, i32* @PROTO_FTP, align 4
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
  %113 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %114 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %118 = load i32, i32* @PROTO_FTP, align 4
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
  br label %284

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
  br label %285

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
  %148 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %149 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %154 = call i32 @tcp_transmit(%struct.InteractiveData* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10, i32 0)
  store i32 100, i32* %15, align 4
  %155 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %156 = load i32, i32* @PROTO_FTP, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @banout_append_char(%struct.BannerOutput* %155, i32 %156, i8 zeroext %161)
  br label %172

163:                                              ; preds = %147
  %164 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %165 = load i32, i32* @PROTO_FTP, align 4
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
  br label %285

192:                                              ; preds = %181
  %193 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %194 = load i32, i32* @PROTO_FTP, align 4
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
  br label %284

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
  br label %285

213:                                              ; preds = %204
  %214 = load i8*, i8** %11, align 8
  %215 = load i32, i32* %16, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 10
  br i1 %220, label %221, label %250

221:                                              ; preds = %213
  %222 = load %struct.FTPSTUFF*, %struct.FTPSTUFF** %17, align 8
  %223 = getelementptr inbounds %struct.FTPSTUFF, %struct.FTPSTUFF* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 234
  br i1 %225, label %226, label %246

226:                                              ; preds = %221
  %227 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %228 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %18, align 4
  %230 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %231 = call i32 @memset(%struct.ProtocolState* %230, i32 0, i32 24)
  %232 = load i32, i32* @PROTO_SSL3, align 4
  %233 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %234 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %236 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %235, i32 0, i32 2
  store i32 1, i32* %236, align 4
  %237 = load i32, i32* %18, align 4
  %238 = trunc i32 %237 to i16
  %239 = zext i16 %238 to i32
  %240 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %241 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  store i32 0, i32* %15, align 4
  %242 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %243 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_ssl, i32 0, i32 0), align 8
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_ssl, i32 0, i32 1), align 8
  %245 = call i32 @tcp_transmit(%struct.InteractiveData* %242, i8* %243, i32 %244, i32 0)
  br label %249

246:                                              ; preds = %221
  store i32 -1, i32* %15, align 4
  %247 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %248 = call i32 @tcp_close(%struct.InteractiveData* %247)
  br label %249

249:                                              ; preds = %246, %226
  br label %279

250:                                              ; preds = %213
  %251 = load i8*, i8** %11, align 8
  %252 = load i32, i32* %16, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %250
  %259 = load i8*, i8** %11, align 8
  %260 = load i32, i32* %16, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = call i32 @isprint(i8 zeroext %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %258, %250
  store i32 -1, i32* %15, align 4
  %267 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %268 = call i32 @tcp_close(%struct.InteractiveData* %267)
  br label %285

269:                                              ; preds = %258
  %270 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %271 = load i32, i32* @PROTO_FTP, align 4
  %272 = load i8*, i8** %11, align 8
  %273 = load i32, i32* %16, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = call i32 @banout_append_char(%struct.BannerOutput* %270, i32 %271, i8 zeroext %276)
  br label %278

278:                                              ; preds = %269
  br label %279

279:                                              ; preds = %278, %249
  br label %280

280:                                              ; preds = %279
  br label %284

281:                                              ; preds = %35
  %282 = load i64, i64* %12, align 8
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %281, %280, %203, %129, %82
  br label %285

285:                                              ; preds = %284, %266, %212, %189, %138
  %286 = load i32, i32* %16, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %30

288:                                              ; preds = %30
  %289 = load i32, i32* %15, align 4
  %290 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %291 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
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
