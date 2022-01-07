; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_setup2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMBSTUFF = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i8 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.BannerOutput = type { i32 }

@PROTO_SMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" os=\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" ver=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" domain=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.SMBSTUFF*, i8*, i64, i64, %struct.BannerOutput*)* @smb1_parse_setup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb1_parse_setup2(%struct.SMBSTUFF* %0, i8* %1, i64 %2, i64 %3, %struct.BannerOutput* %4) #0 {
  %6 = alloca %struct.SMBSTUFF*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.BannerOutput*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.SMBSTUFF* %0, %struct.SMBSTUFF** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.BannerOutput* %4, %struct.BannerOutput** %10, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %16 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %23 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %28 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %26, %31
  %33 = add i64 %21, %32
  %34 = icmp ugt i64 %20, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %5
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %38 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %43 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %41, %46
  %48 = add i64 %36, %47
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %35, %5
  br label %50

50:                                               ; preds = %499, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %502

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %497 [
    i32 0, label %56
    i32 1, label %140
    i32 2, label %143
    i32 3, label %156
    i32 4, label %177
    i32 5, label %194
    i32 6, label %215
    i32 7, label %232
    i32 8, label %253
    i32 10, label %270
    i32 12, label %270
    i32 14, label %270
    i32 16, label %270
    i32 18, label %270
    i32 20, label %270
    i32 11, label %281
    i32 13, label %318
    i32 15, label %353
    i32 17, label %390
    i32 19, label %425
    i32 21, label %462
  ]

56:                                               ; preds = %54
  %57 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %58 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %65 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %64, i32 0, i32 2
  %66 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %67 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @spnego_decode_init(i32* %65, i64 %70)
  br label %72

72:                                               ; preds = %63, %56
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %77 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %75, %80
  %82 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %83 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %81, %86
  %88 = icmp ugt i64 %74, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %72
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %92 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %90, %95
  %97 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %98 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %96, %101
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %89, %72
  %104 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %105 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %104, i32 0, i32 2
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %8, align 8
  %111 = sub i64 %109, %110
  %112 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %113 = call i32 @spnego_decode(i32* %105, i8* %108, i64 %111, %struct.BannerOutput* %112)
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub i64 %114, %115
  %117 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %118 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %116
  store i64 %122, i64* %120, align 8
  %123 = load i64, i64* %13, align 8
  store i64 %123, i64* %8, align 8
  %124 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %125 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %130 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %128, %133
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %103
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %8, align 8
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %136, %103
  br label %498

140:                                              ; preds = %54
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %8, align 8
  store i32 2, i32* %12, align 4
  br label %498

143:                                              ; preds = %54
  %144 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %145 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 32768
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 10, i32* %12, align 4
  br label %153

152:                                              ; preds = %143
  store i32 3, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, -1
  store i64 %155, i64* %8, align 8
  br label %498

156:                                              ; preds = %54
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %8, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store i32 5, i32* %12, align 4
  br label %176

164:                                              ; preds = %156
  %165 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %166 = load i32, i32* @PROTO_SMB, align 4
  %167 = load i32, i32* @AUTO_LEN, align 4
  %168 = call i32 @banout_append(%struct.BannerOutput* %165, i32 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %170 = load i32, i32* @PROTO_SMB, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = call i32 @banout_append_char(%struct.BannerOutput* %169, i32 %170, i8 zeroext %174)
  store i32 4, i32* %12, align 4
  br label %176

176:                                              ; preds = %164, %163
  br label %498

177:                                              ; preds = %54
  %178 = load i8*, i8** %7, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  store i32 5, i32* %12, align 4
  br label %193

185:                                              ; preds = %177
  %186 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %187 = load i32, i32* @PROTO_SMB, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @banout_append_char(%struct.BannerOutput* %186, i32 %187, i8 zeroext %191)
  br label %193

193:                                              ; preds = %185, %184
  br label %498

194:                                              ; preds = %54
  %195 = load i8*, i8** %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 7, i32* %12, align 4
  br label %214

202:                                              ; preds = %194
  %203 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %204 = load i32, i32* @PROTO_SMB, align 4
  %205 = load i32, i32* @AUTO_LEN, align 4
  %206 = call i32 @banout_append(%struct.BannerOutput* %203, i32 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %208 = load i32, i32* @PROTO_SMB, align 4
  %209 = load i8*, i8** %7, align 8
  %210 = load i64, i64* %8, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @banout_append_char(%struct.BannerOutput* %207, i32 %208, i8 zeroext %212)
  store i32 6, i32* %12, align 4
  br label %214

214:                                              ; preds = %202, %201
  br label %498

215:                                              ; preds = %54
  %216 = load i8*, i8** %7, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  store i32 7, i32* %12, align 4
  br label %231

223:                                              ; preds = %215
  %224 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %225 = load i32, i32* @PROTO_SMB, align 4
  %226 = load i8*, i8** %7, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = call i32 @banout_append_char(%struct.BannerOutput* %224, i32 %225, i8 zeroext %229)
  br label %231

231:                                              ; preds = %223, %222
  br label %498

232:                                              ; preds = %54
  %233 = load i8*, i8** %7, align 8
  %234 = load i64, i64* %8, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  store i32 22, i32* %12, align 4
  br label %252

240:                                              ; preds = %232
  %241 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %242 = load i32, i32* @PROTO_SMB, align 4
  %243 = load i32, i32* @AUTO_LEN, align 4
  %244 = call i32 @banout_append(%struct.BannerOutput* %241, i32 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %243)
  %245 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %246 = load i32, i32* @PROTO_SMB, align 4
  %247 = load i8*, i8** %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = call i32 @banout_append_char(%struct.BannerOutput* %245, i32 %246, i8 zeroext %250)
  store i32 8, i32* %12, align 4
  br label %252

252:                                              ; preds = %240, %239
  br label %498

253:                                              ; preds = %54
  %254 = load i8*, i8** %7, align 8
  %255 = load i64, i64* %8, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  store i32 22, i32* %12, align 4
  br label %269

261:                                              ; preds = %253
  %262 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %263 = load i32, i32* @PROTO_SMB, align 4
  %264 = load i8*, i8** %7, align 8
  %265 = load i64, i64* %8, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = call i32 @banout_append_char(%struct.BannerOutput* %262, i32 %263, i8 zeroext %267)
  br label %269

269:                                              ; preds = %261, %260
  br label %498

270:                                              ; preds = %54, %54, %54, %54, %54, %54
  %271 = load i8*, i8** %7, align 8
  %272 = load i64, i64* %8, align 8
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %276 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 4
  store i8 %274, i8* %278, align 4
  %279 = load i32, i32* %12, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %498

281:                                              ; preds = %54
  %282 = load i8*, i8** %7, align 8
  %283 = load i64, i64* %8, align 8
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = shl i32 %286, 8
  %288 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %289 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 4
  %292 = load i8, i8* %291, align 4
  %293 = zext i8 %292 to i32
  %294 = or i32 %293, %287
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %291, align 4
  %296 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %297 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 4
  %300 = load i8, i8* %299, align 4
  %301 = zext i8 %300 to i32
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %281
  store i32 14, i32* %12, align 4
  br label %317

304:                                              ; preds = %281
  %305 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %306 = load i32, i32* @PROTO_SMB, align 4
  %307 = load i32, i32* @AUTO_LEN, align 4
  %308 = call i32 @banout_append(%struct.BannerOutput* %305, i32 %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %307)
  %309 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %310 = load i32, i32* @PROTO_SMB, align 4
  %311 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %312 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 4
  %315 = load i8, i8* %314, align 4
  %316 = call i32 @banout_append_unicode(%struct.BannerOutput* %309, i32 %310, i8 zeroext %315)
  store i32 12, i32* %12, align 4
  br label %317

317:                                              ; preds = %304, %303
  br label %498

318:                                              ; preds = %54
  %319 = load i8*, i8** %7, align 8
  %320 = load i64, i64* %8, align 8
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = shl i32 %323, 8
  %325 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %326 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 4
  %329 = load i8, i8* %328, align 4
  %330 = zext i8 %329 to i32
  %331 = or i32 %330, %324
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %328, align 4
  %333 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %334 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 4
  %337 = load i8, i8* %336, align 4
  %338 = zext i8 %337 to i32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %318
  store i32 14, i32* %12, align 4
  br label %352

341:                                              ; preds = %318
  %342 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %343 = load i32, i32* @PROTO_SMB, align 4
  %344 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %345 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 4
  %348 = load i8, i8* %347, align 4
  %349 = call i32 @banout_append_unicode(%struct.BannerOutput* %342, i32 %343, i8 zeroext %348)
  %350 = load i32, i32* %12, align 4
  %351 = add i32 %350, -1
  store i32 %351, i32* %12, align 4
  br label %352

352:                                              ; preds = %341, %340
  br label %498

353:                                              ; preds = %54
  %354 = load i8*, i8** %7, align 8
  %355 = load i64, i64* %8, align 8
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = shl i32 %358, 8
  %360 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %361 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 4
  %364 = load i8, i8* %363, align 4
  %365 = zext i8 %364 to i32
  %366 = or i32 %365, %359
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %363, align 4
  %368 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %369 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 4
  %372 = load i8, i8* %371, align 4
  %373 = zext i8 %372 to i32
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %353
  store i32 18, i32* %12, align 4
  br label %389

376:                                              ; preds = %353
  %377 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %378 = load i32, i32* @PROTO_SMB, align 4
  %379 = load i32, i32* @AUTO_LEN, align 4
  %380 = call i32 @banout_append(%struct.BannerOutput* %377, i32 %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %379)
  %381 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %382 = load i32, i32* @PROTO_SMB, align 4
  %383 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %384 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 4
  %387 = load i8, i8* %386, align 4
  %388 = call i32 @banout_append_unicode(%struct.BannerOutput* %381, i32 %382, i8 zeroext %387)
  store i32 16, i32* %12, align 4
  br label %389

389:                                              ; preds = %376, %375
  br label %498

390:                                              ; preds = %54
  %391 = load i8*, i8** %7, align 8
  %392 = load i64, i64* %8, align 8
  %393 = getelementptr inbounds i8, i8* %391, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = zext i8 %394 to i32
  %396 = shl i32 %395, 8
  %397 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %398 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 4
  %401 = load i8, i8* %400, align 4
  %402 = zext i8 %401 to i32
  %403 = or i32 %402, %396
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %400, align 4
  %405 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %406 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 4
  %409 = load i8, i8* %408, align 4
  %410 = zext i8 %409 to i32
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %390
  store i32 18, i32* %12, align 4
  br label %424

413:                                              ; preds = %390
  %414 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %415 = load i32, i32* @PROTO_SMB, align 4
  %416 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %417 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 4
  %420 = load i8, i8* %419, align 4
  %421 = call i32 @banout_append_unicode(%struct.BannerOutput* %414, i32 %415, i8 zeroext %420)
  %422 = load i32, i32* %12, align 4
  %423 = add i32 %422, -1
  store i32 %423, i32* %12, align 4
  br label %424

424:                                              ; preds = %413, %412
  br label %498

425:                                              ; preds = %54
  %426 = load i8*, i8** %7, align 8
  %427 = load i64, i64* %8, align 8
  %428 = getelementptr inbounds i8, i8* %426, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = shl i32 %430, 8
  %432 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %433 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 4
  %436 = load i8, i8* %435, align 4
  %437 = zext i8 %436 to i32
  %438 = or i32 %437, %431
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %435, align 4
  %440 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %441 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 4
  %444 = load i8, i8* %443, align 4
  %445 = zext i8 %444 to i32
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %425
  store i32 22, i32* %12, align 4
  br label %461

448:                                              ; preds = %425
  %449 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %450 = load i32, i32* @PROTO_SMB, align 4
  %451 = load i32, i32* @AUTO_LEN, align 4
  %452 = call i32 @banout_append(%struct.BannerOutput* %449, i32 %450, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %451)
  %453 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %454 = load i32, i32* @PROTO_SMB, align 4
  %455 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %456 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 4
  %459 = load i8, i8* %458, align 4
  %460 = call i32 @banout_append_unicode(%struct.BannerOutput* %453, i32 %454, i8 zeroext %459)
  store i32 20, i32* %12, align 4
  br label %461

461:                                              ; preds = %448, %447
  br label %498

462:                                              ; preds = %54
  %463 = load i8*, i8** %7, align 8
  %464 = load i64, i64* %8, align 8
  %465 = getelementptr inbounds i8, i8* %463, i64 %464
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  %468 = shl i32 %467, 8
  %469 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %470 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 4
  %473 = load i8, i8* %472, align 4
  %474 = zext i8 %473 to i32
  %475 = or i32 %474, %468
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %472, align 4
  %477 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %478 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i32 0, i32 4
  %481 = load i8, i8* %480, align 4
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %462
  store i32 22, i32* %12, align 4
  br label %496

485:                                              ; preds = %462
  %486 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %487 = load i32, i32* @PROTO_SMB, align 4
  %488 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %489 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 4
  %492 = load i8, i8* %491, align 4
  %493 = call i32 @banout_append_unicode(%struct.BannerOutput* %486, i32 %487, i8 zeroext %492)
  %494 = load i32, i32* %12, align 4
  %495 = add i32 %494, -1
  store i32 %495, i32* %12, align 4
  br label %496

496:                                              ; preds = %485, %484
  br label %498

497:                                              ; preds = %54
  br label %498

498:                                              ; preds = %497, %496, %461, %424, %389, %352, %317, %270, %269, %252, %231, %214, %193, %176, %153, %140, %139
  br label %499

499:                                              ; preds = %498
  %500 = load i64, i64* %8, align 8
  %501 = add i64 %500, 1
  store i64 %501, i64* %8, align 8
  br label %50

502:                                              ; preds = %50
  %503 = load i32, i32* %12, align 4
  %504 = trunc i32 %503 to i16
  %505 = zext i16 %504 to i32
  %506 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %507 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 0
  store i32 %505, i32* %509, align 8
  %510 = load i64, i64* %8, align 8
  %511 = load i64, i64* %11, align 8
  %512 = sub i64 %510, %511
  %513 = trunc i64 %512 to i16
  %514 = zext i16 %513 to i64
  %515 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %516 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = add i64 %519, %514
  store i64 %520, i64* %518, align 8
  %521 = load i64, i64* %8, align 8
  %522 = load i64, i64* %11, align 8
  %523 = sub i64 %521, %522
  ret i64 %523
}

declare dso_local i32 @spnego_decode_init(i32*, i64) #1

declare dso_local i32 @spnego_decode(i32*, i8*, i64, %struct.BannerOutput*) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

declare dso_local i32 @banout_append_unicode(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
